import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../components/TextFieldWidget.dart';
import '../../../components/title_bar.dart';
import '../../../util/const.dart';
import '../../../util/size_util.dart';

class ViewerRegister extends StatefulWidget {
  const ViewerRegister({Key? key}) : super(key: key);

  @override
  State<ViewerRegister> createState() => _ViewerRegisterState();
}

class _ViewerRegisterState extends State<ViewerRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TitleBar(
              title: 'إنشاء حساب عارض',
              icon: FontAwesomeIcons.store,
            ),
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
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: purple,
                  padding: EdgeInsets.symmetric(horizontal: 76, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'تسجيل',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
