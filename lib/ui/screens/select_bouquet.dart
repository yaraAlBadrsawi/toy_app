import 'package:flutter/material.dart';
import '../../components/bouquet.dart';
import '../../components/text_box.dart';
import '../../util/const.dart';

class SelectBouquetScreen extends StatefulWidget {
  const SelectBouquetScreen({Key? key}) : super(key: key);

  @override
  State<SelectBouquetScreen> createState() => _SelectBouquetScreenState();
}

class _SelectBouquetScreenState extends State<SelectBouquetScreen> {
  List sponsors = [
    'الراعي الإستراتيجي',
    'الراعي الماسي',
    'الراعي الذهبي',
    'الراعي البلاتيني',
    'الراعي البرونزي',
    'الراعي الفضي'
  ];
  List sponsorsImages = [
    'Diamond_Sponsor.png',
    'golden_sponsor.png',
    'Bronze_sponsor.png',
    'Platinum_Sponsor.png',
    'Bronze_sponsor.png',
    'Silver_sponsor.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: deepFuchsia,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('اختر الباقة', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
      body: Column(
        children: [
          TextBox(
              title:
                  'اختر الباقة حسب ما يظهر بالخريطة الاماكن التي تخص الراعي حسب اللون'),
          TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/map_screen');
              },
              child: Image.asset('assets/images/gallery_map.png')),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ), // Number of columns in the grid
                itemCount: sponsors.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Bouquet(
                    sponsors[index],
                    sponsorsImages[index],
                    () {
                      showModalBottomSheet(
                          context: context,
                          builder: (_) {
                            return Container(
                              height: 410,
                              child: Column(
                                children: [],
                              ),
                            );
                          });
                    },
                    number: 2,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
