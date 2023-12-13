import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';
import 'package:playcodestudios/providers/servicios_provider.dart';
import 'package:playcodestudios/routes/router.dart';
import 'package:playcodestudios/widgets/carrousel_work.dart';
import 'package:playcodestudios/widgets/slider_services.dart';
import '../../../widgets/header_view.dart';
import '../../../widgets/logos_section.dart';
import '../../../widgets/micro_service_item.dart';
import '../../../widgets/refuerzo_cta.dart';
import '../../../widgets/title_section.dart';

class MarketingView extends StatelessWidget {
  const MarketingView({super.key});

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
                    'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1701718607/assets/mark_zkfqlh.jpg',
                smallTitle: 'Servicios de',
                bigTitle: 'MARKETING DIGITAL',
                tipo: AllServices.marketingRRSS,
                // content:
                //     'En el mercado actual, tan competitivo, necesitas soluciones de negocio que posicionen tu empresa a la vanguardia de tu industria y que conecten con tu audiencia de una manera auténtica y convincente. Si bien el marketing tradicional todavía funciona en algunos sectores, solo a través del marketing digital puedes obtener una posición sólida y superar a tus competidores.',
                route: Flurorouter.homeRoute,
                buttonText: 'COTIZAR SERVICIO'),
            const SizedBox(height: 60),
            const TitleSection(
                title: 'Impulsa tu Marca en el Mundo Online',
                content:
                    'En Playcode Studios, somos expertos en crear estrategias de marketing digital que impulsen tu marca en el mundo online. Ofrecemos cuatro tipos de servicios de marketing que se adaptan a tus necesidades y expectativas:'),
            
            const SizedBox(height: 60),
            const SliderServices(
              tags: [
                'SEO',
                'Soluciones PPC',
                'Redes Sociales',
                'Marketing de contenido',
              ],
              microservices: [
                MicroServiceItem(
                  img:
                      'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702088893/assets/services-front4_aa68ta.jpg',
                  title: 'SEO',
                  tipo: AllServices.marketingSeo,
                  textContent:
                      'En Playcode Studios, comprendemos la importancia vital de optimizar motores de búsqueda para el desarrollo web y marketing online. Garantizamos que tu sitio web sea SEO-friendly, elevando su visibilidad en Google, Yahoo y Bing, y mejorando su clasificación para aumentar el tráfico. Especializados en potenciar tu presencia en línea, fortalecer tu imagen de marca y lograr resultados notables. Conéctate con nosotros para impulsar tu presencia en Internet de manera impactante.',
                ),
                MicroServiceItem(
                  img:
                      'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702088893/assets/ppc-solutions_gzuzht.jpg',
                  title: 'Soluciones PPC',
                  tipo: AllServices.marketingPPC,
                  textContent:
                      'En Playcode Studios, entendemos la importancia de los listados patrocinados en la búsqueda web. Son anuncios relevantes que aparecen al buscar frases específicas, utilizando el modelo de pago por clic (PPC). Desarrollamos estrategias efectivas en búsqueda paga para posicionar tu contenido y maximizar resultados. Conéctate con nosotros para potenciar tu presencia en línea de manera eficiente.',
                ),
                MicroServiceItem(
                  img:
                      'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702088893/assets/social-media-marketing_fdq4cl.jpg',
                  title: 'Redes Sociales',
                  tipo: AllServices.marketingRRSS,
                  textContent:
                      'En Playcode Studios, valoramos la importancia de las redes sociales para establecer relaciones efectivas con los clientes. El marketing en redes sociales es una plataforma ideal para atraer la atención y generar exposición, con un 85% de especialistas en marketing experimentando beneficios significativos. Desarrollamos estrategias para que su presencia en redes sociales impulse su negocio a largo plazo. Conéctate con nosotros para maximizar los beneficios de las redes sociales.',
                ),
                MicroServiceItem(
                  img:
                      'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702309819/assets/content_ghg6ui.jpg',
                  title: 'Marketing de contenido',
                  tipo: AllServices.marketingContenido,
                  textContent:
                      'En Playcode Studios, entendemos el poder del contenido para llevar tu negocio al siguiente nivel. Creamos estrategias de contenido atractivas que potencian la visibilidad y promoción de tu marca. Desde la planificación hasta la distribución, nuestros servicios de marketing de contenido están diseñados para alcanzar tus objetivos comerciales. Impulsa tu negocio con contenido 100 % original y cautivador. Conéctate con nosotros para destacar en la era digital y lograr resultados impactantes.',
                ),
              ],
            ),
            const SizedBox(height: 60),
            const TitleSection(
                title:
                    'Convierte Más Leads. Genera Más Ingresos. Construye Tu Marca.',
                content:
                    'Si tienes una visión clara de tu negocio pero necesitas un vehículo para articular tu marca y tu mensaje, Playcode puede ayudarte a desarrollar una estrategia de marketing exitosa que convierta más leads, genere más ventas y mejore tu alcance. Lleva tu negocio donde quieras y conecta con tus clientes a través de la tecnología digital y múltiples plataformas online.'),
            
            const SizedBox(height: 60),
            RefuerzoCTA(
              textButton: 'Solicitar una consulta gratuita',
              content:
                  'En Playcode Studios, nos dedicamos exclusivamente a cada cliente, ofreciéndole una atención personalizada, un trato cercano y una entrega puntual. Nos apasiona nuestro trabajo y creemos en el poder de la creatividad y la innovación para transformar el mundo. Si quieres impulsar tu marca en el mundo online, no dudes en contactarnos. Te ofrecemos una primera consulta gratuita y un presupuesto sin compromiso. ¡Te esperamos!',
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
