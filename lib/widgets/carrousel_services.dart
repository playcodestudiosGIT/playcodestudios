import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:playcodestudios/widgets/servicio_card.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../providers/servicios_provider.dart';

class CarrouselServices extends StatelessWidget {
  const CarrouselServices({super.key});

  @override
  Widget build(BuildContext context) {
    final servicios = Provider.of<ServiciosProvider>(context, listen: false).servicios;
    final wSize = MediaQuery.of(context).size.width;

    double viewportFraction = 0.9;


    if ( wSize >= 500 && wSize <= 800) {
      viewportFraction = 0.5;
    }
    if ( wSize > 800 ) {
      viewportFraction = 0.3;
    }

    return SizedBox(
      width: wSize,
      height: 300,
      child: Swiper(
        loop: false,
        viewportFraction: viewportFraction,
        scrollDirection: Axis.horizontal,
        itemCount: servicios.length,
        pagination: const SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                    activeColor: primaryColor, color: secondaryColor)),
        itemBuilder: (context, index) {
          final ServicioCard servicio = servicios[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: servicio,
          );
        },
      ),
    );
  }
}
