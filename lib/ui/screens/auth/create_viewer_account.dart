import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../components/TextFieldWidget.dart';
import '../../../../../components/title_bar.dart';
import '../../../../../core/resources/manger_color.dart';
import '../../../../../core/resources/manger_fonts.dart';
import '../../../../../core/resources/manger_sizes.dart';
import '../../../../../core/resources/manger_strings.dart';

class ViewerRegister extends StatefulWidget {
  const ViewerRegister({Key? key}) : super(key: key);

  @override
  State<ViewerRegister> createState() => _ViewerRegisterState();
}

class _ViewerRegisterState extends State<ViewerRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManagerColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TitleBar(
              title: ManagerStrings.viewerAccount,
              icon: FontAwesomeIcons.store,
            ),
            TextFieldWidget(
              Icons.person,
              ManagerStrings.name,
              TextEditingController(),
            ),
            TextFieldWidget(
              Icons.email,
              ManagerStrings.email,
              TextEditingController(),
            ),
            TextFieldWidget(
              Icons.phone,
              ManagerStrings.phoneNumber,
              TextEditingController(),
            ),
            TextFieldWidget(
              Icons.location_city,
              ManagerStrings.companyName,
              TextEditingController(),
            ),
            TextFieldWidget(Icons.location_on_sharp, ManagerStrings.country,
                TextEditingController(),
                suffixIcon: Icons.keyboard_arrow_down
                // Icons.keyboard_arrow_down_sharp,
                ),
            TextFieldWidget(
              FontAwesomeIcons.newspaper,
              ManagerStrings.companyLogo,
              TextEditingController(),
              show: ManagerStrings.review,
            ),
            TextFieldWidget(
              FontAwesomeIcons.newspaper,
              ManagerStrings.companyProfile,
              TextEditingController(),
              show: ' ',
            ),
            TextFieldWidget(
              FontAwesomeIcons.newspaper,
              ManagerStrings.officialCompanyFiles,
              show: ' ',
              TextEditingController(),
            ),
            TextFieldWidget(
              Icons.lock,
              ManagerStrings.password,
              TextEditingController(),
            ),
            TextFieldWidget(
              Icons.lock,
              ManagerStrings.repeatPassword,
              TextEditingController(),
            ),
            SizedBox(
              height: ManagerHeight.h40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ManagerColors.purple,
                  padding: EdgeInsets.symmetric(
                      horizontal: ManagerWidth.w76,
                      vertical: ManagerHeight.h15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(ManagerRadius.r10),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  ManagerStrings.register,
                  style: TextStyle(
                      fontSize: ManagerFontSize.s20,
                      fontWeight: ManagerFontWeight.bold),
                )),
            SizedBox(
              height: ManagerHeight.h30,
            ),
          ],
        ),
      ),
    );
  }
}
