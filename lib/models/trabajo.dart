


import 'dart:convert';

import 'package:playcodestudios/models/director.dart';

class Trabajo {
  String title;
  List<String> tags;
  String img;
  Director director;
  String description;
  Trabajo({
    required this.title,
    required this.tags,
    required this.img,
    required this.director,
    required this.description,
  });

  factory Trabajo.fromRawJson(String str) => Trabajo.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Trabajo.fromJson(Map<String, dynamic> json) => Trabajo(
        title: json["title"],
        img: json["img"],
        director: json["director"],
        description: json["description"],
        tags: List<String>.from(json["tags"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "img": img,
        "director": director,
        "description": description,
        "tags": List<dynamic>.from(tags.map((x) => x)),
    };
}