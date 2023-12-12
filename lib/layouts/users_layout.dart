import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:playcodestudios/routes/router.dart';
import 'package:playcodestudios/services/navigator_service.dart';
import 'package:playcodestudios/widgets/drawer.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../providers/global_keys_provider.dart';
import '../services/launch_url_service.dart';

class UsersLayout extends StatefulWidget {
  final Widget child;
  const UsersLayout({super.key, required this.child});

  @override
  State<UsersLayout> createState() => _UsersLayoutState();
}

class _UsersLayoutState extends State<UsersLayout> {
  @override
  Widget build(BuildContext context) {
    final userScaffoldkey =
        Provider.of<GlobalKeysProvider>(context).userScaffoldkey;
    return Scaffold(
      key: userScaffoldkey,
      drawer: const CusDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () =>
                NavigatorService.navigateTo(context, Flurorouter.homeRoute),
            child: Opacity(
                opacity: 0.8,
                child: Image.network(
                  'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699401479/assets/logo_blanco_h_3_xgir3s.png',
                  width: 150,
                )),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu,
              color: Theme.of(context).colorScheme.onPrimaryContainer),
          onPressed: () {
            userScaffoldkey.currentState!.openDrawer();
          },
        ),
        actions: [
          if (wSize(context) < 500)
            ...[IconButton(
                onPressed: () {
                  UrlLaunch.launchWs('Contacto');
                  // NavigatorService.navigateTo(context, Flurorouter.contactoRoute);
                },
                icon: const Icon(FontAwesomeIcons.whatsapp)),
            IconButton(
                onPressed: () {
                  NavigatorService.navigateTo(context, Flurorouter.contactoRoute);
                },
                icon: const Icon(Icons.email))],
          if (wSize(context) > 500)
            ElevatedButton(
                onPressed: () {
                  NavigatorService.navigateTo(
                      context, Flurorouter.contactoRoute);
                },
                child: Text(
                  'CONTACTO',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimaryContainer),
                )),
          const SizedBox(width: 10),
        ],
      ),
      backgroundColor: bgColor,
      body: widget.child,
    );
  }
}

