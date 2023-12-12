import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';



class NotificationServices {
  static GlobalKey<ScaffoldMessengerState> msgKey = GlobalKey<ScaffoldMessengerState>(debugLabel: 'msgKey');

  static showSnackbarError(BuildContext context, String msg, Color color) {
    final snackBar = SnackBar(
        backgroundColor: color,
        content: Text(
          msg,
          style: text14BodyM(context),
        ));

    msgKey.currentState!.showSnackBar(snackBar);
  }
}
