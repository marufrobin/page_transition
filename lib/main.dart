import 'package:flutter/material.dart';
import 'package:page_transition/pages/page1.dart';
import 'package:page_transition/pages/page2.dart';
import 'package:page_transition/pages/page3.dart';
import 'package:page_transition/pages/page4.dart';
import 'package:page_transition/pages/page5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}
