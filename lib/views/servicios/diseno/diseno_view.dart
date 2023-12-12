import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';
import 'package:playcodestudios/providers/servicios_provider.dart';
import 'package:playcodestudios/routes/router.dart';
import 'package:playcodestudios/widgets/carrousel_work.dart';
import 'package:playcodestudios/widgets/logos_section.dart';
import 'package:playcodestudios/widgets/refuerzo_cta.dart';
import '../../../widgets/header_view.dart';
import '../../../widgets/micro_service_item.dart';
import '../../../widgets/slider_services.dart';
import '../../../widgets/title_section.dart';

class DisenoView extends StatelessWidget {
  const DisenoView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: wSize(context),
      height: hSize(context),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeaderView(
                bgImg:
                    'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1701716006/assets/rrss_rftxsb.jpg',
                smallTitle: 'Servicios de',
                bigTitle: 'DISEÑO Y SOCIAL MEDIA MANAGER',
                route: Flurorouter.homeRoute,
                tipo: AllServices.disenoBrand,
                buttonText: 'COTIZAR SERVICIO'),
            const SizedBox(height: 60),
            const TitleSection(
                title: 'Diseño Creativo y Personalizado para tu Marca',
                content:
                    'En Playcode Studios, somos expertos en crear soluciones de diseño creativo y personalizado para tu marca. Ofrecemos cinco tipos de servicios de diseño que se adaptan a tus necesidades y expectativas:'),
            const SizedBox(height: 60),
            const SliderServices(
              tags: [
                'Diseño web',
                'Logotipo e identidad',
                'Prototipos UI/UX',
                'Diseño gráfico',
                'Diseño de Apps'
              ],
              microservices: [
                MicroServiceItem(
                  img:
                      'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702080074/assets/webDesign_iqzvqs.jpg',
                  title: 'Diseño web.',
                  tipo: AllServices.disenoWeb,
                  textContent:
                      'Creamos sitios web que comunican el mensaje, la identidad y el valor de tu marca, utilizando elementos visuales que sorprenden y enamoran a tu público. Nuestros sitios web son intuitivos, responsivos, seguros y escalables, y cumplen con los principios de diseño web.',
                ),
                MicroServiceItem(
                  img:
                      'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702083014/assets/web-logo-design_znoxso.webp',
                  title: 'Logotipo e identidad.',
                  tipo: AllServices.disenoBrand,
                  textContent:
                      'Diseñamos logotipos e identidades visuales que representan la personalidad, la visión y el valor de tu marca, y que generan un impacto positivo y duradero en el mundo. Nuestros logotipos son originales, memorables y atractivos, y transmiten los valores y el mensaje de tu marca.',
                ),
                MicroServiceItem(
                  img:
                      'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702083130/assets/ui-ux-prototyping-image_zhgrup.jpg',
                  title: 'Prototipos UI/UX.',
                  tipo: AllServices.disenoUi,
                  textContent:
                      'Creamos prototipos interactivos que te permiten visualizar y probar el diseño de tu sitio web o aplicación antes de implementarlo. Nuestros prototipos son fáciles de usar, agradables de ver y funcionales de navegar, y te ayudan a mejorar la experiencia de usuario y la conversión de tu marca.',
                ),
                MicroServiceItem(
                  img:
                      'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702083329/assets/dg_kjvyzg.jpg',
                  title: 'Diseño gráfico.',
                  tipo: AllServices.disenoGrafico,
                  textContent:
                      'Creamos productos visuales que expresan la esencia de tu marca, como carteles, infografías, flyers, folletos, etc. Nuestros productos visuales son claros, coherentes y atractivos, y te ayudan a transmitir tu mensaje de forma efectiva.',
                ),
                MicroServiceItem(
                  img:
                      'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702083332/assets/appmob_iyvmvn.jpg',
                  title: 'Diseño de Apps',
                  tipo: AllServices.disenoApp,
                  textContent:
                      'Diseñamos aplicaciones móviles que se adaptan a las necesidades y expectativas de tus clientes. Nuestras aplicaciones son intuitivas, responsivas, seguras y escalables, y funcionan en diferentes plataformas, como Android, iOS o Windows. Nuestras aplicaciones son creativas, originales y divertidas, y te ayudan a conectar con tu público.',
                ),
              ],
            ),
            const SizedBox(height: 20),
            RefuerzoCTA(
              textButton: 'Solicitar una consulta gratuita',
              content:
                  'En Playcode Studios, nos dedicamos exclusivamente a cada cliente, ofreciéndole una atención personalizada, un trato cercano y una entrega puntual. Nos apasiona nuestro trabajo y creemos en el poder de la creatividad y la innovación para transformar el mundo. Si quieres crear o renovar tu imagen de marca, no dudes en contactarnos. Te ofrecemos una primera consulta gratuita y un presupuesto sin compromiso. ¡Te esperamos!',
              title: 'AGENDA UNA CONSULTA', route: Flurorouter.contactoRoute,
            ),
            const SizedBox(height: 60),
            const TitleSection(
                title: 'Algunos de nuestros trabajos', content: ''),
            const CarrouselWorks(),
            const LogosSection(),
            const SizedBox(height: 100)
          ],
        ),
      ),
    );
  }
}
