import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:playcodestudios/constants.dart';
import 'package:playcodestudios/routes/router.dart';
import 'package:playcodestudios/services/navigator_service.dart';
import 'package:provider/provider.dart';

import '../providers/global_keys_provider.dart';
import '../services/launch_url_service.dart';

class CusDrawer extends StatelessWidget {
  const CusDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    final userScaffoldkey =
        Provider.of<GlobalKeysProvider>(context).userScaffoldkey;
    return Drawer(
      backgroundColor: bgColor,
      child: Stack(
        children: [
          // SizedBox(
          //   width: size.width,
          //   height: size.height,
          // ),
          ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Stack(
                  children: [
                    Positioned(
                        right: 0,
                        top: 0,
                        child: IconButton(
                            onPressed: () {
                              userScaffoldkey.currentState!.closeDrawer();
                            },
                            icon: const Icon(Icons.arrow_back))),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Image.network(
                          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699401479/assets/logo_blanco_h_3_xgir3s.png'),
                    )),
                  ],
                ),
              ),

              ListTile(
                hoverColor: bgColor,
                title: const Row(
                  children: [
                    Icon(Icons.home),
                    SizedBox(width: 10),
                    Text('Inicio'),
                  ],
                ),
                onTap: () {
                  NavigatorService.navigateTo(context, Flurorouter.homeRoute);
                  userScaffoldkey.currentState!.closeDrawer();
                },
              ),
              // ListTile(
              //   title: const Row(
              //     children: [
              //       Icon(Icons.groups_2),
              //       SizedBox(width: 15),
              //       Text('Equipo'),
              //     ],
              //   ),
              //   onTap: () {
              //     // NavigatorService.navigateTo(context, Flurorouter.contactoRoute);
              //     userScaffoldkey.currentState!.closeDrawer();
              //   },
              // ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Text(
                    'SERVICIOS',
                    style: TextStyle(
                        fontSize: 15, color: Colors.white.withOpacity(0.5)),
                  )),
              ListTile(
                hoverColor: bgColor,
                title: const Row(
                  children: [
                    Icon(Icons.branding_watermark),
                    SizedBox(width: 15),
                    Text('Diseño y RRSS'),
                  ],
                ),
                onTap: () {
                  NavigatorService.navigateTo(context, Flurorouter.brandRoute);
                  userScaffoldkey.currentState!.closeDrawer();
                },
              ),
              ListTile(
                hoverColor: bgColor,
                title: const Row(
                  children: [
                    Icon(Icons.web),
                    SizedBox(width: 15),
                    Text('Desarrollo WEB/APPS'),
                  ],
                ),
                onTap: () {
                  NavigatorService.navigateTo(context, Flurorouter.webDevRoute);
                  userScaffoldkey.currentState!.closeDrawer();
                },
              ),
              // ListTile(
              //   title: Row(
              //     children: [
              //       Opacity(
              //         opacity: 0.8,
              //       child:Image.asset('mobiledev.png', width: 25,)),
              //       const SizedBox(width: 15),
              //       const Text('Desarrollo Móvil'),
              //     ],
              //   ),
              //   onTap: () {
              //     NavigatorService.navigateTo(context, Flurorouter.mobileDevRoute);
              //     userScaffoldkey.currentState!.closeDrawer();
              //   },
              // ),

              ListTile(
                hoverColor: bgColor,
                title: const Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.bullhorn,
                      size: 20,
                    ),
                    SizedBox(width: 15),
                    Text('Marketing Digital'),
                  ],
                ),
                onTap: () {
                  NavigatorService.navigateTo(
                      context, Flurorouter.marketingRoute);
                  userScaffoldkey.currentState!.closeDrawer();
                },
              ),
          
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Text(
                    'CONTACTO',
                    style: TextStyle(
                        fontSize: 15, color: Colors.white.withOpacity(0.5)),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.whatsapp),
                    hoverColor: bgColor,
                    onPressed: () {
                      UrlLaunch.launchWs('Contacto');
                    },
                  ),
                  const SizedBox(width: 15),
                  IconButton(
                    onPressed: () {
                      UrlLaunch.launchInstagram('Contacto');
                    },
                    hoverColor: bgColor,
                    icon: const Icon(FontAwesomeIcons.instagram),
                    
                  ),
                  // SizedBox(width: 15),
                  // Icon(FontAwesomeIcons.facebook),
                  // SizedBox(width: 15),
                  // Icon(FontAwesomeIcons.youtube),
                  // SizedBox(width: 15),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
