import 'package:flutter/foundation.dart';

class CaregiverPreferencesProvider extends ChangeNotifier {
  static String ageRange = 'Up to 24';

  static bool up24Check = false;
  static bool Check24 = false;
  static bool Check35 = false;
  static bool up50Check = false;

  void changeup24Check() {
    up24Check = !up24Check;
    notifyListeners();
  }

  void changeCheck24() {
    Check24 = !Check24;
    notifyListeners();
  }

  void changeCheck35() {
    Check35 = !Check35;
    notifyListeners();
  }

  void changeup50Check() {
    up50Check = !up50Check;
    notifyListeners();
  }
}
