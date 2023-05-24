import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexa_project/util/const.dart';
import '../../../components/account_type_widget.dart';
import '../../../util/size_util.dart';

class AccountType extends StatefulWidget {
  const AccountType({Key? key}) : super(key: key);

  @override
  State<AccountType> createState() => _AccountTypeState();
}

class _AccountTypeState extends State<AccountType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepFuchsia,
      body: Container(
        color: deepFuchsia,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              bottom: SizeUtil.setHeight(0),
              child: Image.asset('assets/images/group_279.png',
                  height: SizeUtil.setHeight(223.7),
                  width: SizeUtil.setWidth(428)),
            ),
            Positioned(
              bottom: SizeUtil.setHeight(0),
              child: Image.asset('assets/images/group_278.png',
                  height: SizeUtil.setHeight(223.7),
                  width: SizeUtil.setWidth(428)),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'اختر نوع الحساب',
                    style: TextStyle(
                        fontSize: SizeUtil.setFontSize(25),
                        fontWeight: FontWeight.bold,
                        color: white),
                  ),
                  AccountTypeWidget(
                    image: 'visitor',
                    text: 'حساب زائر ',
                    icon: Icons.person,
                    navigator: '/visitor_register_screen',
                  ),
                  AccountTypeWidget(
                    image: 'viewer',
                    text: 'حساب عارض ',
                    icon: FontAwesomeIcons.store,
                    navigator: '/viewer_register_screen',
                  ),
                  AccountTypeWidget(
                    image: 'sponsor',
                    text: 'حساب راعي ',
                    icon: FontAwesomeIcons.medal,
                    navigator: '', // where to go
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
