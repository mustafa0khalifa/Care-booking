import 'package:flutter/cupertino.dart';

enum AuthMode { Signup, Signin }

class AuthProvidere extends ChangeNotifier {
  static bool isLog = false;

  static String authMode = 'Signup';
  static bool valueCheckbox = false;

  void changeLogState() {
    isLog = !isLog;

    notifyListeners();
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
