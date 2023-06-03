import 'package:flutter/material.dart';
import '../core/resources/manger_color.dart';
import '../core/resources/manger_sizes.dart';

class MainButton extends StatelessWidget {
  final Widget child;
  final Function() onPressed;
  final double verticalPadding;
  final double horizontalPadding;

  const MainButton(
      {super.key,
      required this.child,
      required this.onPressed,
      this.verticalPadding = 15, //TODO : edit it later
      this.horizontalPadding = 76} //TODO : edit it later
      );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ManagerRadius.r10),
          ),
          padding: EdgeInsets.symmetric(
              vertical: verticalPadding, horizontal: horizontalPadding),
          backgroundColor: ManagerColors.lipstick),
      onPressed: onPressed,
      child: child,
    );
  }
}
