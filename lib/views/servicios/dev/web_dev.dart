import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';
import 'package:playcodestudios/providers/servicios_provider.dart';
import 'package:playcodestudios/routes/router.dart';
import 'package:playcodestudios/widgets/carrousel_work.dart';
import '../../../widgets/header_view.dart';
import '../../../widgets/logos_section.dart';
import '../../../widgets/micro_service_item.dart';
import '../../../widgets/refuerzo_cta.dart';
import '../../../widgets/slider_services.dart';
import '../../../widgets/title_section.dart';

class WebDevView extends StatelessWidget {
  const WebDevView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: wSize(context),
      height: hSize(context),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeaderView(
                bgImg: 'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1701718273/assets/devweb_klktka.png',
                smallTitle: 'Servicios de',
                bigTitle: 'DESARROLLO WEB / APPS Y SISTEMAS',
                tipo: AllServices.devWeb,
                // content:
                //     'Tu viaje de marketing digital comienza con un sitio web poderoso que refleja tu marca y magnifica tu mensaje. Una vez que construyes y publicas tu sitio web, necesitas optimizarlo con análisis continuos y contenido fresco. Sin embargo, puede que no tengas el tiempo o la experiencia para crear y gestionar un sitio web que aumente tu visibilidad y tus tasas de conversión. Aquí es donde entramos nosotros.',
                route: Flurorouter.homeRoute,
                buttonText: 'COTIZAR SERVICIO'),
            const SizedBox(height: 60),
            const TitleSection(
                title: 'Desarrollo de Soluciones Tecnológicas a tu Medida',
                content:
                    'En Playcode Studios, somos expertos en desarrollar soluciones tecnológicas a tu medida, que te ayuden a optimizar tus procesos, mejorar tu productividad y aumentar tu competitividad. Ofrecemos tres tipos de servicios de desarrollo que se adaptan a tus necesidades y expectativas:'),
            const SizedBox(height: 60),
            const SliderServices(
              tags: [
                'Desarrollo web',
                'Desarrollo de Apps',
                'Desarrollo de Sistemas',
              ],
              microservices: [
                MicroServiceItem(
                  img:
                      'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702309819/assets/webdev_ajszx9.jpg',
                  title: 'Desarrollo Web',
                  tipo: AllServices.devWeb,
                  textContent:
                      'Creamos sitios web que comunican el mensaje, la identidad y el valor de tu marca, utilizando elementos visuales que sorprenden y enamoran a tu público. Nuestros sitios web son intuitivos, responsivos, seguros y escalables, y cumplen con los principios de diseño web.',
                ),
                MicroServiceItem(
                  img:
                      'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702309819/assets/sistems_mglemc.jpg',
                  title: 'Desarrollo de Apps',
                  tipo: AllServices.devApps,
                  textContent:
                      'Creamos aplicaciones móviles que te permiten ofrecer una experiencia de usuario única, innovadora y diferenciada a tus clientes. Nuestras aplicaciones móviles son nativas, híbridas o web, dependiendo de tus objetivos y presupuesto. Nuestras aplicaciones móviles son intuitivas, responsivas, seguras y escalables, y funcionan en diferentes plataformas, como Android, iOS o Windows',
                ),
                MicroServiceItem(
                  img:
                      'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702310669/assets/dev_dbdhlp.jpg',
                  title: 'Desarrollo de Sistemas',
                  tipo: AllServices.devSys,
                  textContent:
                      'Creamos sistemas personalizados que te permiten automatizar, integrar y gestionar tus procesos de negocio, utilizando las tecnologías más avanzadas y adecuadas para tu caso. Nuestros sistemas personalizados son flexibles, modulares, robustos y eficientes, y se adaptan a los cambios y necesidades de tu negocio.',
                ),
              ],
            ),
            
            const SizedBox(height: 20),
            RefuerzoCTA(
              textButton: 'Solicitar una consulta gratuita',
              content:
                  'En Playcode Studios, brindamos atención personalizada y entregas puntuales. Nos apasiona la creatividad y la innovación para transformar el mundo. Contáctanos para soluciones tecnológicas a medida, con consulta gratuita y presupuesto sin compromiso. ¡Descubre lo que podemos lograr juntos!',
              title: 'AGENDA UNA CONSULTA', route: Flurorouter.contactoRoute,
            ),
            const SizedBox(height: 60),
            const TitleSection(
                title: 'Algunos de nuestros trabajos', content: ''),
            const CarrouselWorks(),
            const SizedBox(height: 60),
            const LogosSection(),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}


