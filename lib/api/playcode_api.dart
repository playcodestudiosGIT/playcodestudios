import 'package:dio/dio.dart';

import '../services/local_storage.dart';

class PlaycodeApi {
  static final Dio _dio = Dio();

  static void configureDio() {
    //base Url
    _dio.options.baseUrl = 'https://playcodestudios-16f297bf6a07.herokuapp.com/api';
    // _dio.options.baseUrl = 'http://localhost:8081/api';

    //Configure headers
    _dio.options.headers = {'x-token': LocalStorage.prefs.get('token') ?? ''};
  }

  // static Future httpGet(String path) async {
  //   try {
  //     final resp = await _dio.get(path);
  //     return resp.data;
  //   } catch (e) {
  //     throw ('GET-Error en la conexión $e');
  //   }
  // }

  static Future post(String path, Map<String, dynamic> data) async {

    try {
      final resp = await _dio.post(path, data: data);
      return resp.data;
    } catch (e) {
      throw ('POST-Error en la conexión $e');
    }
  }

  // static Future put(String path, Map<String, dynamic> data) async {
  //   final formData = FormData.fromMap(data);
  //   try {
  //     final resp = await _dio.put(path, data: formData);
  //     return resp.data;
  //   } catch (e) {
  //     throw ('POST-Error conexión $e');
  //   }
  // }

  // static Future delete(String path, Map<String, dynamic> data) async {
  //   final formData = FormData.fromMap(data);

  //   try {
  //     final resp = await _dio.delete(path, data: formData);
  //     return resp.data;
  //   } catch (e) {
  //     throw ('DELETE-Error conexion $e');
  //   }
  // }
}
