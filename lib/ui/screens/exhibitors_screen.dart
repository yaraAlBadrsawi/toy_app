import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexa_project/components/personal_data.dart';
import 'package:hexa_project/util/const.dart';

import '../../components/app_bar.dart';
import '../../components/svg_image.dart';

class ExhibitorsScreen extends StatefulWidget {
  const ExhibitorsScreen({Key? key}) : super(key: key);

  @override
  State<ExhibitorsScreen> createState() => _ExhibitorsScreenState();
}

class _ExhibitorsScreenState extends State<ExhibitorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(title: 'العارضين'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 500,
                child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return Exhibitors();
                    }),
              ),
            ],
          ),
        )

        // ],
        // ),
        );
  }
}

class Exhibitors extends StatelessWidget {
  const Exhibitors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 3,
      child: SingleChildScrollView(
        child: Container(
          height: 400,
          width: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/Rectangle 1499.png',
                    width: 199, //199
                    height: 95,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/lorem.png')),
                  Container(
                    width: 47,
                    height: 45,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        Text(
                          'المكان',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '245',
                          style: TextStyle(fontSize: 12, color: purple),
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
                      fontSize: 14,
                      padding: 10,
                      textColor: black,
                    ),
                    PersonalData(
                      text: 'Mail@Website.com',
                      icon: Icons.email,
                      fontSize: 14,
                      padding: 10,
                      textColor: black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Text(
                        'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا من مولد العربى..',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 14),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
