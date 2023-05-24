import 'package:flutter/material.dart';
import '../../components/app_bar.dart';
import '../../components/personal_data.dart';
import '../../components/svg_image.dart';
import '../../util/const.dart';

class OrganizersScreen extends StatefulWidget {
  const OrganizersScreen({Key? key}) : super(key: key);

  @override
  State<OrganizersScreen> createState() => _OrganizersScreenState();
}

class _OrganizersScreenState extends State<OrganizersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'المنظمين',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Organizers(),
            Organizers(),
            Organizers(),
          ],
        ),
      ),
    );
  }
}

class Organizers extends StatelessWidget {
  const Organizers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 397,
      height: 350,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // Controls the shadow position
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/Rectangle 1504.png',
                width: 55,
                height: 55,
              ),
              Column(
                children: [
                  Text(
                    'تـــيـم واي',
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text('TEAM WAY', style: TextStyle(fontSize: 20)),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          PersonalData(
            text: '+966123456789',
            icon: Icons.phone,
            fontSize: 14,
          ),
          PersonalData(
            text: 'Mail@Website.com',
            icon: Icons.email,
            fontSize: 14,
          ),
          Text(
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا من مولد العربى..',
            textDirection: TextDirection.rtl,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text(
              'الخدمات',
              style: TextStyle(fontSize: 20, color: purple),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              '- تنظيم المعرض',
              style: TextStyle(fontSize: 20, color: black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              '- تنظيم المعرض',
              style: TextStyle(fontSize: 20, color: black),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgImage(image: 'facebook_social_icon'),
                SvgImage(image: 'instagram_icon'),
                SvgImage(image: 'twitter_bird_icon'),
                SvgImage(image: 'in_linked_social_icon'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
