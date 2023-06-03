import 'package:flutter/cupertino.dart';
import 'package:hexa_project/core/resources/manger_strings.dart';

class Validation {
  static bool validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value) ? false : true;
  }

  static String? validatePassword(TextEditingController controller) {
    // Regular expression pattern to match at least one letter and one number
    RegExp passwordPattern = RegExp(r'^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6}$');
    // at any time, we can get the text from _controller.value.text
    final text = controller.value.text;
    if (text.isEmpty) {
      return ManagerStrings.dataCantBeEmpty;
    }
    if (text.length < 6) {
      return ManagerStrings.shortPassword;
    } else if (passwordPattern.hasMatch(text)) {
      return ManagerStrings.invalidPassword;
    } else {
      return null; // return null if the text is valid
    }
  }

  static String? validateRepeatPassword(
      TextEditingController passwordController,
      TextEditingController repeatPasswordController) {
    if (passwordController.value.text != repeatPasswordController.value.text) {
      return ManagerStrings.mismatchedPassword;
    } else {
      return null; // return null if the text is valid
    }
  }
}
