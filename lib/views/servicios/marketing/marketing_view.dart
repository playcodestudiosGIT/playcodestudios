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
                      'La optimización de motores de búsqueda es una parte esencial del desarrollo de sitios web y del marketing web. Un sitio web compatible con SEO automáticamente tendrá una clasificación más alta en los resultados de búsqueda obtenidos de motores de búsqueda populares como Google, Yahoo y Bing. Como consecuencia, esto afectará significativamente el tráfico del sitio web. Es vital hacer que su sitio web sea compatible con SEO para mejorar su visibilidad en Internet, su imagen de marca y su tráfico.',
                ),
                MicroServiceItem(
                  img:
                      'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702088893/assets/ppc-solutions_gzuzht.jpg',
                  title: 'Soluciones PPC',
                  tipo: AllServices.marketingPPC,
                  textContent:
                      'A los usuarios ávidos de la web como usted les encanta buscar y solo buscan una cosa: información. En el proceso de búsqueda de información, te habrás topado con lo que se conoce como listado patrocinado.\n\nSe trata de un anuncio relevante (normalmente un anuncio de texto) con un enlace a una página de destino que se muestra cuando escribe una frase específica en el motor de búsqueda. Se cobra una tarifa por cada clic en cada enlace, siendo la cantidad ofertada por el clic el factor principal que determina su posición. El método para lograr la ubicación en esta parte de la página de enlaces patrocinados se llama búsqueda paga (también conocida como "pago por clic" o PPC).',
                ),
                MicroServiceItem(
                  img:
                      'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702088893/assets/social-media-marketing_fdq4cl.jpg',
                  title: 'Redes Sociales',
                  tipo: AllServices.marketingRRSS,
                  textContent:
                      'Los sitios sociales se han convertido en el centro para que las empresas establezcan relaciones que permitan llegar a los clientes previstos, y también de manera amistosa. En palabras simples, el marketing que utiliza los recursos de las redes sociales es una plataforma idílica para captar la atención.\n\nUn significativo 85% de todos los especialistas en marketing indicaron que sus esfuerzos en las redes sociales han generado exposición para sus negocios. Otros consideraron la mejora del tráfico como otro beneficio importante, lo que llevó a la conclusión de que el marketing en redes sociales llegó para quedarse durante mucho tiempo. ¡Y eso probablemente nos dé razones para desarrollarlo para usted!',
                ),
                MicroServiceItem(
                  img:
                      'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702309819/assets/content_ghg6ui.jpg',
                  title: 'Marketing de contenido',
                  tipo: AllServices.marketingContenido,
                  textContent:
                      'Al crear contenido convincente, valioso y atractivo, puede llevar su negocio al siguiente nivel. Diseñar una estrategia de contenido eficaz es todo lo que se necesita para mejorar la visibilidad y la promoción de la marca.\n\nUna estrategia de contenido atractiva es nuestro lema. Desde la preparación de un plan de juego hasta la producción de contenido, desde la publicación hasta la distribución y promoción, los servicios de marketing de contenido líderes en la industria de Playcode están diseñados para lograr sus objetivos comerciales. Impulse su negocio con contenido 100 % original, potente y atractivo para su sitio web, campañas de correo electrónico y plataformas de redes sociales.',
                ),
              ],
            ),
            const SizedBox(height: 15),
            const TitleSection(
                title:
                    'Convierte Más Leads. Genera Más Ingresos. Construye Tu Marca.',
                content:
                    'Si tienes una visión clara de tu negocio pero necesitas un vehículo para articular tu marca y tu mensaje, Playcode puede ayudarte a desarrollar una estrategia de marketing exitosa que convierta más leads, genere más ventas y mejore tu alcance. Lleva tu negocio donde quieras y conecta con tus clientes a través de la tecnología digital y múltiples plataformas online.'),
            
            const SizedBox(height: 20),
            RefuerzoCTA(
              textButton: 'Solicitar una consulta gratuita',
              content:
                  'En Playcode Studios, nos dedicamos exclusivamente a cada cliente, ofreciéndole una atención personalizada, un trato cercano y una entrega puntual. Nos apasiona nuestro trabajo y creemos en el poder de la creatividad y la innovación para transformar el mundo. Si quieres impulsar tu marca en el mundo online, no dudes en contactarnos. Te ofrecemos una primera consulta gratuita y un presupuesto sin compromiso. ¡Te esperamos!',
              title: 'Agenda una consulta', route: Flurorouter.contactoRoute,
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
