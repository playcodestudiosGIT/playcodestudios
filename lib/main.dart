import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:playcodestudios/api/playcode_api.dart';
import 'package:playcodestudios/constants.dart';
import 'package:playcodestudios/layouts/users_layout.dart';
import 'package:provider/provider.dart';
import 'package:seo_renderer/helpers/robot_detector_web.dart';

import 'providers/global_keys_provider.dart';
import 'providers/leads_provider.dart';
import 'providers/servicios_provider.dart';
import 'providers/trabajos_provider.dart';
import 'routes/router.dart';
import 'services/local_storage.dart';
import 'services/navigator_service.dart';

void main() async {
  await LocalStorage.configurePrefs();
  PlaycodeApi.configureDio();
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => LeadsProvider()),
          ChangeNotifierProvider(create: (_) => TrabajosProvider()),
          ChangeNotifierProvider(create: (_) => GlobalKeysProvider()),
          ChangeNotifierProvider(create: (_) => ServiciosProvider())
        ],
        child: RobotDetector(
          debug: false,
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Playcode Studios',
              onGenerateRoute: Flurorouter.router.generator,
              navigatorKey: NavigatorService.navigatorKey,
              navigatorObservers: NavigatorService.navigatorObservers,
              scrollBehavior: MyCustomScrollBehavior(),
              theme: ThemeData(
                  useMaterial3: true,
                  colorScheme: ColorScheme.fromSeed(
                      seedColor: secondaryColor, brightness: Brightness.dark)),
              builder: ((_, child) {
                return UsersLayout(
                  child: child!,
                );
              }),
            ),
        ),
        );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
