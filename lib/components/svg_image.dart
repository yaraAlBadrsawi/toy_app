import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../util/const.dart';

class SvgImage extends StatelessWidget {
  String image;

  SvgImage({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(purple, BlendMode.srcIn),
      child: SvgPicture.asset(
        'assets/images/$image.svg',
        width: 24,
        height: 24,
      ),
    );
  }
}
