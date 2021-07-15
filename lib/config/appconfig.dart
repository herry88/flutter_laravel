import 'package:http/http.dart' as http;

class Config {
  String _baseUrl = 'http://192.168.100.108/blog-api-flutter/public/api/';

  httpGet(String api) async {
    return await http.get(Uri.parse(_baseUrl + "/" + api));
  }
}
