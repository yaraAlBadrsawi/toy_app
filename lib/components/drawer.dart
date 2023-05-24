import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexa_project/components/social_icon.dart';
import '../util/const.dart';
import 'drawer_item.dart';
import 'logo.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: deepFuchsia,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 280,
                child: DrawerHeader(
                  decoration: const BoxDecoration(
                    color: white,
                  ),
                  child: Logo(
                    titleColor: white,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DrawerItem(
                    text: 'تسجيل دخول',
                    iconData: Icons.person,
                    color: byzantine,
                    mainAxisAlignment: MainAxisAlignment.center,
                    onTap: () {},
                  ),
                  DrawerItem(
                    text: 'الرئيسية',
                    iconData: Icons.home,
                    onTap: () {},
                  ),
                  DrawerItem(
                    text: 'العارضين',
                    iconData: FontAwesomeIcons.store,
                    onTap: () {},
                  ),
                  DrawerItem(
                    text: 'الرعاة',
                    iconData: FontAwesomeIcons.medal,
                    onTap: () {},
                  ),
                  DrawerItem(
                    text: 'التذاكر',
                    iconData: FontAwesomeIcons.ticket,
                    onTap: () {},
                  ),
                  DrawerItem(
                    text: 'السفر والفنادق',
                    iconData: Icons.airplanemode_active,
                    onTap: () {},
                  ),
                  DrawerItem(
                    text: 'المدونة',
                    iconData: FontAwesomeIcons.blog,
                    onTap: () {},
                  ),
                  DrawerItem(
                    text: 'من نحن',
                    iconData: Icons.info,
                    onTap: () {},
                  ),
                  DrawerItem(
                    text: 'الأسئلة الشائعة',
                    iconData: FontAwesomeIcons.circleQuestion,
                    onTap: () {},
                  ),
                  DrawerItem(
                    text: 'English',
                    iconData: Icons.language_outlined,
                    onTap: () {},
                  ),
                  DrawerItem(
                    text: 'اتصل بنا',
                    iconData: Icons.email,
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(svgIcon: 'assets/images/facebook_social_icon.svg'),
                  SocialIcon(svgIcon: 'assets/images/instagram_icon.svg'),
                  SocialIcon(svgIcon: 'assets/images/twitter_bird_icon.svg'),
                  SocialIcon(
                      svgIcon: 'assets/images/in_linked_social_icon.svg'),
                ],
              ),
            ],
          ),
        ));
  }
}
