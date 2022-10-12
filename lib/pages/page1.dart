import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/pages/page2.dart';

class Page1 extends StatelessWidget {
  // Page1({this.countryName, this.title});

  String? title = "Country's Name: ";
  List<String>? countryName = ["Bangladesh", "India", "Pakistan", "Srilanka"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page-1 $title")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.blueGrey,
              child: Text(
                "$title",
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
                    builder: (context) => Page2(
                          name: title,
                          countryName: countryName,
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
                  Navigator.maybePop(context);
                }),
          ],
        ),
      ),
    );
  }
}
