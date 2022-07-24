import 'package:flutter/foundation.dart';

class CaregiverPreferencesProvider extends ChangeNotifier {
  static String ageRange = 'Up to 24';

  void changeAgeRange(String val) {
    ageRange = val;
    notifyListeners();
  }
}
