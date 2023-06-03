import 'package:flutter/material.dart';
import 'package:hexa_project/core/resources/manger_sizes.dart';

import '../../../../core/resources/manger_color.dart';

class Box extends StatelessWidget {
  final String text;
  final IconData icon;
  Box({
    required this.text,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ManagerWidth.w126,
      height: 112,
      margin: EdgeInsets.all(ManagerWidth.w10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 3), // Offset in the x and y directions
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ManagerColors.deepFuchsia,
              border: Border.all(
                color: ManagerColors.white,
                width: 1.0, // Width of the outline
              ),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
