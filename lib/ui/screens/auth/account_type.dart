import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexa_project/ui/screens/auth/widget/account_type.dart';
import '../../../../../core/resources/manager_assets.dart';
import '../../../../../core/resources/manger_color.dart';
import '../../../../../core/resources/manger_fonts.dart';
import '../../../../../core/resources/manger_sizes.dart';
import '../../../../../core/resources/manger_strings.dart';

class AccountTypeScreen extends StatefulWidget {
  const AccountTypeScreen({Key? key}) : super(key: key);

  @override
  State<AccountTypeScreen> createState() => _AccountTypeScreenState();
}

class _AccountTypeScreenState extends State<AccountTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManagerColors.deepFuchsia,
      body: Container(
        color: ManagerColors.deepFuchsia,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              bottom: ManagerHeight.h40,
              child: Image.asset(ManagerAssets.group279,
                  height: ManagerHeight.h332, width: ManagerWidth.w428),
            ),
            Positioned(
              bottom: ManagerHeight.h0,
              child: Image.asset(ManagerAssets.group278,
                  height: ManagerHeight.h223, width: ManagerWidth.w428),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    ManagerStrings.selectAccountType,
                    style: TextStyle(
                        fontSize: ManagerFontSize.s25,
                        fontWeight: ManagerFontWeight.bold,
                        color: ManagerColors.white),
                  ),
                  AccountTypeWidget(
                    image: 'visitor', //TODO
                    text: ManagerStrings.visitor,
                    icon: Icons.person,
                    navigator:
                        '/visitor_register_screen', //TODO :change navigator
                  ),
                  AccountTypeWidget(
                    image: 'viewer',
                    text: ManagerStrings.viewer,
                    icon: FontAwesomeIcons.store,
                    navigator:
                        '/viewer_register_screen', //TODO :change navigator
                  ),
                  AccountTypeWidget(
                    image: 'sponsor',
                    text: ManagerStrings.sponsorAccount,
                    icon: FontAwesomeIcons.medal, //TODO :change navigator
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
