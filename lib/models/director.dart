import 'dart:convert';

class Director {
  String nombre;
  String apellido;
  String img;
  String info;
  String position;
  Director({
    required this.nombre,
    required this.apellido,
    required this.img,
    required this.info,
    required this.position,
  });

  factory Director.fromRawJson(String str) => Director.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Director.fromJson(Map<String, dynamic> json) => Director(
        nombre: json["nombre"],
        apellido: json["apellido"],
        img: json["img"],
        info: json["info"],
        position: json["position"],
    );

    Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "apellido": apellido,
        "img": img,
        "director": info,
        "position": position,
    };
}