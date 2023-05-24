import 'package:flutter/material.dart';

import '../util/const.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  AppBarWidget({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: deepFuchsia,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
