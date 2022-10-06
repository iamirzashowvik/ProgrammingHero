import 'package:http/http.dart' as http;

class HttpService {
  Map<String, String> headerObject = {};

  Future<http.Response> getMethod(String urlx) async {
    try {
      var url = Uri.parse(urlx);
      var response = await http.get(url, headers: headerObject);
      return response;
    } catch (e) {
      return http.Response('Error', 500);
    }
  }
}
