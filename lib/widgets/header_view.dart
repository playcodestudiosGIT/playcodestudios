import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playcodestudios/providers/servicios_provider.dart';
import 'package:playcodestudios/routes/router.dart';
import 'package:playcodestudios/services/navigator_service.dart';
import 'package:playcodestudios/widgets/action_button.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';

import '../constants.dart';

class HeaderView extends StatelessWidget {
  final String bgImg;
  final String smallTitle;
  final String bigTitle;
  final String route;
  final String buttonText;
  final AllServices tipo;
  const HeaderView(
      {super.key,
      required this.bgImg,
      required this.smallTitle,
      required this.bigTitle,
      required this.route,
      required this.buttonText,
      required this.tipo});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
           SizedBox(width: wSize(context), height: (wSize(context) > 400) ? 300 : 340, child: Image.network(bgImg, fit: BoxFit.cover),),
           Container(
            alignment: Alignment.center,
                      width: wSize(context),
                      height: (wSize(context) > 400) ? 300 : 340,
                      color: bgColor.withOpacity(0.8),
                    ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
              Container(
                constraints: const BoxConstraints(maxWidth: 900),
                width: double.infinity,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          NavigatorService.navigateTo(
                              context, Flurorouter.homeRoute);
                        },
                        icon: const Icon(Icons.arrow_back)),
                  ],
                ),
              ),
              Container(
                height: 200,
                padding: (wSize(context) > 400) ? null : const EdgeInsets.only(bottom: 20),
                alignment: Alignment.center,
                width: wSize(context),
                // height: 300,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    
                    Wrap(
                      spacing: 50,
                      runSpacing: 30,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Container(
                          width: (wSize(context) < 850)
                              ? wSize(context)
                              : wSize(context) / 2,
                              
                          constraints: const BoxConstraints(maxWidth: 400),
                          // padding: const EdgeInsets.symmetric(
                          //     horizontal: 10, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: (wSize(context) > 849) ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                            children: [
                              
                              Container(
                                width: double.infinity,
                                child: TextRenderer(
                                  style: TextRendererStyle.header1,
                                  child: Text(
                                    bigTitle,
                                    maxLines: 2,
                                    textAlign: (wSize(context) > 849) ? TextAlign.start : TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      height: 1,
                                      fontSize: 35,
                                      color: primaryColor,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 400),
                          width: (wSize(context) < 850)
                              ? wSize(context)
                              : wSize(context) / 2,
                          child: Column(
                            children: [
                              ActionButton(
                                text: 'COTIZAR SERVICIO',
                                tipo: tipo,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
