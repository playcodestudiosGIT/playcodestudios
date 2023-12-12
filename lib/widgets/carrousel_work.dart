import 'package:flutter/material.dart';
import 'package:playcodestudios/providers/trabajos_provider.dart';
import 'package:playcodestudios/widgets/work_card.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class CarrouselWorks extends StatelessWidget {
  const CarrouselWorks({super.key});

  @override
  Widget build(BuildContext context) {
    final trabajos = Provider.of<TrabajosProvider>(context).list;
    return Container(
      // padding: const EdgeInsets.only(bottom: 60),
      alignment: Alignment.center,
      width: wSize(context),
      // height: 350,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: (wSize(context) <= 390) ? 10 : 60),
            ...trabajos.map((e) => WorkCard(trabajo: e)).toList(),
            SizedBox(width: (wSize(context) <= 390) ? 10 : 60),
          ],
        ),
      ),
    );
  }
}
