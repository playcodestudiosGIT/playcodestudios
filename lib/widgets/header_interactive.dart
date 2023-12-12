import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';
import 'package:playcodestudios/providers/servicios_provider.dart';

import 'package:pointer_interceptor/pointer_interceptor.dart';

import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';
import 'action_button.dart';

class HeaderInteractive extends StatefulWidget {
  final String url;
  const HeaderInteractive({super.key, required this.url});

  @override
  State<HeaderInteractive> createState() => _HeaderInteractiveState();
}

class _HeaderInteractiveState extends State<HeaderInteractive> {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 480,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // const IframeBg(),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image(image: NetworkImage(widget.url), fit: BoxFit.cover,),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: bgColor.withOpacity(0.6),
          ),
          Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 800, minWidth: 100),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextRenderer(
                    
                    style: TextRendererStyle.header1,
                    text: 'TU NEGOCIO AL SIGUIENTE NIVEL',
                    child: Text(
                      'TU NEGOCIO AL SIGUIENTE NIVEL',
                      textAlign: TextAlign.center,
                      style: (wSize(context) < 420)
                          ? text22Title(context)
                              .copyWith(fontWeight: FontWeight.w900, fontSize: 26)
                          : text32Headline(context)
                              .copyWith(fontWeight: FontWeight.w900),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextRenderer(
                    text: 'PlayCode te ofrece soluciones de desarrollo web, diseño y marketing digital para tu negocio. Automatiza tus procesos, construye tu web y aumenta tus ventas con nuestra ayuda. Contacta con nosotros hoy mismo.',
                    style: TextRendererStyle.paragraph,
                    child: Text(
                      'PlayCode te ofrece soluciones de desarrollo web, diseño y marketing digital para tu negocio. Automatiza tus procesos, construye tu web y aumenta tus ventas con nuestra ayuda. Contacta con nosotros hoy mismo.',
                      textAlign: TextAlign.center,
                      style: text14BodyM(context),
                      maxLines: 5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  PointerInterceptor(
                      child: const ActionButton(text: 'Estoy listo, comencemos', tipo: AllServices.consultaService)),
                  const SizedBox(
                    height: 55,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


