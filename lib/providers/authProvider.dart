import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AuthMode { Signup, Signin }

class AuthProvidere extends ChangeNotifier {
  static bool isLog = false;

  static String authMode = 'Signup';
  static bool valueCheckbox = false;
  static bool fromPostMyNeeds = false;

  void login() async {
    final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final key = 'login';
    _prefs.then((SharedPreferences prefs) async {
      final prefs = await SharedPreferences.getInstance();
      final key = 'login';
      prefs.setString(key, 'true');
    });
  }

  void logout() async {
    final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final key = 'login';
    _prefs.then((SharedPreferences prefs) async {
      final prefs = await SharedPreferences.getInstance();
      final key = 'login';
      prefs.setString(key, 'false');
    });
  }

  void changeFromPostMyNeeds(String val) async {
    final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final key = 'fromPostMyNeeds';
    final value = val;
    _prefs.then((SharedPreferences prefs) async {
      final prefs = await SharedPreferences.getInstance();
      final key = 'fromPostMyNeeds';
      prefs.setString(key, val);
    });
  }

  void changeCheckboxState() {
    valueCheckbox = !valueCheckbox;

    notifyListeners();
  }

  void changeAuthSteta() {
    if (authMode == 'Signup')
      authMode = 'Signin';
    else
      authMode = 'Signup';

    notifyListeners();
  }
}
