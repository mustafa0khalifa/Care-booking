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
    setAllCreatFalse();

    clickCareRecipients = true;

    notifyListeners();
  }

  void ClickBudget() {
    setAllCreatFalse();

    clickBudget = true;

    notifyListeners();
  }

  void ClickSchedule() {
    setAllRiviewFalse();

    clickSchedule = true;

    notifyListeners();
  }

  void ClickCaregiverPreferences() {
    setAllRiviewFalse();

    clickCaregiverPreferences = true;

    notifyListeners();
  }

  void ClickCareCategory() {
    setAllRiviewFalse();

    clickCareCategory = true;

    notifyListeners();
  }

  void ClickCaregiversInrAea() {
    setAllRiviewFalse();

    clickCaregiversInrAea = true;

    notifyListeners();
  }

  void ClickGender() {
    setAllBuildFalse();

    clickGender = true;

    notifyListeners();
  }

  void ClickLocation() {
    setAllBuildFalse();

    clickLocation = true;

    notifyListeners();
  }

  void ClickCar() {
    setAllBuildFalse();

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

  void setAllBuildFalse() {
    clickCar = false;
    clickLocation = false;
    clickGender = false;
  }

  void setAllRiviewFalse() {
    clickCaregiversInrAea = false;
    clickCaregiverPreferences = false;
    clickCareCategory = false;
    clickSchedule = false;
  }

  void setAllCreatFalse() {
    clickBudget = false;
    clickCareRecipients = false;
  }
}
