import 'package:fluro/fluro.dart';
import 'router_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

//root
  // static String root = '/';
  static String rootRoute = '/:page';
  static String homeRoute = '/home';
  static String contactoRoute = '/contacto';
  static String webDevRoute = '/desarrollo-web';
  static String disenoRoute = '/diseno-branding';
  static String marketingRoute = '/marketing-ads';
  static String feedRoute = '/feed';
  static String licAdmCEORoute = '/lic-administracion-de-empresas/';

  static void configureRoutes() {
// def de rutas
    router.define(
      rootRoute,
      handler: VisitorHandlers.home,
      transitionType: TransitionType.none,
      transitionDuration: const Duration(milliseconds: 100),
    );
    router.define(
      homeRoute,
      handler: VisitorHandlers.home,
      transitionType: TransitionType.none,
      transitionDuration: const Duration(milliseconds: 100),
    );
    router.define(
      contactoRoute,
      handler: VisitorHandlers.home,
      transitionType: TransitionType.none,
      transitionDuration: const Duration(milliseconds: 100),
    );
    router.define(
      webDevRoute,
      handler: VisitorHandlers.home,
      transitionType: TransitionType.none,
      transitionDuration: const Duration(milliseconds: 100),
    );
    router.define(
      disenoRoute,
      handler: VisitorHandlers.home,
      transitionType: TransitionType.none,
      transitionDuration: const Duration(milliseconds: 100),
    );
    router.define(
      marketingRoute,
      handler: VisitorHandlers.home,
      transitionType: TransitionType.none,
      transitionDuration: const Duration(milliseconds: 100),
    );
    router.define(
      feedRoute,
      handler: VisitorHandlers.home,
      transitionType: TransitionType.none,
      transitionDuration: const Duration(milliseconds: 100),
    );
    router.define(
      licAdmCEORoute,
      handler: VisitorHandlers.home,
      transitionType: TransitionType.none,
      transitionDuration: const Duration(milliseconds: 100),
    );
  }
}
