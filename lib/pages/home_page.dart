import 'package:bmi_plus/colors.dart';
import 'package:bmi_plus/pages/control.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          GenderCard(
              gender: 'Male',
              genderColor: kBlue,
              genderIcon: Icons.male,
              isMale: true,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Ctrl(isMale: true),
                    ));
              }),
          GenderCard(
              gender: 'Female',
              genderColor: kRed,
              genderIcon: Icons.female,
              isMale: false,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Ctrl(isMale: false),
                    ));
              }),
        ],
      ),
    );
  }
}

class GenderCard extends StatelessWidget {
  String gender;
  Color genderColor;
  IconData genderIcon;
  bool isMale;
  void Function()? onTap;
  GenderCard(
      {super.key,
      required this.gender,
      required this.genderColor,
      required this.isMale,
      required this.onTap,
      required this.genderIcon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(color: genderColor),
        child: GestureDetector(
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                genderIcon,
                color: Colors.white,
                size: 84,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                gender,
                style: TextStyle(color: Colors.white, fontSize: 38),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
