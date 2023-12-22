import 'package:flutter/material.dart';
import '../models/trabajo.dart';

enum JobFilters {
  all,
  diseno,
  rrss,
  webdev,
  marketing,
  webDesign,
  branding,
  uiux,
  appdesign,
  appDev,
  wevDev,
  sysDev,
  seoMarketing,
  ppcMarketing,
  contentMarketing,
  video,
  animacion,
  reel
}

class TrabajosProvider extends ChangeNotifier {
  List<Trabajo> _allList = [
    Trabajo(
        title: 'E Fashion Week Promo',
        video: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1703185388/trabajos/efw_nc43cp.mp4',
        tags: [JobFilters.branding],
        urlLaunch: '',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703220082/trabajos/e0_jxeg6c.png',
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703219813/trabajos/e_etraao.png',
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703219878/trabajos/e2_ylzaw9.png',
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703220084/trabajos/e4_upvquz.png',
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703219979/trabajos/e3_hdsawz.png',
        ],
        description:
            'Enim sunt pariatur ut ea aliqua. Duis ex enim laboris sint excepteur veniam ullamco sint mollit reprehenderit nisi ea. Reprehenderit cillum non commodo quis enim occaecat et do sint Lorem adipisicing duis dolore do.',
        shortDescription:
            'Aplicacion web, sistema LMS y venta de cursos online'),
    Trabajo(
        title: 'Gaia10',
        video: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1703185082/trabajos/gaia_c03uud.mp4',
        tags: [JobFilters.branding],
        urlLaunch: '',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703221321/trabajos/gaia10_fssled.png'
        ],
        description:
            'Enim sunt pariatur ut ea aliqua. Duis ex enim laboris sint excepteur veniam ullamco sint mollit reprehenderit nisi ea. Reprehenderit cillum non commodo quis enim occaecat et do sint Lorem adipisicing duis dolore do.',
        shortDescription:
            'Animación de logo, loop para pantallas'),
    Trabajo(
        title: 'Revista Aguapanela',
        video: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1703185073/trabajos/aguapanela_dhw932.mp4',
        tags: [JobFilters.branding],
        urlLaunch: '',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703220406/trabajos/aguapanela_v75wvx.png'
        ],
        description:
            'Enim sunt pariatur ut ea aliqua. Duis ex enim laboris sint excepteur veniam ullamco sint mollit reprehenderit nisi ea. Reprehenderit cillum non commodo quis enim occaecat et do sint Lorem adipisicing duis dolore do.',
        shortDescription:
            'Animación de logo, loop para pantallas'),
    Trabajo(
        title: 'Acelerador TV',
        video: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1703185389/trabajos/acelerador_ccsnvw.mp4',
        tags: [JobFilters.branding],
        urlLaunch: '',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703221111/trabajos/acelerador_o8kmj3.png',
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703221112/trabajos/acelerador2_wegp7o.png',
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703221112/trabajos/acelerador3_ggwfd3.png'
        ],
        description:
            'Enim sunt pariatur ut ea aliqua. Duis ex enim laboris sint excepteur veniam ullamco sint mollit reprehenderit nisi ea. Reprehenderit cillum non commodo quis enim occaecat et do sint Lorem adipisicing duis dolore do.',
        shortDescription:
            'Animación de logo, loop para pantallas'),
    Trabajo(
        title: 'EasyYes.com',
        video: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1703185370/trabajos/easyyes_dz1r67.mp4',
        tags: [JobFilters.branding],
        urlLaunch: '',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703220537/trabajos/easyyes_ffpfdz.png'
        ],
        description:
            'Enim sunt pariatur ut ea aliqua. Duis ex enim laboris sint excepteur veniam ullamco sint mollit reprehenderit nisi ea. Reprehenderit cillum non commodo quis enim occaecat et do sint Lorem adipisicing duis dolore do.',
        shortDescription:
            'Animación de logo, loop para pantallas'),
    Trabajo(
        title: 'Playcode',
        tags: [
          JobFilters.branding,
          JobFilters.diseno,
          JobFilters.webDesign,
          JobFilters.webdev
        ],
        urlLaunch: 'https://www.playcodestudios.com',
        video: '',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699638169/assets/playcode_nyg6gy.png'
        ],
        description:
            'In eu nulla sunt esse ea ut. Sunt dolor excepteur qui eiusmod velit enim pariatur aute. Eiusmod ea voluptate sint ex sunt velit velit sint et esse nulla velit elit dolore. Eu nisi deserunt magna enim sint id sunt enim ad fugiat eu. Deserunt sint duis duis do. Pariatur aute aliquip ullamco eiusmod irure ad exercitation nisi quis laboris mollit sint enim.',
        shortDescription: 'Identidad gráfica y Desarrollo web - en expanción'),
    Trabajo(
        title: 'IDN Reel 2010',
        tags: [
          JobFilters.branding,
          JobFilters.diseno,
          JobFilters.reel,
          JobFilters.video
        ],
        urlLaunch: '',
        video:
            'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1699382519/trabajos/IDN_INTRO_rfekcb.mp4',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699383052/trabajos/superstudio_zrda5w.png'
        ],
        description:
            'Amet reprehenderit ex proident non adipisicing proident tempor cupidatat cupidatat sit. Est reprehenderit nisi amet excepteur. Ullamco reprehenderit velit ad excepteur velit anim sunt in deserunt ipsum. Eu nisi laboris quis adipisicing tempor. Ea dolore enim do non ullamco est dolor exercitation proident do non. Labore officia commodo ullamco consectetur sit non ut.',
        shortDescription: 'Colaboración Estudio IDN Argentina en el año 2010'),
    Trabajo(
        title: 'Tormenta Creativa',
        video: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1699382512/trabajos/logo_spot_vtsf8q.mp4',
        tags: [JobFilters.branding],
        urlLaunch: '',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703220813/trabajos/tormenta_creativa_rpwptw.png'
        ],
        description:
            'Enim sunt pariatur ut ea aliqua. Duis ex enim laboris sint excepteur veniam ullamco sint mollit reprehenderit nisi ea. Reprehenderit cillum non commodo quis enim occaecat et do sint Lorem adipisicing duis dolore do.',
        shortDescription:
            'Animación de logo, loop para pantallas'),
    Trabajo(
        title: 'Sonata del Pajarillo',
        tags: [JobFilters.video, JobFilters.branding, JobFilters.reel],
        urlLaunch: '',
        video:
            'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1699382478/trabajos/Sonata_del_Pajarillo_Trailer_imloob.mp4',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699383633/trabajos/sonata_del_pajarillo_pig6fr.png'
        ],
        description:
            'Laboris adipisicing duis labore velit. Tempor occaecat mollit eu esse aliqua sunt. Et ut sunt aute qui ex irure dolore laboris cupidatat consequat consectetur aliqua.',
        shortDescription:
            'Producción cinematográfica en colaboración con La Villa del Cine, Centro Nacional Autónomo de Cine'),
    Trabajo(
        title: 'TYC TV',
        tags: [JobFilters.branding],
        urlLaunch: '',
        video:
            'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1699382507/trabajos/tyc_yqglko.mp4',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699383934/trabajos/tyc_d0ldah.png'
        ],
        description:
            'Reprehenderit consectetur eu culpa eiusmod sint aliquip elit qui elit in duis fugiat sint. Ex sit laboris enim elit eu mollit do adipisicing irure ipsum veniam. Enim enim fugiat reprehenderit aliquip nulla eu duis voluptate officia consequat consectetur aliquip est est. Id cillum consequat magna veniam.',
        shortDescription:
            'Identidad visual animada para Transmisiones en vivo'),
    Trabajo(
        title: 'Chile Vision Noticiero',
        tags: [JobFilters.video],
        urlLaunch: '',
        video:
            'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1699382542/trabajos/ID_NOTICIERO_CHILEVISION_kzm9wb.mp4',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699384188/trabajos/chv_yy4kb8.png'
        ],
        description: 'Identidad visual animada para Transmisiones en vivo',
        shortDescription:
            'Identidad visual animada para Transmisiones en vivo'),
    Trabajo(
        title: 'JP Director',
        video: '',
        tags: [JobFilters.branding],
        urlLaunch: 'https://www.jpdirector.net',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699387311/trabajos/jphome_ozhcg5.png'
        ],
        description:
            'Enim sunt pariatur ut ea aliqua. Duis ex enim laboris sint excepteur veniam ullamco sint mollit reprehenderit nisi ea. Reprehenderit cillum non commodo quis enim occaecat et do sint Lorem adipisicing duis dolore do.',
        shortDescription:
            'Aplicacion web, sistema LMS y venta de cursos online'),
  ];

  List<Trabajo> _listCarrousel = [];
  JobFilters _currentFilter = JobFilters.all;

  TrabajosProvider() {
    _listCarrousel = _allList;
  }

  JobFilters get currentFilter => _currentFilter;
  set currentFilter(JobFilters value) {
    _currentFilter = value;
    notifyListeners();
  }

  List<Trabajo> get list => _allList;

  set list(List<Trabajo> value) {
    _allList = value;
    notifyListeners();
  }

  List<Trabajo> get listCarrousel => _listCarrousel;

  set listCarrousel(List<Trabajo> value) {
    listCarrousel = value;
    notifyListeners();
  }

  set brandingFilter(JobFilters filter) {
    currentFilter = filter;
    if (filter == JobFilters.all) {
      _listCarrousel = _allList;
    } else {
      _listCarrousel =
          _allList.where((trabajo) => trabajo.tags.contains(filter)).toList();
    }

    notifyListeners();
  }
}
