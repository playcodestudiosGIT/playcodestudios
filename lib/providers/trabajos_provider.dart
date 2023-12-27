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
        videoUrl: '',
        tags: [JobFilters.video, JobFilters.all, JobFilters.animacion],
        urlLaunch: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1703185388/trabajos/efw_nc43cp.mp4',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703220082/trabajos/e0_jxeg6c.png',
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703219813/trabajos/e_etraao.png',
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703219878/trabajos/e2_ylzaw9.png',
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703220084/trabajos/e4_upvquz.png',
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703219979/trabajos/e3_hdsawz.png',
        ],
        description:
            'Promocion parte de la campaña de E Entertainment Television para el E Fashion Week',
        shortDescription:
            'Promo de 30 segundos para medios de comunicación para E Enterteinment Television'),
    Trabajo(
        title: 'Gaia10',
        videoUrl: '',
        tags: [JobFilters.all, JobFilters.animacion, JobFilters.video],
        urlLaunch: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1703185082/trabajos/gaia_c03uud.mp4',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703221321/trabajos/gaia10_fssled.png'
        ],
        description:
            'Video corporativo introductorio a la marca. Fundación Gaia10',
        shortDescription:
            'Animación de Branding - Intro'),
    Trabajo(
        title: 'Revista Aguapanela',
        videoUrl: '',
        tags: [JobFilters.all, JobFilters.animacion, JobFilters.video],
        urlLaunch: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1703185073/trabajos/aguapanela_dhw932.mp4',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703220406/trabajos/aguapanela_v75wvx.png'
        ],
        description:
            'Video de animación de logotipo para pantallas gigantes tipo loop',
        shortDescription:
            'Animación de logo, loop para pantallas'),
    Trabajo(
        title: 'Acelerador TV',
        videoUrl: '',
        tags: [JobFilters.branding, JobFilters.all, JobFilters.animacion, JobFilters.video],
        urlLaunch: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1703185389/trabajos/acelerador_ccsnvw.mp4',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703221111/trabajos/acelerador_o8kmj3.png',
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703221112/trabajos/acelerador2_wegp7o.png',
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703221112/trabajos/acelerador3_ggwfd3.png'
        ],
        description:
            'Idenditdad Gráfica completa para Acelerador Tv transmitido por NexTV Panamá',
        shortDescription:
            'Identidad Gráfica para programa de televisión'),
    Trabajo(
        title: 'EasyYes.com',
        videoUrl: '',
        tags: [JobFilters.all, JobFilters.branding],
        urlLaunch: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1703185370/trabajos/easyyes_dz1r67.mp4',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703220537/trabajos/easyyes_ffpfdz.png'
        ],
        description:
            'Animación de logo para EasyYes.com',
        shortDescription:
            'Animación de logo, loop para pantallas'),
    Trabajo(
        title: 'Playcode Studios',
        tags: [
          JobFilters.all,
          JobFilters.branding,
          JobFilters.diseno,
          JobFilters.webDesign,
          JobFilters.webdev,
          JobFilters.uiux
        ],
        urlLaunch: 'https://www.playcodestudios.com',
        videoUrl: '',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699638169/assets/playcode_nyg6gy.png'
        ],
        description:
            'Desarrollo web para ofrecer servicios, aplicación Multiplataforma con dashboard de mantenimiento. Se usó Flutter, EpressJs, NodeJs y MongoDB',
        shortDescription: 'Identidad gráfica y Desarrollo web'),
    Trabajo(
        title: 'IDN Reel 2010',
        tags: [
          JobFilters.all,
          JobFilters.branding,
          JobFilters.diseno,
          JobFilters.reel,
          JobFilters.video
        ],
        urlLaunch: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1699382519/trabajos/IDN_INTRO_rfekcb.mp4',
        videoUrl: '',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699383052/trabajos/superstudio_zrda5w.png'
        ],
        description:
            'Colaboración con IDN Studio para realizar un reel animado en el año 2010',
        shortDescription: 'Colaboración Estudio IDN Argentina en el año 2010'),
    Trabajo(
        title: 'Hidraserca',
        videoUrl: '',
        tags: [JobFilters.all, JobFilters.wevDev, JobFilters.webDesign],
        urlLaunch: 'https://hidraserca.com.ve/',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703614162/trabajos/hidraserca1_gtaxhe.png',
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703614162/trabajos/hidraserca2_t0z3bb.png',
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703614161/trabajos/hidraserca3_bjyosw.png'
        ],
        description:
            'Desarrollo web tipo Ecommerce para Hidraserca, Se uso WordPress',
        shortDescription:
            'Desarrollo web tipo Ecommerce para Hidraserca, Se uso WordPress'),
    Trabajo(
        title: 'The Little Gym',
        videoUrl: '',
        tags: [JobFilters.all, JobFilters.wevDev, JobFilters.uiux],
        urlLaunch: 'https://thelittlegym.com.pa/#/',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703610478/trabajos/tlg_-_portada_et0rha.png',
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703610478/trabajos/tlg_footer_g7cfwn.png',
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703610479/trabajos/tlg_sec1_mf1hap.png'
        ],
        description:
            'Desarrollo de Landing Page para The Little Gym Panamá',
        shortDescription:
            'Desarrollo de Landing Page para The Little Gym Panamá'),
    Trabajo(
        title: 'Tormenta Creativa',
        videoUrl: '',
        tags: [JobFilters.all, JobFilters.branding, JobFilters.animacion],
        urlLaunch: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1699382512/trabajos/logo_spot_vtsf8q.mp4',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1703220813/trabajos/tormenta_creativa_rpwptw.png'
        ],
        description:
            'Diseño de branding y Animación de Logotipo',
        shortDescription:
            'Diseño de branding y Animación de Logotipo'),
    Trabajo(
        title: 'Sonata del Pajarillo',
        tags: [JobFilters.all, JobFilters.video, JobFilters.branding, JobFilters.reel, JobFilters.animacion],
        urlLaunch: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1699382478/trabajos/Sonata_del_Pajarillo_Trailer_imloob.mp4',
        videoUrl: '',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699383633/trabajos/sonata_del_pajarillo_pig6fr.png'
        ],
        description:
            'En colaboración con COFAV, Villa del Cine y el CNAC se realizo un largometraje de una Comedia Romámtica estrenada en 33 Salas de cine a nivel nacional - Venezuela.',
        shortDescription:
            'Producción cinematográfica en colaboración con COFAV, La Villa del Cine, Centro Nacional Autónomo de Cine'),
    Trabajo(
        title: 'TYC TV',
        tags: [JobFilters.all, JobFilters.branding, JobFilters.reel, JobFilters.video],
        urlLaunch: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1699382507/trabajos/tyc_yqglko.mp4',
        videoUrl: '',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699383934/trabajos/tyc_d0ldah.png'
        ],
        description:
            'Cambio de Paradigma para TYC TV, Nueva imagen para transmisiones',
        shortDescription:
            'Identidad visual animada para Transmisiones'),
    Trabajo(
        title: 'Chile Vision Noticiero',
        tags: [JobFilters.all, JobFilters.video, JobFilters.animacion, JobFilters.reel],
        urlLaunch: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1699382542/trabajos/ID_NOTICIERO_CHILEVISION_kzm9wb.mp4',
        videoUrl: '',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699384188/trabajos/chv_yy4kb8.png'
        ],
        description: 'Identidad visual animada para Transmisiones en vivo incluyendo su noticiero',
        shortDescription:
            'Identidad visual animada para Transmisiones'),
    Trabajo(
        title: 'JP Director',
        videoUrl: '',
        tags: [JobFilters.all, JobFilters.wevDev, JobFilters.webDesign, JobFilters.uiux],
        urlLaunch: 'https://www.jpdirector.net',
        imgs: [
          'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699387311/trabajos/jphome_ozhcg5.png'
        ],
        description:
            'Desarrollo de un sistema web tipo LMS para venta y estudios online de cursos sobre publicidad online',
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
