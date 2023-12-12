
import 'dart:convert';

class Lead {
    String nombre;
    String email;
    String telf;
    String description;
    String proyectType;
    String budget;
    DateTime createdAt;
    DateTime updatedAt;
    String uid;

    Lead({
        required this.nombre,
        required this.email,
        required this.telf,
        required this.description,
        required this.proyectType,
        required this.budget,
        required this.createdAt,
        required this.updatedAt,
        required this.uid,
    });

    factory Lead.fromRawJson(String str) => Lead.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Lead.fromJson(Map<String, dynamic> json) => Lead(
        nombre: json["nombre"],
        email: json["email"],
        telf: json["telf"],
        description: json["description"],
        proyectType: json["proyectType"],
        budget: json["budget"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        uid: json["uid"],
    );

    Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "email": email,
        "telf": telf,
        "description": description,
        "proyectType": proyectType,
        "budget": budget,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "uid": uid,
    };
}
