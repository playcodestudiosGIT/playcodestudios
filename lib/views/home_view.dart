import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';
import 'package:playcodestudios/routes/router.dart';
import 'package:playcodestudios/widgets/header_interactive.dart';
import 'package:playcodestudios/widgets/logos_section.dart';
import 'package:playcodestudios/widgets/testimonios_section.dart';
import 'package:playcodestudios/widgets/title_section.dart';

import '../widgets/carrousel_work.dart';
import '../widgets/refuerzo_cta.dart';
import '../widgets/servicios_section.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeaderInteractive(
            url:
                'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702235083/assets/dftpnk_rfmyfm.jpg',
          ),
          const _ServiciosTrabajosSection(),
          const SizedBox(height: 60),
          RefuerzoCTA(
            title: 'TIENES UN PROYECTO EN MENTE?',
            content:
                'Queremos conocer tus necesidades, tus objetivos y tus expectativas, para poder ofrecerte una solución personalizada y adaptada a tu negocio.',
            textButton: 'Solicitar consulta.',
            route: Flurorouter.contactoRoute,
          ),
          const SizedBox(height: 60),
          const TestimoniosSection(),
          const LogosSection(),
          const SizedBox(
            height: 50,
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
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: ( wSize(context)<440 ) ? 940 : 900 ),
      // height: 930,
      // constraints: BoxConstraints.expand(width: wSize(context), height: 1100),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
              width: wSize(context),
              height: double.infinity,
              child: const Image(
                image: NetworkImage(
                    'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702238069/assets/bgciber_awkzaj.png'),
                fit: BoxFit.fitHeight,
              )
              ),
          Container(
            width: wSize(context),
            height: double.infinity,
            color: bgColor.withOpacity(0.8),
          ),
          const Column(
            children: [
              SizedBox(height: 50),
              TitleSection(title: 'SERVICIOS QUE HARAN TU VIDA MUCHO MAS FÁCIL', content: ''),
              ServiciosSection(),
              TitleSection(title: 'ALGUNOS DE NUESTROS TRABAJOS', content: ''),
              CarrouselWorks(),
              SizedBox(height: 30)
            ],
          ),
        ],
      ),
    );
  }
}
