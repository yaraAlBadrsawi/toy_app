import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hexa_project/util/const.dart';

import '../../../components/TextFieldWidget.dart';
import '../../../components/logo.dart';
import '../../../util/size_util.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: SizeUtil.setHeight(428), //428
              width: double.infinity,
              color: deepFuchsia,
              child: Logo(
                titleColor: white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: SizeUtil.setHeight(50.0), right: SizeUtil.setWidth(52)),
              child: Text(
                'تسجيل دخول',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: SizeUtil.setFontSize(20),
                    color: deepFuchsia),
              ),
            ),
            TextFieldWidget(
              Icons.person,
              'البريد الإلكتروني',
            ),
            TextFieldWidget(
              Icons.lock,
              'كلمة المرور',
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeUtil.setWidth(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      value: _isChecked,
                      onChanged: (item) {
                        setState(() {
                          _isChecked = !_isChecked;
                        });
                      },
                      activeColor: emeraldGreen),
                  Text(
                    'تذكرني',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: SizeUtil.setFontSize(20),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: buttonStyle,
                child: Text(
                  'دخول',
                  style: TextStyle(
                      fontSize: SizeUtil.setFontSize(20),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(SizeUtil.setWidth(40)),
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.all(SizeUtil.setWidth(50.0)),
                                child: Text(
                                  'نسيت كلمة المرور ؟ ',
                                  style: TextStyle(
                                    fontSize: SizeUtil.setFontSize(25),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextFieldWidget(
                                Icons.email,
                                'البريد الإلكتروني ',
                              ),
                              ElevatedButton(
                                  style: buttonStyle,
                                  onPressed: () {},
                                  child: Text('ارسال ')),
                            ],
                          ),
                        );
                      });
                },
                child: Center(
                  child: Text(
                    'نسيت كلمة المرور',
                    style: TextStyle(
                        fontSize: SizeUtil.setFontSize(20),
                        color: silver,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Center(
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'ليس لديك حساب ؟',
                      style: TextStyle(
                        color: silver,
                        fontSize: SizeUtil.setFontSize(20),
                      )),
                  TextSpan(
                    text: ' انشاء حساب ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: black,
                      fontSize: SizeUtil.setFontSize(20),
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, '/account_type_screen');
                      },
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: SizeUtil.setHeight(40),
            ),
          ],
        ),
      ),
    );
  }
}
