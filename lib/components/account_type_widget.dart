import 'package:flutter/material.dart';
import 'package:hexa_project/util/size_util.dart';

import '../util/const.dart';

class AccountTypeWidget extends StatelessWidget {
  String image;
  String text;
  IconData icon;
  String navigator;

  AccountTypeWidget({
    required this.image,
    required this.text,
    required this.icon,
    required this.navigator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(foregroundColor: deepFuchsia),
      onPressed: () {
        Navigator.pushNamed(context, navigator);
      },
      child: Stack(
        children: [
          Container(
            width: SizeUtil.setWidth(248),
            height: SizeUtil.setHeight(180),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/$image.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: SizeUtil.setWidth(248),
            height: SizeUtil.setHeight(180),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Rectangle_1583.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border:
                        Border.all(color: white, width: SizeUtil.setWidth(1)),
                    borderRadius: BorderRadius.circular(SizeUtil.setRadius(80)),
                  ),
                  padding: EdgeInsets.all(SizeUtil.setWidth(20)),
                  child: Icon(
                    icon,
                    size: SizeUtil.setWidth(24),
                    color: white,
                  ),
                ),
                SizedBox(
                  height: SizeUtil.setHeight(8),
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: white,
                    fontSize: SizeUtil.setFontSize(20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
