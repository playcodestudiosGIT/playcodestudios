import 'package:flutter/material.dart';
import 'package:playcodestudios/widgets/refuerzo_cta.dart';
import 'package:playcodestudios/widgets/testimonios.dart';

import '../constants.dart';

class TestimoniosSection extends StatelessWidget {
  const TestimoniosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
            width: wSize(context),
            height: 700,
            child: Image.network(
              'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702237609/assets/Planet_1_zhh3n4.jpg',
              fit: BoxFit.fitHeight,
            )),
        Container(
          alignment: Alignment.center,
          width: wSize(context),
          height: 700,
          color: bgColor.withOpacity(0.7),
        ),
        // ignore: prefer_const_constructors
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            RefuerzoCTA(
              title: 'EN PLAYCODE STUDIOS',
              content:
                  'las historias no solo se crean, se viven. Deja que aquellos que han vivido la experiencia te cuenten cómo transformamos ideas en realidades palpables.',
              route: '',
            ),
            Testimonios(),
            // SizedBox(height: 30)
          ],
        ),
      ],
    );
  }
}
