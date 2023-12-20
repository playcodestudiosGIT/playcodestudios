


import 'dart:convert';
import 'package:playcodestudios/providers/trabajos_provider.dart';

class Trabajo {
  String title;
  List<JobFilters> tags;
  String description;
  String shortDescription;
  List<String> imgs;
  String? video;
  String? urlLaunch;
  Trabajo({
    required this.title,
    required this.tags,
    required this.description,
    required this.shortDescription,
    required this.imgs,
    this.video,
    this.urlLaunch,
  });

  factory Trabajo.fromRawJson(String str) => Trabajo.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Trabajo.fromJson(Map<String, dynamic> json) => Trabajo(
        title: json["title"],
        description: json["description"],
        shortDescription: json["shortDescription"],
        video: json["video"],
        tags: List<JobFilters>.from(json["tags"].map((x) => x)),
        imgs: List<String>.from(json["imgs"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "shortDescription": shortDescription,
        "video": video,
        "tags": List<JobFilters>.from(tags.map((x) => x)),
        "imgs": List<String>.from(tags.map((x) => x)),
    };
}