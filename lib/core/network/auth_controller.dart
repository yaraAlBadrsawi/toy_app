import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../../components/snack_bar.dart';
import '../../util/api_constant.dart';
import '../base_model/user.dart';
import 'package:http/http.dart' as http;
import '../resources/manger_strings.dart';
import '../storage/shared_preferences_manager.dart';

class AuthController {
  static void signIn() {}
  static Future<bool> singUp(BuildContext context, User user) async {
    Uri uri = Uri.parse(ApiConstants.signUpEndpoint);
    http.Response response = await http.post(uri, body: {
      'email': user.email,
      'password': user.password, //user.password
      'confirm_password': user.repeatPassword, //user.repeatPassword
      'name': user.name,
      'mobile': user.mobile,
      'country': user.country,
      'type_mobile': user.typeMobile,
      'type': user.userType,
    });
    print('Response status: ${response.statusCode}');

    if (response.statusCode == 200) {
      print('created sucess');
      SnackBarUtils.showSnackBar(context, ManagerStrings.signUpDone);

      var jsonObject = jsonDecode(response.body);
      print(jsonObject);
      SharedPrefController().save(user: jsonDecode(response.body)['user']);
      print('yaaaaaaaaa${jsonDecode(response.body)['user']}');
      print("ShareReference done");
      print("${user.email} emaileofjidfbbhefberi");
      return true;
    } else if (response.statusCode != 500) {
      print('${jsonDecode(response.body)['message']}');
      // showSnackBar(
      //     context: context,
      //     message: ,
      //     erorr: true);
      return true;
    } else {
      print('something went wrong,please try again ');
      // showSnackBar(
      //     context: context,
      //     message: 'something went wrong,please try again ',
      //     erorr: true);
    }
    return false;
  }

  Future<bool> login(
      {required BuildContext,
      required String email,
      required String password}) async {
    Uri uri = Uri.parse(ApiConstants.loginEndPoint);
    http.Response response = await http.post(
      uri,
      body: {
        'email': email,
        'password': password,
      },
    );
    print('Response status: ${response.statusCode}');

    if (response.statusCode == 200) {
      var jsonObject = jsonDecode(response.body)['token'];
      print(jsonObject);
      // print(jsonObject['token']);
      // var data = jsonDecode(response.body)['user'] as User;
      SharedPrefController().save(user: jsonDecode(response.body)['user']);
      print('yaaaaaaaaa${jsonDecode(response.body)['user']}');
      SharedPrefController().getToken(token: jsonObject);
      // print('${user.token} in api');

      return true;
    } else if (response.statusCode != 500) {
      print('${jsonDecode(response.body)['message']}');
    } else {
      print('something went wrong,please try again ');
    }
    return false;
  }
}
