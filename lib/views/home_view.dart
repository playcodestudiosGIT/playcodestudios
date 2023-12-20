import 'package:flutter/material.dart';
import 'package:playcodestudios/routes/router.dart';
import 'package:playcodestudios/widgets/carrousel_services.dart';
import 'package:playcodestudios/widgets/header_interactive.dart';
import 'package:playcodestudios/widgets/logos_section.dart';
import 'package:playcodestudios/widgets/testimonios_section.dart';
import 'package:playcodestudios/widgets/title_section.dart';

import '../widgets/carrousel_work.dart';
import '../widgets/refuerzo_cta.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final headerImgUrl =
      'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702235083/assets/dftpnk_rfmyfm.jpg';
  final String reforceCTAContent =
      'Queremos conocer tus necesidades, tus objetivos y tus expectativas, para poder ofrecerte una solución personalizada y adaptada a tu negocio.';
  final String reforceCTATitle = 'TIENES UN PROYECTO EN MENTE?';
  final String reforceCTAButton = 'Solicitar consulta.';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderInteractive(
            url: headerImgUrl,
          ),
          const _ServiciosTrabajosSection(),
          const SizedBox(height: 30),
          RefuerzoCTA(
            title: reforceCTATitle,
            content: reforceCTAContent,
            textButton: reforceCTAButton,
            route: Flurorouter.contactoRoute,
          ),
          const SizedBox(height: 60),
          const TestimoniosSection(),
          const SizedBox(height: 60),
          const LogosSection(),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class _ServiciosTrabajosSection extends StatelessWidget {
  const _ServiciosTrabajosSection();

  @override
  Widget build(BuildContext context) {
    const String serviceTitle = 'SERVICIOS QUE HARAN TU VIDA MUCHO MAS FÁCIL';
    const String jobTitle = 'ALGUNOS DE NUESTROS TRABAJOS';
    return const Column(
      children: [
        SizedBox(height: 50),
        TitleSection(title: serviceTitle, content: ''),
        CarrouselServices(),
        TitleSection(title: jobTitle, content: ''),
        CarrouselWorks(),
        SizedBox(height: 30)
      ],
    );
  }
}
