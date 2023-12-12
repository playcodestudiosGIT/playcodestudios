import 'package:fluro/fluro.dart';

import '../views/sistema/no_page_found.dart';

class NoPageHandler {
  static Handler noPageFound = Handler(handlerFunc: (context, params) {
    return const NoPageFound();
  });
}
