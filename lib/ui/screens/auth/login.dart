import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../components/TextFieldWidget.dart';
import '../../../../components/logo.dart';
import '../../../../core/resources/manger_color.dart';
import '../../../../core/resources/manger_fonts.dart';
import '../../../../core/resources/manger_sizes.dart';
import '../../../../core/resources/manger_strings.dart';
import '../../../components/main_button.dart';
import '../../../route/routes.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isChecked = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: ManagerHeight.h428, //428
              width: double.infinity,
              color: ManagerColors.deepFuchsia,
              child: Logo(
                titleColor: ManagerColors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: ManagerHeight.h50, right: ManagerWidth.w52),
              child: Text(
                ManagerStrings.login,
                style: TextStyle(
                    fontWeight: ManagerFontWeight.bold,
                    fontSize: ManagerFontSize.s20,
                    color: ManagerColors.deepFuchsia),
              ),
            ),
            TextFieldWidget(
                Icons.person, ManagerStrings.email, _emailController),
            TextFieldWidget(
                Icons.lock, ManagerStrings.password, _passwordController),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w50),
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
                      activeColor: ManagerColors.emeraldGreen),
                  Text(
                    ManagerStrings.rememberMe,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: ManagerFontSize.s20,
                        fontWeight: ManagerFontWeight.bold),
                  ),
                ],
              ),
            ),
            Center(
              child: MainButton(
                onPressed: () {
                  //TODO : Sign in
                  String email = _emailController.text;
                  String password = _passwordController.text;
                },
                child: Text(
                  ManagerStrings.entrance,
                  style: TextStyle(
                      fontSize: ManagerFontSize.s20,
                      fontWeight: ManagerFontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ManagerWidth.w40),
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(ManagerWidth.w50),
                              child: Text(
                                ManagerStrings.forgetPassword,
                                style: TextStyle(
                                  fontSize: ManagerFontSize.s25,
                                  fontWeight: ManagerFontWeight.bold,
                                ),
                              ),
                            ),
                            TextFieldWidget(Icons.email, ManagerStrings.email,
                                _emailController),
                            MainButton(
                                child: const Text(ManagerStrings.send),
                                onPressed: () {})
                          ],
                        );
                      });
                },
                child: Center(
                  child: Text(
                    ManagerStrings.forgetPassword,
                    style: TextStyle(
                        fontSize: ManagerFontSize.s20,
                        color: ManagerColors.silver,
                        fontWeight: ManagerFontWeight.bold),
                  ),
                ),
              ),
            ),
            Center(
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: ManagerStrings.notHaveAccount,
                      style: TextStyle(
                        color: ManagerColors.silver,
                        fontSize: ManagerFontSize.s20,
                      )),
                  TextSpan(
                    text: ManagerStrings.createAccount,
                    style: TextStyle(
                      fontWeight: ManagerFontWeight.bold,
                      color: ManagerColors.black,
                      fontSize: ManagerFontSize.s20,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        //TODO :Edite navigator
                        Navigator.pushNamed(context, Routes.accountTypeScreen);
                      },
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: ManagerHeight.h40,
            ),
          ],
        ),
      ),
    );
  }
}
