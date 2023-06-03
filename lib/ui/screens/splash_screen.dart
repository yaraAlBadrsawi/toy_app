import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hexa_project/core/network/api_service.dart';
import '../../components/logo.dart';
import '../../util/const.dart';
import 'package:http/http.dart' as http;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // connected with api
    ApiService.fetchData();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home_screen'); //login_screen
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Logo(),
      ),
    );
  }
}
