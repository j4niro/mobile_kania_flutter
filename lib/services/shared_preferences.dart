import 'package:shared_preferences/shared_preferences.dart';



Future<SharedPreferences> loadPreferences() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs;
  }