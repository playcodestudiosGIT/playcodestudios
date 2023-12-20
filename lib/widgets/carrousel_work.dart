import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';
import 'package:playcodestudios/providers/trabajos_provider.dart';
import 'package:playcodestudios/widgets/job_card.dart';
import 'package:provider/provider.dart';

class CarrouselWorks extends StatelessWidget {
  const CarrouselWorks({super.key});

  @override
  Widget build(BuildContext context) {
    final trabajos = Provider.of<TrabajosProvider>(context).list;
    final wSize = MediaQuery.of(context).size.width;

    double viewportFraction = 0.9;
    double scaleResalted = 0.3;

    if ( wSize >= 500 && wSize <= 800) {
      viewportFraction = 0.5;
      scaleResalted = 0.7;
    }
    if ( wSize > 800 ) {
      viewportFraction = 0.3;
      scaleResalted = 0.9;
    }


    return SizedBox(
      width: wSize,
      height: 450,
      child: Swiper(
        autoplay: true,
        autoplayDelay: 5000,
        viewportFraction: viewportFraction,
        itemWidth: 400,
        scale: scaleResalted,
        scrollDirection: Axis.horizontal,
        itemCount: trabajos.length,
        
        pagination: const SwiperPagination(
          
          builder: DotSwiperPaginationBuilder(activeColor: primaryColor, color: secondaryColor)),
        itemBuilder: (context, index) {
          final trabajo = trabajos[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: JobCard(trabajo: trabajo),
          );
        },
      ),
    );
  }
}
