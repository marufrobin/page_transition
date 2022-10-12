import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/pages/page3.dart';

class Page2 extends StatefulWidget {
  String? name;
  List<String>? countryName = [];
  Page2({this.name, this.countryName});
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page-2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.blueGrey,
              child: Text(
                "${widget.name}\n ${widget.countryName}",
                textScaleFactor: 2,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.blueAccent.shade200,
              child: Text(
                "Next",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Page3(
                          name: widget.name,
                          countryName: widget.countryName,
                        )));
              },
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.blueAccent.shade200,
                child: Text(
                  "Back",
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
