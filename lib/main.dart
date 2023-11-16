import 'package:bmi_plus/pages/control.dart';
import 'package:bmi_plus/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BmiPlus());
}

class BmiPlus extends StatelessWidget {
  const BmiPlus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
