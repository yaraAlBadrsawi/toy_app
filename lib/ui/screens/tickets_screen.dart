import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexa_project/components/app_bar.dart';
import 'package:hexa_project/util/const.dart';
import '../../components/text_box.dart';

class TicketsScreen extends StatefulWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  State<TicketsScreen> createState() => TicketsScreenState();
}

class TicketsScreenState extends State<TicketsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'التذاكر',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextBox(
                title:
                    'وفرنا لكم قائمة بافضل الشركات والعروض لشراء تذاكر السفر وافضل الفنادق وبعض الخدمات المساعدة اثناء اقامتكم'),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {},
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
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 23.0,
                    vertical: 10,
                  ),
                  child: Text(
                    'اليوم الاول',
                    style: TextStyle(fontSize: 20, color: purple),
                  ),
                )),
            Container(
              height: 360, // Adjust the height as needed

              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext ctx, index) {
                    return Events();
                  }),
            ),
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 23.0,
                    vertical: 10,
                  ),
                  child: Text(
                    'اليوم الثاني',
                    style: TextStyle(fontSize: 20, color: purple),
                  ),
                )),
            Container(
              height: 360,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext ctx, index) {
                    return Events();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class Events extends StatelessWidget {
  const Events({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
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
          Text(
            'انطلاق الفعاليات',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            '1- افتتاح الاجنحه وفتح الابواب امام الزوار',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          Text(
            '2- افتتاح الاجنحه وفتح الابواب امام الزوار',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          Text(
            '3- افتتاح الاجنحه وفتح الابواب امام الزوار',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          Text(
            '4- افتتاح الاجنحه وفتح الابواب امام الزوار',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          Text(
            '5- افتتاح الاجنحه وفتح الابواب امام الزوار',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
