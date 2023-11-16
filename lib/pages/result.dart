import 'dart:math';

import 'package:bmi_plus/colors.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  int height;
  int weight;
  bool isMale;
  ResultScreen(
      {super.key,
      required this.height,
      required this.weight,
      required this.isMale});

  @override
  Widget build(BuildContext context) {
    double bmiCalc = weight / pow(height / 100, 2);
    String result = '';

    switch (bmiCalc) {
      case < 16:
        result = "Severe Thinness";
        break;
      case > 16 && < 18.5:
        result = "UnderWeight";
        break;
      case > 18.5 && < 25:
        result = "Normal";
        break;
      case > 25 && < 30:
        result = "Overweight";
        break;
      case > 30:
        result = "Obese";
        break;
      default:
        break;
    }
    return Scaffold(
      backgroundColor: isMale ? kBlue : kRed,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  "Your Bmi Is:",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "${bmiCalc.toStringAsFixed(1)}",
                  style: TextStyle(color: Colors.white, fontSize: 62),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  result,
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                SizedBox(
                  height: 80,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                      // print(result);
                    },
                    icon: Icon(
                      Icons.arrow_circle_left,
                      color: Colors.white,
                      size: 40,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
