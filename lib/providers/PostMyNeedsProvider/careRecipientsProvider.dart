import 'package:flutter/cupertino.dart';

class CareRecipientsProvider extends ChangeNotifier {
  static bool isPregant = false;
  static String genderGroub = 'Male';

  void changePregant() {
    isPregant = !isPregant;

    notifyListeners();
  }

  void changeGenderGroub(String val) {
    genderGroub = val;

    notifyListeners();
  }
}
