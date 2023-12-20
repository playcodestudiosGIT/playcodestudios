import 'package:flutter/material.dart';
import '../models/trabajo.dart';


enum JobFilters { 
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
  List<Trabajo> _list = [
    Trabajo(
        title: 'Playcode',
        tags: [JobFilters.branding, JobFilters.diseno, JobFilters.webDesign, JobFilters.webdev],
        urlLaunch: '',
        video: '',
        imgs: ['https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699638169/assets/playcode_nyg6gy.png'],
        description: 'In eu nulla sunt esse ea ut. Sunt dolor excepteur qui eiusmod velit enim pariatur aute. Eiusmod ea voluptate sint ex sunt velit velit sint et esse nulla velit elit dolore. Eu nisi deserunt magna enim sint id sunt enim ad fugiat eu. Deserunt sint duis duis do. Pariatur aute aliquip ullamco eiusmod irure ad exercitation nisi quis laboris mollit sint enim.',
        shortDescription: 'Identidad gráfica y Desarrollo web - en expanción'),
    Trabajo(
        title: 'IDN Reel 2010',
        tags: [JobFilters.branding, JobFilters.diseno, JobFilters.reel, JobFilters.video],
        urlLaunch: '',
        video: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1699382519/trabajos/IDN_INTRO_rfekcb.mp4',
        imgs: ['https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699383052/assets/superstudio_zrda5w.png'],
        description: 'Amet reprehenderit ex proident non adipisicing proident tempor cupidatat cupidatat sit. Est reprehenderit nisi amet excepteur. Ullamco reprehenderit velit ad excepteur velit anim sunt in deserunt ipsum. Eu nisi laboris quis adipisicing tempor. Ea dolore enim do non ullamco est dolor exercitation proident do non. Labore officia commodo ullamco consectetur sit non ut.',
        shortDescription: 'Colaboración Estudio IDN Argentina en el año 2010'),
    Trabajo(
        title: 'Sonata del Pajarillo',
        tags: [JobFilters.video, JobFilters.branding, JobFilters.reel],
        urlLaunch: '',
        video: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1699382478/trabajos/Sonata_del_Pajarillo_Trailer_imloob.mp4',
        imgs: ['https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699383633/assets/sonata_del_pajarillo_pig6fr.png'],
        description: 'Laboris adipisicing duis labore velit. Tempor occaecat mollit eu esse aliqua sunt. Et ut sunt aute qui ex irure dolore laboris cupidatat consequat consectetur aliqua.',
        shortDescription: 'Producción cinematográfica en colaboración con La Villa del Cine, Centro Nacional Autónomo de Cine'),
    Trabajo(
        title: 'TYC TV',
        tags: [JobFilters.branding, JobFilters.animacion, JobFilters.video],
        urlLaunch: '',
        video: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1699382507/trabajos/tyc_yqglko.mp4',
        imgs: ['https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699383934/assets/tyc_d0ldah.png'],
        description: 'Reprehenderit consectetur eu culpa eiusmod sint aliquip elit qui elit in duis fugiat sint. Ex sit laboris enim elit eu mollit do adipisicing irure ipsum veniam. Enim enim fugiat reprehenderit aliquip nulla eu duis voluptate officia consequat consectetur aliquip est est. Id cillum consequat magna veniam.',
        shortDescription: 'Identidad visual animada para Transmisiones en vivo'),
    Trabajo(
        title: 'Chile Vision Noticiero',
        tags: [JobFilters.animacion,JobFilters.video, JobFilters.branding],
        urlLaunch: '',
        video: 'https://res.cloudinary.com/dyxt5lhzw/video/upload/v1699382542/trabajos/ID_NOTICIERO_CHILEVISION_kzm9wb.mp4',
        imgs: ['https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699384188/assets/chv_yy4kb8.png'],
        description: 'Identidad visual animada para Transmisiones en vivo',
        shortDescription: 'Identidad visual animada para Transmisiones en vivo'),
    Trabajo(
        title: 'JP Director',
        video: '',
        tags: [JobFilters.webDesign, JobFilters.webdev, JobFilters.appDev],
        urlLaunch: 'https://www.jpdirector.net',
        imgs: ['https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699387311/assets/jphome_ozhcg5.png'],
        description: 'Enim sunt pariatur ut ea aliqua. Duis ex enim laboris sint excepteur veniam ullamco sint mollit reprehenderit nisi ea. Reprehenderit cillum non commodo quis enim occaecat et do sint Lorem adipisicing duis dolore do.',
        shortDescription: 'Aplicacion web, sistema LMS y venta de cursos online'),
  ];

  List<Trabajo> get list => _list;
  
  set list(List<Trabajo> value) {
    _list = value;
    notifyListeners();
  }

  set listFilter(JobFilters filter){
    
  }
}
