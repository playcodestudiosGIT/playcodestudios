import 'package:flutter/material.dart';

import '../constants.dart';

class Testimonios extends StatelessWidget {
  const Testimonios({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: (wSize(context) <= 350) ? 20 : 40),
            const Testimonio(
              img:
                  'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1701728893/assets/JP_anrrb1.png',
              name: 'Jorge Pérez',
              job: 'CEO Jp Director',
              testimonio:
                  '"Playcode Studios es una empresa que ofrece un servicio de desarrollo web, diseño y marketing digital de primera calidad. Su equipo es profesional, creativo y eficiente. Me ayudaron a crear una página web para mi negocio que superó mis expectativas. Estoy muy satisfecho con el resultado y lo recomiendo al 100%"',
            ),
            const SizedBox(width: 30),
            const Testimonio(
              img:
                  'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1701811172/assets/mcp_lb65uu.jpg',
              name: 'Marco Pirrongelli',
              job: 'CEO Moonable',
              testimonio:
                  '“Playcode Studios es una empresa que se distingue por su profesionalismo y su calidad de trabajo. Me desarrollaron un sistema de monitoreo para transacciones que me permite estar al tanto de los riesgos del mercado. me entregaron un sistema seguro, rápido y fácil de usar. Estoy muy contento con su servicio y lo recomiendo ampliamente.”',
            ),
            const SizedBox(width: 30),
            const Testimonio(
              img:
                  'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1702404152/assets/AndryT_auaszj.jpg',
              name: 'Andry Torres',
              job: 'CEO de Filker',
              testimonio:
                  '"Playcode Studios ha sido esencial en el desarrollo de Filker, nuestro sistema de inteligencia artificial. Su profesionalismo y experiencia aseguran que mis ideas se plasmen de manera efectiva en la web. Playcode Studios no solo materializa mis visiones, sino que las eleva a un nivel superior, convirtiéndose en nuestro socio tecnológico clave."',
            ),
            SizedBox(width: (wSize(context) <= 350) ? 20 : 40),
          ],
        ),
      ),
    );
  }
}

class Testimonio extends StatelessWidget {
  final String name;
  final String job;
  final String img;
  final String testimonio;
  const Testimonio(
      {super.key,
      required this.name,
      required this.img,
      required this.testimonio, required this.job});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 280,
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(img),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: text22Title(context).copyWith(fontStyle: FontStyle.italic),
          ),
          Text(
            job,
            textAlign: TextAlign.center,
            style: text22Title(context).copyWith(fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 10),
          Text(
            testimonio,
            textAlign: TextAlign.center,
            style: text14BodyMOp(context).copyWith(fontStyle: FontStyle.italic),
          ),
          
        ],
      ),
    );
  }
}




