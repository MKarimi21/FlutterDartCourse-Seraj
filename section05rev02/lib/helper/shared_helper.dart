import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper {
  late SharedPreferences sharedPreferences;
  Future<String> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return "";
  }

  void setName(String name) {
    sharedPreferences.setString("username", name);
  }

  void deletename() {
    sharedPreferences.remove("username");
  }

  String getName() {
    return sharedPreferences.getString("username") ?? "";
  }
}
