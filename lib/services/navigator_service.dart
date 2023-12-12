import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/global_keys_provider.dart';

class NavigatorService {
  
  static const List<NavigatorObserver> navigatorObservers = <NavigatorObserver>[
    
  ];


  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static navigateTo(context, String routeName) {
    Provider.of<GlobalKeysProvider>(context, listen: false).currentUrl = routeName;
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  static replaceTo(context, String routeName) {
    Provider.of<GlobalKeysProvider>(context, listen: false).currentUrl = routeName;
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }
}
