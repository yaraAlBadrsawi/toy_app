import 'package:flutter/material.dart';
import '../../../components/TextFieldWidget.dart';
import '../../../util/const.dart';
import '../../../util/size_util.dart';

class VisitorRegister extends StatefulWidget {
  const VisitorRegister({Key? key}) : super(key: key);

  @override
  State<VisitorRegister> createState() => _VisitorRegisterState();
}

class _VisitorRegisterState extends State<VisitorRegister> {
  String _selectedItem = 'نص 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TitleBar(
              title: 'إنشاء حساب زائر',
              icon: Icons.person,
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
            Container(
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: lightSmoke,
                  width: 1,
                ),
              ),
            ),
            TextFieldWidget(Icons.location_on_sharp, 'الدولة',
                suffixIcon: Icons.keyboard_arrow_down),
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

class TitleBar extends StatelessWidget {
  String title;
  IconData icon;

  TitleBar({
    required this.title,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 295,
      width: double.infinity,
      color: deepFuchsia,
      margin: EdgeInsets.only(bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: deepFuchsia,
              border: Border.all(
                color: Colors.white, // Color of the outline
                width: 1.0, // Width of the outline
              ),
            ),
            child: Icon(
              icon,
              color: white,
              size: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
