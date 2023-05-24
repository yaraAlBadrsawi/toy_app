import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../util/const.dart';

class SocialIcon extends StatelessWidget {
  String svgIcon;
  Color iconColor;
  Color containerColor;

  SocialIcon({
    required this.svgIcon,
    this.containerColor = deepFuchsia,
    this.iconColor = white,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: containerColor,
          border: Border.all(
            color: iconColor,
            width: 1.0, // Width of the outline
          ),
        ),
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
          child: SvgPicture.asset(
            svgIcon,
            width: 24,
            height: 24,
          ),
        ));
  }
}
