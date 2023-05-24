import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../components/drawer.dart';
import '../../components/social_icon.dart';
import '../../util/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      drawer: const HomeDrawer(),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  color: Colors.white,
                  height: 430,
                ),
                Container(
                  color: deepFuchsia,
                  height: 333.2,
                ),
                Positioned(
                  bottom: 20,
                  child: Image.asset(
                    'assets/images/group_279.png',
                    height: 223.7,
                    width: 428,
                  ),
                ),
                Positioned(
                  bottom: 50,
                  right: 0,
                  child: Image.asset(
                    'assets/images/group_278.png',
                    height: 223.7, //223.7
                    width: 428,
                  ),
                ),
                SafeArea(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            _openDrawer();
                          },
                          color: white,
                          icon: Icon(
                            Icons.list,
                            size: 32,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.bell,
                            size: 32,
                          ),
                          color: white,
                        ),
                      ]),
                ),
                Positioned(
                  top: 100,
                  right: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 28),
                        child: Image.asset(
                          'assets/images/splash.png',
                          width: 123,
                          height: 75,
                        ),
                      ),
                      const Text(
                        'معرض الرياض',
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'DIN-Next-LT-Arabic',
                            fontSize: 30),
                      ),
                      const Text(
                        'لألعاب الأطفال',
                        style: TextStyle(
                            color: silver,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'DIN-Next-LT-Arabic',
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 300,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      height: 130,
                      child: Row(children: [
                        Box(
                          text: 'التذاكر',
                          icon: FontAwesomeIcons.ticket,
                        ),
                        Box(
                          text: 'الرعاة',
                          icon: FontAwesomeIcons.medal,
                        ),
                        Box(
                          text: 'السفر والفنادق',
                          icon: FontAwesomeIcons.plantWilt,
                        ),
                        Box(
                          text: 'الرعاة',
                          icon: FontAwesomeIcons.medal,
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 340,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                ColumnBox(),
                ColumnBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColumnBox extends StatelessWidget {
  const ColumnBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 490,
      width: 317,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          image: AssetImage('assets/images/visitor.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'معرض الرياض',
                style: TextStyle(
                    color: white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'لألعــــــــاب الأطفــــــــــــال',
                style: TextStyle(
                  color: white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                textDirection: TextDirection.rtl,
                'ها هو معرض الرياض لألعاب الأطفال'
                ' قد انطلق وهو يعدّ من أهم وامتع المعارض'
                ' التي تقدمها المملكة العربية السعودية',
                style: TextStyle(
                  color: silverChalice,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 55),
                    backgroundColor: lipstick),
                onPressed: () {},
                child: Text('حجز تذاكر'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Box extends StatelessWidget {
  String text;
  IconData icon;
  Box({
    required this.text,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 126,
      height: 112,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 3), // Offset in the x and y directions
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: deepFuchsia,
              border: Border.all(
                color: white,
                width: 1.0, // Width of the outline
              ),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
