import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String iconImagePath;
  final String buttonName;

  const Button({required this.iconImagePath, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Column(
      // icon
      children: [
        Container(
          height: 100,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Image.asset(
              iconImagePath,
            ),
          ),
        ),

        // Button Text
        Text(
          buttonName,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade600),
        ),
      ],
    );
  }
}
