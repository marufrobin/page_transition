import 'package:flutter/material.dart';
import 'package:page_transition/pages/page4.dart';

class Page3 extends StatelessWidget {
  String? name;
  List<String>? countryName = [];
  Page3({required this.name, required this.countryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page-3")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.blueGrey,
              child: Text(
                "$name \n $countryName",
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
                    builder: (context) => Page4(
                          name: name,
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
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
