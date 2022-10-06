import 'package:programminghero/app/utils/services/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

HttpService httpService = HttpService();
late SharedPreferences sharedPreferences;

class Initialize {
  Future<void> initialize() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }
}
