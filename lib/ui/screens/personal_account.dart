import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexa_project/components/title_bar.dart';
import 'package:hexa_project/util/const.dart';

import '../../components/personal_data.dart';

class PersonalProfile extends StatefulWidget {
  const PersonalProfile({Key? key}) : super(key: key);
  @override
  State<PersonalProfile> createState() => _PersonalProfileState();
}

class _PersonalProfileState extends State<PersonalProfile>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleBar(
            title: 'الملف الشخصي',
            icon: Icons.person,
            bottomSpace: 20,
          ),
          TabBar(
            controller: _tabController,
            // Color of the selected tab indicator
            unselectedLabelColor: silver,
            indicatorColor: purple,
            indicatorWeight: 1,
            labelColor: purple,
            padding: EdgeInsets.symmetric(horizontal: 30),
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'الملف الشخصي',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Icon(Icons.person
                        // color: silver
                        ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'التذاكر',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Icon(
                      FontAwesomeIcons.ticket,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 35.5,
                      ),
                      const Ticket(),
                      const Ticket(),
                      const Ticket(),
                      const Ticket(),
                      const Ticket(),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: buttonStyle,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'حجز تذكرة',
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(
                              FontAwesomeIcons.ticket,
                              size: 14,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    PersonalData(
                      text: 'محمد عبد الله ',
                      icon: Icons.person,
                      padding: 25,
                      textColor: black,
                    ),
                    PersonalData(
                      text: '+966123456789',
                      icon: Icons.phone,
                      padding: 25,
                      textColor: black,
                    ),
                    PersonalData(
                      text: 'Mail@Website.com',
                      icon: Icons.email,
                      padding: 25,
                      textColor: black,
                    ),
                    PersonalData(
                      text: 'السعودية',
                      icon: Icons.location_on,
                      padding: 25,
                      textColor: black,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Ticket extends StatelessWidget {
  const Ticket({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'تذكرة دخول المعرض',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '15/05/2022',
              style: TextStyle(fontSize: 16, color: silverChalice),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(9),
          decoration: BoxDecoration(
              color: lightSmoke, borderRadius: BorderRadius.circular(10)),
          child: Icon(
            FontAwesomeIcons.ticket,
            color: purple,
          ),
        ),
      ],
    );
  }
}
