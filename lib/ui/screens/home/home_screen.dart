import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexa_project/core/network/api_service.dart';
import 'package:hexa_project/core/resources/manager_assets.dart';
import 'package:hexa_project/core/resources/manger_color.dart';
import 'package:hexa_project/core/resources/manger_fonts.dart';
import 'package:hexa_project/core/resources/manger_sizes.dart';
import 'package:hexa_project/core/resources/manger_strings.dart';
import 'package:hexa_project/ui/screens/home/widget/box.dart';

import '../../../components/drawer.dart';
import '../../../components/social_icon.dart';
import '../../../core/network/home.dart';
import '../../../core/network/image_reader.dart';
import '../../../util/const.dart';

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
  void initState() {
    // TODO : show data from api in home screen
    readData();
    super.initState();
  }

  List<dynamic>? list = [];

  Future readData() async {
    list = await ApiService.fetchData();

    print('list == $list');
    if (list!.isNotEmpty) {
      for (int i = 0; i < list!.length; i++) {
        print('name' + list![i]['name']);
      }
    }
    print('list name== ');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      endDrawer: const HomeDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    color: ManagerColors.white,
                    height: ManagerHeight.h430,
                  ),
                  Container(
                    color: deepFuchsia,
                    height: ManagerHeight.h333,
                  ),
                  Positioned(
                    bottom: ManagerHeight.h20,
                    child: Image.asset(
                      ManagerAssets.group279, // 'assets/images/group_279.png'
                      height: ManagerHeight.h223,
                      width: ManagerWidth.w428,
                    ),
                  ),
                  Positioned(
                    bottom: ManagerHeight.h50,
                    right: ManagerWidth.w0,
                    child: Image.asset(
                      ManagerAssets.group278,
                      height: ManagerHeight.h223, //223.7
                      width: ManagerWidth.w428,
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.all(ManagerWidth.w16),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.bell,
                                size: ManagerIconSize.s24,
                              ),
                              color: white,
                            ),
                            IconButton(
                              onPressed: () {
                                _openDrawer();
                              },
                              color: white,
                              icon: Icon(
                                Icons.list,
                                size: ManagerIconSize.s32,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Positioned(
                    top: ManagerHeight.h100,
                    right: ManagerWidth.w5,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: ManagerWidth.w28),
                          child: Image.asset(
                            ManagerAssets.logo,
                            width: ManagerWidth.w123,
                            height: ManagerHeight.h75,
                          ),
                        ),
                        Text(
                          'معرض الرياض',
                          style: TextStyle(
                              color: ManagerColors.white,
                              fontWeight: ManagerFontWeight.bold,
                              fontFamily: ManagerFontFamily.din_next_lt,
                              fontSize: ManagerFontSize.s30),
                        ),
                        Text(
                          ManagerStrings.forKidsToy,
                          style: TextStyle(
                              color: silver,
                              letterSpacing: 2,
                              fontWeight: ManagerFontWeight.bold,
                              fontFamily: ManagerFontFamily.din_next_lt,
                              fontSize: ManagerFontSize.s20),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: ManagerHeight.h300,
                    child: SizedBox(
                      height: ManagerHeight.h130,
                      child: Row(children: [
                        Box(
                          text: ManagerStrings.ticket,
                          icon: FontAwesomeIcons.ticket,
                        ),
                        Box(
                          text: ManagerStrings.sponsorAccount,
                          icon: FontAwesomeIcons.medal,
                        ),
                        Box(
                          text: 'السفر والفنادق',
                          icon: FontAwesomeIcons.plantWilt,
                        ),
                        SizedBox(
                          width: ManagerWidth.w20,
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ManagerHeight.h20,
            ),
            Container(
              height: ManagerHeight.h340,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  for (int i = 0; i < list!.length; i++)
                    // print('name' + list![i]['name']);

                    list!.isNotEmpty
                        ? ColumnBox(
                            name: list![i]['name'],
                            details: list![i]['details'],
                            shortDetails: list![i]['short_details'],
                            image: list![i]['image'])
                        // ColumnBox(name: '', shortDetails: '', image: ''),
                        : const CircularProgressIndicator()
                ],
              ),
            ),
            //////////////////////////////////
          ],
        ),
      ),
    );
  }
}

class ColumnBox extends StatefulWidget {
  final String name;
  final String shortDetails;
  final String details;
  final String image;

  ColumnBox({
    required this.name,
    required this.shortDetails,
    required this.details,
    required this.image,
    super.key,
  });

  @override
  State<ColumnBox> createState() => _ColumnBoxState();
}

class _ColumnBoxState extends State<ColumnBox> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ImageReader.fetchImage(widget.image),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          return Container(
            height: ManagerHeight.h490,
            width: ManagerWidth.w317,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ManagerRadius.r50),
                image: DecorationImage(image: NetworkImage(snapshot.data!))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                    child: Text(
                      widget.name,
                      style: TextStyle(
                          color: white,
                          fontSize: ManagerFontSize.s20,
                          fontWeight: ManagerFontWeight.bold),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                    child: Text(
                      widget.shortDetails,
                      style: TextStyle(
                        color: ManagerColors.white,
                        fontSize: ManagerFontSize.s20,
                        fontWeight: ManagerFontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w12),
                    child: Text(
                      textDirection: TextDirection.rtl,
                      widget.details,
                      style: TextStyle(
                        color: silverChalice,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: ManagerHeight.h10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(ManagerRadius.r10),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: ManagerHeight.h16,
                              horizontal: ManagerWidth.w55),
                          backgroundColor: ManagerColors.lipstick),
                      onPressed: () {},
                      child: const Text(ManagerStrings.ticketReservation),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        if (snapshot.hasError) {
          return Text('error');
        }
        if (snapshot.connectionState == 'waiting') {
          return Padding(
            padding: EdgeInsets.all(ManagerWidth.w16),
            child: Center(
                child: CircularProgressIndicator(
                    color: ManagerColors.deepFuchsia)),
          );
        } else {
          return Padding(
            padding: EdgeInsets.all(ManagerWidth.w16),
            child: Center(
                child: CircularProgressIndicator(
              color: ManagerColors.deepFuchsia,
            )),
          );
        }
        // if(snapshot.connectionState=='done')
      },
    );
  }

  Future<String> loadImage(String imageURL) async {
    String imagePath = await ImageReader.fetchImage(imageURL);
    setState(() {});
    return imagePath;
  }
}
