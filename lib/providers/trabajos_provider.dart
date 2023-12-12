import 'package:flutter/material.dart';

import '../models/director.dart';
import '../models/trabajo.dart';

final List<Director> directores = [
  Director(nombre: 'Samuel', apellido: 'Lopez', img: 'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699383183/assets/samuelAvatar_gsvpp2.jpg', info: 'Infor samuel', position: 'CEO')
];

class TrabajosProvider extends ChangeNotifier {
  List<Trabajo> _list = [
    Trabajo(
      director: directores[0],
        title: 'Playcode',
        tags: ['Branding', 'Video', '3D', 'Web'],
        img: 'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699638169/assets/playcode_nyg6gy.png',
        description: 'Identidad gráfica y Desarrollo web - en expanción'),
    Trabajo(
      director: directores[0],
        title: 'IDN Reel 2010',
        tags: ['Video', 'Reel'],
        img: 'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699383052/assets/superstudio_zrda5w.png',
        description: 'Colaboración Estudio IDN Argentina en el año 2010'),
    Trabajo(
      director: directores[0],
        title: 'Sonata del Pajarillo',
        tags: ['Película', 'Video', 'Reel'],
        img: 'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699383633/assets/sonata_del_pajarillo_pig6fr.png',
        description: 'Producción cinematográfica en colaboración con La Villa del Cine, Centro Nacional Autónomo de Cine'),
    Trabajo(
      director: directores[0],
        title: 'TYC TV',
        tags: ['Animación', 'Video', 'Branding'],
        img: 'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699383934/assets/tyc_d0ldah.png',
        description: 'Identidad visual animada para Transmisiones en vivo'),
    Trabajo(
      director: directores[0],
        title: 'Chile Vision Noticiero',
        tags: ['Animación', 'Video', 'Branding'],
        img: 'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699384188/assets/chv_yy4kb8.png',
        description: 'Identidad visual animada para Transmisiones en vivo'),
    Trabajo(
      director: directores[0],
        title: 'JP Director',
        tags: ['Web App'],
        img: 'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699387311/assets/jphome_ozhcg5.png',
        description: 'Aplicacion web, sistema LMS y venta de cursos online'),
  ];

  List<Trabajo> get list => _list;
  set list(List<Trabajo> value) {
    _list = value;
    notifyListeners();
  }
}
