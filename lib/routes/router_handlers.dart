import 'package:fluro/fluro.dart';
import 'package:playcodestudios/views/servicios/dev/web_dev.dart';
import 'package:playcodestudios/views/sistema/contact_view.dart';
import 'package:playcodestudios/views/home_view.dart';

import '../views/servicios/diseno/diseno_view.dart';
import '../views/servicios/marketing/marketing_view.dart';


class VisitorHandlers {
  // ---
  static Handler home = Handler(handlerFunc: (context, params) {
    final page = params['page']!.first;

    // 

    if (page == '/') {
      
      return const HomeView();
    }
    if (page == 'home') {
      return const HomeView();
    }
    if (page == 'contacto') {
      return const ContactView();
    }
    if (page == 'webdev') {
      return const WebDevView();
    }
    if (page == 'brand') {
      return const DisenoView();
    }
    if (page == 'marketing') {
      return const MarketingView();
    }
    
    return const HomeView();
  });

}
