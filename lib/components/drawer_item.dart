import 'package:flutter/material.dart';

import '../util/const.dart';

class DrawerItem extends StatelessWidget {
  String text;
  IconData iconData;
  Color color;
  MainAxisAlignment mainAxisAlignment;
  Function() onTap;

  DrawerItem(
      {required this.text,
      required this.iconData,
      required this.onTap,
      this.color = deepFuchsia,
      this.mainAxisAlignment = MainAxisAlignment.end,
      th});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: ListTile(
        title: Row(
          mainAxisAlignment: mainAxisAlignment,
          children: [
            Icon(
              iconData,
              color: white,
              size: 16,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              text,
              style: TextStyle(color: white, fontSize: 18),
            ),
          ],
        ),
        onTap: () {
          // Handle drawer item tap
          onTap();
        },
      ),
    );
  }
}
