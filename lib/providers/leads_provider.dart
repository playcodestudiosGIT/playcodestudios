import 'package:flutter/material.dart';
import 'package:playcodestudios/api/playcode_api.dart';

class LeadsProvider extends ChangeNotifier {
  Future<bool> createLead(
      {required String nombre,
      required String email,
      required String telf,
      required String description,
      required String proyectType,
      required String budget}) async {
    final data = {
      "nombre": nombre,
      "email": email,
      "telf": telf,
      "description": description,
      "proyectType": proyectType,
      "budget": budget
    };

    // Petición HTTP
    try {
      await PlaycodeApi.post('/leads', data);
      return true;
    } catch (e) {
      return false;
    }
  }
}
