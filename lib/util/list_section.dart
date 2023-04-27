import 'package:flutter/material.dart';

class ListSection extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  final String tileSubTitle;
  final color;

  const ListSection(
      {required this.iconImagePath,
      required this.tileTitle,
      required this.tileSubTitle,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // icon
          Row(
            children: [
              Container(
                height: 80,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Image.asset(iconImagePath),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tileTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(tileSubTitle,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      )),
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
