import 'package:url_launcher/url_launcher.dart';

class UrlLaunch {
  static launchWs(String service) {
    final Uri url = Uri.parse('https://wa.me/50766487209?text=Me%20interesa%20el%20servicio%20de%20$service');
    Future<void> launchWs() async {
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }

    launchWs();
  }
  static launchInstagram(String service) {
    final Uri url = Uri.parse('https://www.instagram.com/playcodestudios/');
    Future<void> launchInstagram() async {
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }

    launchInstagram();
  }
}