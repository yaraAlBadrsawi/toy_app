import 'package:flutter/material.dart';
import '../../../../../../core/resources/manager_assets.dart';
import '../../../../../../core/resources/manger_color.dart';
import '../../../../../../core/resources/manger_fonts.dart';
import '../../../../../../core/resources/manger_sizes.dart';

class AccountTypeWidget extends StatelessWidget {
  final String image;
  final String text;
  final IconData icon;
  final String navigator;

  const AccountTypeWidget({
    required this.image,
    required this.text,
    required this.icon,
    required this.navigator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(foregroundColor: ManagerColors.deepFuchsia),
      onPressed: () {
        Navigator.pushNamed(context, navigator); // TODO: change it later
      },
      child: Stack(
        children: [
          Container(
            width: ManagerWidth.w248,
            height: ManagerHeight.h180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/images/$image.png'), //TODO:what to do ?
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: ManagerWidth.w248,
            height: ManagerHeight.h180,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ManagerAssets.rectangle1583),
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
                    border: Border.all(
                        color: ManagerColors.white, width: ManagerWidth.w1),
                    borderRadius: BorderRadius.circular(ManagerRadius.r80),
                  ),
                  padding: EdgeInsets.all(ManagerWidth.w20),
                  child: Icon(
                    icon,
                    size: ManagerIconSize.s24,
                    color: ManagerColors.white,
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h8,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontWeight: ManagerFontWeight.bold,
                    color: ManagerColors.white,
                    fontSize: ManagerFontSize.s20,
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
