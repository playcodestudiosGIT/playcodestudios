import 'package:flutter/material.dart';
import '../routes/router.dart';

import '../widgets/servicio_card.dart';

enum AllServices {
  consultaService,
  disenoWeb,
  disenoBrand,
  disenoUi,
  disenoGrafico,
  disenoApp,
  devWeb,
  devApps,
  devSys,
  marketingSeo,
  marketingPPC,
  marketingRRSS,
  marketingContenido,
  fotoVideo
}

class ServiciosProvider extends ChangeNotifier {
  List<ServicioCard> servicios = [
    ServicioCard(
      title: 'DISEÑO Y REDES SOCIALES',
      img:
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1701716006/assets/rrss_rftxsb.jpg',
      route: Flurorouter.disenoRoute,
    ),
    ServicioCard(
      title: 'DESARROLLO WEB, APPS Y SISTEMAS',
      img:
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1701718273/assets/devweb_klktka.png',
      route: Flurorouter.webDevRoute,
    ),
    ServicioCard(
      title: 'MARKETING ESTRATÉGICO',
      img:
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1701718607/assets/mark_zkfqlh.jpg',
      route: Flurorouter.marketingRoute,
    ),
  ];
}
