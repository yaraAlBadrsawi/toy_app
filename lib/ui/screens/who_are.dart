import 'package:flutter/material.dart';
import 'package:hexa_project/components/app_bar.dart';

import '../../util/const.dart';

class WhoAreWeScreen extends StatefulWidget {
  const WhoAreWeScreen({Key? key}) : super(key: key);

  @override
  State<WhoAreWeScreen> createState() => _WhoAreWeScreenState();
}

class _WhoAreWeScreenState extends State<WhoAreWeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'من نحن'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 428,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/rectangle_1465.png'),
              ),
            ),
            child: Center(
              child: Image.asset('assets/images/splash.png'),
            ),
          ),
          Text('معرض الرياض لألعاب الاطفال ', style: TextStyle(fontSize: 20)),
          Text(
              '  لقد تم توليد هذا النص من مولد النص العربى  لقد تم توليد هذا النص من مولد النص العربى هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 16)),
          Text('معرض الرياض لألعاب الاطفال ', style: TextStyle(fontSize: 20)),
          Text(
              '  لقد تم توليد هذا النص من مولد النص العربى  لقد تم توليد هذا النص من مولد النص العربى هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
