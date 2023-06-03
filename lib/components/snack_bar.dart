import 'package:flutter/material.dart';

class SnackBarUtils {
  static void showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
//
//
// Widget showSnackBar(String title) {
//   final snackBar = SnackBar(
//     content: Text(title),
//     duration: const Duration(seconds: 3), // Snackbar duration
//     action: SnackBarAction(
//       label: 'Close',
//       onPressed: () {
//         //TODO : implement this
//         // Perform some action when the action button is pressed
//       },
//     ),
//   );
//   return snackBar;
// }
