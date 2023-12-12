import 'package:flutter/material.dart';

const Color primaryColor = Color(0xffEE05F2);
const Color secondaryColor = Color(0xff0455BF);
const Color blancoText = Color(0xFFc6c6c6);
const Color bgColor = Color(0xff221E40);
const Color shadePrimary = Color(0xFF4F1B60);

hSize(context) => MediaQuery.of(context).size.height;
wSize(context) => MediaQuery.of(context).size.width;

TextStyle text45DisplayM(context) => Theme.of(context).textTheme.displayLarge!;
TextStyle text32Headline(context) => Theme.of(context).textTheme.headlineLarge!;
TextStyle text22Title(context) => Theme.of(context).textTheme.titleLarge!;
TextStyle text14BodyM(context) =>
    Theme.of(context).textTheme.bodyMedium!.copyWith(color: blancoText);
TextStyle text14BodyMOp(context) =>
    Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey);
TextStyle text10mini(context) =>
    Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 10);
TextStyle text10miniOp(context) => Theme.of(context)
    .textTheme
    .bodyMedium!
    .copyWith(fontSize: 10, color: Colors.grey);

TextStyle textBoton(context) => Theme.of(context)
    .textTheme
    .bodyMedium!
    .copyWith(fontWeight: FontWeight.bold);

