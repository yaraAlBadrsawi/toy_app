import 'package:flutter/material.dart';
import 'package:hexa_project/components/app_bar.dart';
import '../../components/bouquet.dart';
import '../../components/text_box.dart';

class TravelAndHotelsScreen extends StatefulWidget {
  const TravelAndHotelsScreen({Key? key}) : super(key: key);

  @override
  State<TravelAndHotelsScreen> createState() => _TravelAndHotelsScreenState();
}

class _TravelAndHotelsScreenState extends State<TravelAndHotelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'السفر والفنادق',
      ),
      body: Column(
        children: [
          TextBox(
              title:
                  'وفرنا لكم قائمة بافضل الشركات والعروض لشراء تذاكر السفر وافضل الفنادق وبعض الخدمات المساعدة اثناء اقامتكم'),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ), // Number of columns in the grid
                itemCount: 6,
                itemBuilder: (BuildContext ctx, index) {
                  return Bouquet('اسم الشركة', 'company_name.png', () {});
                }),
          ),
        ],
      ),
    );
  }
}
