import 'package:flutter/material.dart';
import 'package:playcodestudios/routes/router.dart';
import 'package:playcodestudios/services/navigator_service.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';

import '../constants.dart';

class ServiciosSection extends StatelessWidget {
  const ServiciosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 40),
      width: wSize(context),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: (wSize(context) <= 360) ? 20 : 60),
            Servicio(
              title: 'DISEÑO Y REDES SOCIALES',
              img:
                  'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1701716006/assets/rrss_rftxsb.jpg',
              route: Flurorouter.brandRoute,
         
                  
            ),
            const SizedBox(width: 60),
            Servicio(
              title: 'DESARROLLO WEB, APPS Y SISTEMAS',
              img:
                  'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1701718273/assets/devweb_klktka.png',
              route: Flurorouter.webDevRoute,
           
                  
            ),
            const SizedBox(width: 60),
            Servicio(
              title: 'MARKETING ESTRATÉGICO',
              img:
                  'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1701718607/assets/mark_zkfqlh.jpg',
              route: Flurorouter.marketingRoute,
              
                  
            ),
            SizedBox(width: (wSize(context) <= 310) ? 10 : 60),
          ],
        ),
      ),
    );
  }
}

// 'Te diseñamos tu imagen corporativa y te gestionamos tus redes sociales, creando contenido de calidad y aumentando tu reputación.',
// 'Te construimos una página web a medida, responsiva, optimizada para SEO, segura y fácil de usar. Podrás tener el tipo de web que necesites para tu negocio',
// 'Te planificamos una estrategia efectiva, que te permita atraer, convertir y fidelizar a tus clientes. Te ayudamos a crear y ejecutar campañas de publicidad online.',

class Servicio extends StatefulWidget {
  final String img;
  final String title;
  final String route;
  const Servicio(
      {super.key,
      required this.img,
      required this.title,
      required this.route});

  @override
  State<Servicio> createState() => _ServicioState();
}

bool hover = false;

class _ServicioState extends State<Servicio> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => NavigatorService.navigateTo(context, widget.route),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 240,
                height: 240,
                child: Image.network(
                  widget.img,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                child: Container(
                    width: 241,
                    height: 241,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: bgColor.withOpacity(0.7))),
              ),
              // if (!hover)
              Positioned(
                // bottom: 20,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  width: 240,
                  child: TextRenderer(
                    text: widget.title,
                    style: TextRendererStyle.header1,
                    child: Text(
                      widget.title,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: text22Title(context).copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
