import 'package:flutter/material.dart';

import '../constants.dart';

class BotonStyle {
  static ButtonStyle botonStyle = ButtonStyle(
      shadowColor: MaterialStateProperty.all(Colors.black.withOpacity(0.3)),
      elevation: MaterialStateProperty.all(10),
      backgroundColor: MaterialStateProperty.all(primaryColor));

      
  static ButtonStyle botonStyleSec = ButtonStyle(
      
      elevation: MaterialStateProperty.all(10),
      backgroundColor: MaterialStateProperty.all(secondaryColor));
}
