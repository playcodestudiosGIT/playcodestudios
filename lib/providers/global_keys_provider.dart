import 'package:flutter/material.dart';

class GlobalKeysProvider extends ChangeNotifier {
  // Current Page
  String _currentUrl = '/home';

  // Scaffold Drawer
  GlobalKey<ScaffoldState> userScaffoldkey = GlobalKey();

  String get currentUrl => _currentUrl;
  set currentUrl(String value) {
    _currentUrl = value;
    notifyListeners();
  }
}
