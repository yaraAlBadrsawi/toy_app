import 'package:flutter/material.dart';
import 'package:hexa_project/util/size_util.dart';

import '../util/const.dart';

class Logo extends StatelessWidget {
  Color titleColor;
  double? imageWidth;
  double? imageHeight;
  Logo({
    super.key,
    this.titleColor = deepFuchsia,
    double? imageWidth, //211.4
    double? imageHeight, //130.3
  })  : imageWidth = imageWidth ?? SizeUtil.setWidth(211.4),
        imageHeight = imageHeight ?? SizeUtil.setHeight(130.3);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/splash.png',
          width: imageWidth,
          height: imageHeight,
        ),
        Text(
          'معرض الرياض',
          style: TextStyle(
              color: titleColor,
              fontWeight: FontWeight.bold,
              fontFamily: 'DIN-Next-LT-Arabic',
              fontSize: SizeUtil.setFontSize(30)),
        ),
        Text(
          'لألعــــــــاب الأطفــــــــــــال',
          style: TextStyle(
              color: silver,
              fontFamily: 'DIN-Next-LT-Arabic',
              fontSize: SizeUtil.setFontSize(20)),
        ),
      ],
    );
  }
}
