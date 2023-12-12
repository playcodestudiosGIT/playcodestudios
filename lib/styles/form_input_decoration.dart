

import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';
class FormDecor {


    static InputDecoration formFieldInputDecoration({required BuildContext context, required String label, IconData? icon, IconData? suffIcon, Function? onPrs}) => InputDecoration(
      
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
      ),
      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: primaryColor.withOpacity(0.3))),
      filled: true,
      fillColor: bgColor.withOpacity(0.8),
      labelText: label,
      labelStyle: text14BodyM(context),
      prefixIcon: (icon == null) ? null : Icon(icon),
      suffixIconColor: primaryColor.withOpacity(0.3));
}