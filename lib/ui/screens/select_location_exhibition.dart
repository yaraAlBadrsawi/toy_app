import 'package:flutter/material.dart';
import 'package:hexa_project/components/app_bar.dart';

class SelectLocationExhibition extends StatefulWidget {
  const SelectLocationExhibition({Key? key}) : super(key: key);

  @override
  State<SelectLocationExhibition> createState() =>
      _SelectLocationExhibitionState();
}

class _SelectLocationExhibitionState extends State<SelectLocationExhibition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'اختر مكان المعرض',
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
