import 'package:flutter/material.dart';

import '../util/const.dart';

class TextBox extends StatelessWidget {
  String title;

  TextBox({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
        child: Text(
          title,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: black),
        ),
      ),
    );
  }
}
