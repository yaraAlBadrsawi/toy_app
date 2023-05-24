import 'package:flutter/material.dart';
import '../util/const.dart';

class TitleBar extends StatelessWidget {
  String title;
  IconData icon;

  double bottomSpace;

  TitleBar({
    required this.title,
    required this.icon,
    this.bottomSpace = 50,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 295,
      width: double.infinity,
      color: deepFuchsia,
      margin: EdgeInsets.only(bottom: bottomSpace),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: deepFuchsia,
              border: Border.all(
                color: Colors.white, // Color of the outline
                width: 1.0, // Width of the outline
              ),
            ),
            child: Icon(
              icon,
              color: white,
              size: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
