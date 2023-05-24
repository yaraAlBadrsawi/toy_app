import 'package:flutter/material.dart';

import '../util/const.dart';

class PersonalData extends StatelessWidget {
  String text;
  IconData icon;
  double padding;
  Color textColor;
  double fontSize;

  PersonalData({
    required this.text,
    required this.icon,
    this.padding = 0,
    this.textColor = silver,
    this.fontSize = 20,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: purple,
          ),
          Text(
            text,
            style: TextStyle(fontSize: fontSize, color: textColor),
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
