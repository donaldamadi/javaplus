import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  SharedPreferences? prefs;

  Future _initPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future setPin(String val) async {
    await _initPref();
    await prefs!.setString('pin', val);
  }

  Future setUsername(String val) async {
    await _initPref();
    await prefs!.setString('username', val);
  }

  Future<String?> getUsername() async {
    await _initPref();
    return prefs!.getString("username");
  }

  Future<String?> getPassword() async {
    await _initPref();
    return prefs!.getString("password");
  }

  Future setPassword(String val) async {
    await _initPref();
    await prefs!.setString('password', val);
  }
}
