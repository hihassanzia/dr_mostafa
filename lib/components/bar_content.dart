import 'package:flutter/material.dart';

class BarContent extends StatelessWidget {
  final String icon;
  final String description;
  BarContent({this.icon, this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Image.asset(
            icon,
            width: 30,
            height: 30,
          ),
          SizedBox(
            width: 18,
          ),
          Text(
            description,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
