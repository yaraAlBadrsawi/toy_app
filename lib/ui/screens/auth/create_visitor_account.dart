import 'package:flutter/material.dart';
import '../../../../../components/TextFieldWidget.dart';
import '../../../../../components/title_bar.dart';
import '../../../../../core/resources/manger_color.dart';
import '../../../../../core/resources/manger_fonts.dart';
import '../../../../../core/resources/manger_sizes.dart';
import '../../../../../core/resources/manger_strings.dart';
import '../../../components/main_button.dart';
import '../../../components/snack_bar.dart';
import '../../../core/base_model/user.dart';
import '../../../core/network/auth_controller.dart';
import '../../../core/validation.dart';

class VisitorRegister extends StatefulWidget {
  const VisitorRegister({Key? key}) : super(key: key);

  @override
  State<VisitorRegister> createState() => _VisitorRegisterState();
}

class _VisitorRegisterState extends State<VisitorRegister> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatPasswordController =
      TextEditingController();
  List<String> country = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  // dispose it when the widget is unmounted
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _mobileController.dispose();
    _passwordController.dispose();
    // _repeatPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManagerColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TitleBar(
              title: ManagerStrings.createVisitorAccount,
              icon: Icons.person,
            ),
            TextFieldWidget(
              Icons.person,
              ManagerStrings.name,
              _nameController,
            ),
            TextFieldWidget(
              Icons.email,
              ManagerStrings.email,
              _emailController,
            ),
            TextFieldWidget(
              Icons.phone,
              ManagerStrings.phoneNumber,
              _mobileController,
            ),
            Container(
              width: ManagerWidth.w300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ManagerRadius.r10),
                border: Border.all(
                  color: ManagerColors.lightSmoke,
                  width: 1,
                ),
              ),
            ),
            TextFieldWidget(Icons.location_on_sharp, ManagerStrings.country,
                TextEditingController(),
                suffixIcon: Icons.keyboard_arrow_down),
            TextFieldWidget(
              Icons.lock,
              ManagerStrings.password,
              _passwordController,
              errorText: Validation.validatePassword(_passwordController),
            ),
            TextFieldWidget(
              Icons.lock,
              ManagerStrings.repeatPassword,
              _repeatPasswordController,
              errorText: Validation.validateRepeatPassword(
                  _passwordController, _repeatPasswordController),
            ),
            SizedBox(
              height: ManagerHeight.h40,
            ),
            MainButton(
                child: Text(
                  ManagerStrings.register,
                  style: TextStyle(
                      fontSize: ManagerFontSize.s20,
                      fontWeight: ManagerFontWeight.bold),
                ),
                onPressed: () {
                  _performRegister();
                }),
            SizedBox(
              height: ManagerHeight.h30,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _performRegister() async {
    if (!_checkData()) {
      SnackBarUtils.showSnackBar(context, ManagerStrings.dataCantBeEmpty);
      // ));
    } else if (!Validation.validateEmail(_emailController.text)) {
      SnackBarUtils.showSnackBar(context, ManagerStrings.invalidEmail);
    } else if (Validation.validatePassword(_passwordController) != null) {
      if (Validation.validatePassword(_passwordController) ==
          ManagerStrings.shortPassword) {
        SnackBarUtils.showSnackBar(context, ManagerStrings.shortPassword);
      } else if (_passwordController.text != _repeatPasswordController.text) {
        SnackBarUtils.showSnackBar(context, ManagerStrings.mismatchedPassword);
      } else {}
    } else {
      // in else the only true case i want
      await AuthController.singUp(context, user);
    }
  }

  bool _checkData() {
    if (_nameController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty &&
        _repeatPasswordController.text.isNotEmpty &&
        _mobileController.text.isNotEmpty) {
      return true;
    }
    print('empty dats: ${_nameController.text},,,${_passwordController.text}');
    return false;
  }

  User get user {
    User user = User();
    user.email = _emailController.text;
    user.password = _passwordController.text;
    user.repeatPassword = _passwordController.text;
    user.name = _nameController.text;
    user.mobile = _mobileController.text;
    user.country = '13';
    user.typeMobile = 'android';
    user.userType = '3';
    return user;
  }
}
