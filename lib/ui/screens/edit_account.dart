import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexa_project/components/TextFieldWidget.dart';
import 'package:hexa_project/components/app_bar.dart';
import 'package:hexa_project/util/const.dart';

class EditAccountScreen extends StatefulWidget {
  const EditAccountScreen({Key? key}) : super(key: key);

  @override
  State<EditAccountScreen> createState() => _EditAccountScreenState();
}

class _EditAccountScreenState extends State<EditAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'تعديل الحساب ',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFieldWidget(
              Icons.person,
              'الاسم',
            ),
            TextFieldWidget(
              Icons.email,
              'البريد الإلكتروني',
            ),
            TextFieldWidget(
              Icons.phone,
              'رقم الجوال',
            ),
            TextFieldWidget(
              Icons.location_city,
              'اسم الشركة',
            ),
            TextFieldWidget(Icons.location_on_sharp, 'الدولة',
                suffixIcon: Icons.keyboard_arrow_down
                // Icons.keyboard_arrow_down_sharp,
                ),
            TextFieldWidget(
              FontAwesomeIcons.newspaper,
              'شعار الشركة',
              show: 'استعراض',
            ),
            TextFieldWidget(
              FontAwesomeIcons.newspaper,
              'ملفات الشركة التعريفية',
              show: 'استعراض',
            ),
            TextFieldWidget(
              FontAwesomeIcons.newspaper,
              'ملفات الشركة الرسمية',
              show: 'استعراض',
            ),
            TextFieldWidget(
              Icons.lock,
              'كلمة المرور',
            ),
            TextFieldWidget(
              Icons.lock,
              'إعادة كلمة المرور',
            ),
            TextFieldWidget(
              FontAwesomeIcons.facebookF,
              'ضع رابط حسابك على فيسبوك',
            ),
            TextFieldWidget(
              FontAwesomeIcons.instagram,
              'ضع رابط حسابك على انستغرام',
            ),
            TextFieldWidget(
              FontAwesomeIcons.twitter,
              'ضع رابط حسابك على تويتر',
            ),
            TextFieldWidget(
              FontAwesomeIcons.linkedinIn,
              'ضع رابط حسابك على لينكد',
            ),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {},
              child: Text('حفظ'),
            ),
          ],
        ),
      ),
    );
  }
}
