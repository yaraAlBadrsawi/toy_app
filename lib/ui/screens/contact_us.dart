import 'package:flutter/material.dart';

import '../../components/TextFieldWidget.dart';
import '../../components/personal_data.dart';
import '../../components/social_icon.dart';
import '../../util/const.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: deepFuchsia,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'اتصل بنا',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 13,
              ),
              Text(
                'بيانات التواصل ',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: 20, color: purple, fontWeight: FontWeight.bold),
              ),
              Text(
                'نعمل على راحتكم على مدار الساعه مع فريق دعم فني مميز لتسهيل جميع طلباتكم ومتابعه مراسلاتكم والرد باسرع وقت ممكن ويمكنك ايضا التواصل مع مدراء المبيعات لطلب التسيجل او الاستفسار وتسهيل التعاون معكم وتوفير جميع الخدمات باسلوب مميز وراقي ',
                style: TextStyle(fontSize: 16),
                textDirection: TextDirection.rtl,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: PersonalData(
                  text: '+966123456789',
                  icon: Icons.phone,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: PersonalData(
                  text: '+966123456789',
                  icon: Icons.phone,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: PersonalData(
                  text: 'Mail@Website.com',
                  icon: Icons.email,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: PersonalData(
                  text: 'السعودية - الرياض - ارض المعارض',
                  icon: Icons.location_on,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SocialIcon(
                    svgIcon: 'assets/images/facebook_social_icon.svg',
                    iconColor: deepFuchsia,
                    containerColor: white,
                  ),
                  SocialIcon(
                    svgIcon: 'assets/images/instagram_icon.svg',
                    iconColor: deepFuchsia,
                    containerColor: white,
                  ),
                  SocialIcon(
                    svgIcon: 'assets/images/twitter_bird_icon.svg',
                    iconColor: deepFuchsia,
                    containerColor: white,
                  ),
                  SocialIcon(
                    svgIcon: 'assets/images/in_linked_social_icon.svg',
                    iconColor: deepFuchsia,
                    containerColor: white,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'راسلنا',
                style: TextStyle(fontSize: 20, color: purple),
              ),
              TextFieldWidget(Icons.person, 'الاسم'),
              TextFieldWidget(Icons.email, 'البريد الإلكتروني'),
              TextFieldWidget(Icons.phone, 'رقم الجوال'),
              TextFieldWidget(
                Icons.location_on,
                'الدولة',
                suffixIcon: Icons.keyboard_arrow_down,
              ),
              TextFieldWidget(Icons.email, 'عنوان الرسالة'),
              Column(
                children: [
                  Container(
                    height: 200,
                    child: TextFieldWidget(
                      Icons.email,
                      'اكتب رسالتك هنا',
                    ),
                  ),
                  Container(
                    height: 200,
                  ),
                ],
              ),
              Center(
                  child: ElevatedButton(
                      style: buttonStyle,
                      onPressed: () {},
                      child: Text(
                        'ارسال',
                        style: TextStyle(fontSize: 20),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
