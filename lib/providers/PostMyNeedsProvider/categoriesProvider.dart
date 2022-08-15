import 'package:flutter/cupertino.dart';

class CategoriesProvider extends ChangeNotifier {
  static bool clickBuild = false;
  static bool clickReview = false;
  static bool clickCreat = false;

  static bool clickCar = false;
  static bool clickLocation = false;
  static bool clickGender = false;

  static bool clickCaregiversInrAea = false;
  static bool clickCareCategory = false;
  static bool clickCaregiverPreferences = false;
  static bool clickSchedule = false;

  static bool clickBudget = false;
  static bool clickCareRecipients = false;

  void ClickCareRecipients() {
    clickCareRecipients = true;

    notifyListeners();
  }

  void ClickBudget() {
    clickBudget = true;

    notifyListeners();
  }

  void ClickSchedule() {
    clickSchedule = true;

    notifyListeners();
  }

  void ClickCaregiverPreferences() {
    clickCaregiverPreferences = true;

    notifyListeners();
  }

  void ClickCareCategory() {
    clickCareCategory = true;

    notifyListeners();
  }

  void ClickCaregiversInrAea() {
    clickCaregiversInrAea = true;

    notifyListeners();
  }

  void ClickGender() {
    clickGender = true;

    notifyListeners();
  }

  void ClickLocation() {
    clickLocation = true;

    notifyListeners();
  }

  void ClickCar() {
    clickCar = true;

    notifyListeners();
  }

  void ClickBuild() {
    setAllFalse();

    clickBuild = true;

    notifyListeners();
  }

  void ClickReview() {
    setAllFalse();

    clickReview = true;

    notifyListeners();
  }

  void ClickCreat() {
    setAllFalse();
    clickCreat = true;

    notifyListeners();
  }

  void setAllFalse() {
    clickBuild = false;
    clickReview = false;
    clickCreat = false;
  }
}
