import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexa_project/ui/screens/auth/account_type.dart';
import 'package:hexa_project/ui/screens/auth/create_viewer_account.dart';
import 'package:hexa_project/ui/screens/auth/create_visitor_account.dart';
import 'package:hexa_project/ui/screens/auth/login.dart';
import 'package:hexa_project/ui/screens/blogs.dart';
import 'package:hexa_project/ui/screens/common_questions.dart';
import 'package:hexa_project/ui/screens/contact_us.dart';
import 'package:hexa_project/ui/screens/detailes.dart';
import 'package:hexa_project/ui/screens/edit_account.dart';
import 'package:hexa_project/ui/screens/exhibitors_screen.dart';
import 'package:hexa_project/ui/screens/home_screen.dart';
import 'package:hexa_project/ui/screens/map.dart';
import 'package:hexa_project/ui/screens/organizers.dart';
import 'package:hexa_project/ui/screens/personal_account.dart';
import 'package:hexa_project/ui/screens/select_bouquet.dart';
import 'package:hexa_project/ui/screens/splash_screen.dart';
import 'package:hexa_project/ui/screens/tickets_screen.dart';
import 'package:hexa_project/ui/screens/travel_and_hotels.dart';
import 'package:hexa_project/ui/screens/who_are.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'config/constants.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(
          Constans.deviceWidth,
          Constans.deviceHeight,
        ),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            builder: DevicePreview.appBuilder,
            locale: DevicePreview.locale(context),
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: [
              const Locale('en'), // English
              const Locale('ar'), // Arabic
            ],
            // Set the initial locale
            // locale: const Locale('ar'), // English
            // Add your home screen or initial route
            initialRoute: '/',
            routes: {
              '/': (context) => SplashScreen(),
              '/home_screen': (context) => HomeScreen(),
              '/login_screen': (context) => LoginScreen(),
              '/account_type_screen': (context) => AccountType(),
              '/visitor_register_screen': (context) => VisitorRegister(),
              '/viewer_register_screen': (context) => ViewerRegister(),
              '/personal_account_screen': (context) => PersonalProfile(),
              '/blogs_screen': (context) => BlogsScreen(),
              '/details_screen': (context) => DetailsScreen(),
              '/contact_us_screen': (context) => ContactUsScreen(),
              '/common_question_screen': (context) => CommonQuestionScreen(),
              '/who_are_we_screen': (context) => WhoAreWeScreen(),
              '/exhibitors_screen': (context) => ExhibitorsScreen(),
              '/select_bouquet_screen': (context) => SelectBouquetScreen(),
              '/map_screen': (context) => MapScreen(),
              '/travel_and_hotel_screen': (context) => TravelAndHotelsScreen(),
              '/organizers_screen': (context) => OrganizersScreen(),
              '/tickets_screen': (context) => TicketsScreen(),
              '/edit_account': (context) => EditAccountScreen(),
            },
            debugShowCheckedModeBanner: false,
            // home: MyHomePage(),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
