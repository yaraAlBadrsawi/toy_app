import 'package:flutter/material.dart';
import '../../../../components/personal_data.dart';
import '../../../../components/svg_image.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manger_color.dart';
import '../../../../core/resources/manger_fonts.dart';
import '../../../../core/resources/manger_sizes.dart';
import '../../../../core/resources/manger_strings.dart';

class Exhibitors extends StatelessWidget {
  const Exhibitors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ManagerRadius.r20)),
      elevation: 3,
      child: SingleChildScrollView(
        child: Container(
          height: ManagerHeight.h400,
          width: ManagerWidth.w200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/Rectangle 1499.png',
                    width: ManagerWidth.w199, //199
                    height: ManagerHeight.h295,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/lorem.png')),
                  Container(
                    width: ManagerWidth.w47,
                    height: ManagerHeight.h45,
                    margin: EdgeInsets.all(ManagerWidth.w8),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(ManagerRadius.r20),
                            bottomRight: Radius.circular(ManagerRadius.r20))),
                    child: Column(
                      children: [
                        Text(
                          ManagerStrings.place,
                          style: TextStyle(
                              fontSize: ManagerIconSize.s12,
                              color: ManagerColors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '245',
                          style: TextStyle(
                              fontSize: ManagerFontSize.s12,
                              color: ManagerColors.purple),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    Text('اسم العارض المشارك',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    PersonalData(
                      text: '+966123456789',
                      icon: Icons.phone,
                      fontSize: ManagerFontSize.s14,
                      padding: ManagerWidth.w10,
                      textColor: ManagerColors.black,
                    ),
                    PersonalData(
                      text: 'Mail@Website.com',
                      icon: Icons.email,
                      fontSize: ManagerFontSize.s14,
                      padding: ManagerWidth.w10,
                      textColor: ManagerColors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: ManagerWidth.w10),
                      child: Text(
                        'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا من مولد العربى..',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: ManagerFontSize.s14),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(ManagerWidth.w8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgImage(image: ManagerAssets.facebookIcon),
                          SvgImage(image: ManagerAssets.instagramIcon),
                          SvgImage(image: ManagerAssets.twitterIcon),
                          SvgImage(image: ManagerAssets.linkedInIcon),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
