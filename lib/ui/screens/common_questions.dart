import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../util/const.dart';

class CommonQuestionScreen extends StatefulWidget {
  const CommonQuestionScreen({Key? key}) : super(key: key);

  @override
  State<CommonQuestionScreen> createState() => _CommonQuestionScreenState();
}

class _CommonQuestionScreenState extends State<CommonQuestionScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: deepFuchsia,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('الأسئلة الشائعة', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: lightSmoke,
                width: 2.0,
              ),
            ),
            child: ExpansionTile(
              title: Text(
                'لماذا لا يمكنني إضافة هذا المستخدِم؟',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18),
              ),
              trailing: Container(
                width: 0,
              ),
              leading: Icon(
                _isExpanded ? Icons.add : FontAwesomeIcons.minus,
                color: deepFuchsia,
              ),
              onExpansionChanged: (value) {
                print(value);
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              children: [
                ListTile(
                  title: Text(
                      textDirection: TextDirection.rtl,
                      'يرتبط المستخدِم من قبل بحساب نشِط أو غير مفعَّل في AdSense.المستخدِم هو اسم المستخدِم البديل لمعلومات موجودة لتسجيل الدخول إلى AdSense.   '
                      ' AdSense. يمكن أن تكون معلومات تسجيل الدخول هذه مرتبطة بحساب AdSense المعنيّ،'
                      'أو بحساب آخر في AdSense أو أحد تطبيقاته.'
                      'لم يتمّ تفعيل AdSense في حساب G Suite للمستخدم. يمكنك التواصل مع مشرف G Suite لتفعيل AdSense.'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
