import 'package:flutter/material.dart';

class ElderlyCareProvider extends ChangeNotifier {
  static bool basicCareCheckbox = false;

  static bool basicNursingCheckbox = false;

  static bool companionship = false;
  static bool personalCare = false;
  static bool mobilitySupport = false;
  static bool mealPreparation = false;
  static bool basicNursingCare = false;
  static bool transportation = false;
  static bool shopping = false;
  static bool light = false;

  static bool companionship2 = false;
  static bool personalCare2 = false;
  static bool mobilitySupport2 = false;
  static bool mealPreparation2 = false;
  static bool basicNursingCare2 = false;
  static bool transportation2 = false;
  static bool shopping2 = false;
  static bool light2 = false;

  static bool service1 = false;
  static bool service2 = false;

  void changeBasicCareCheckbox() {
    basicCareCheckbox = !basicCareCheckbox;

    notifyListeners();
  }

  void changeBasicNursingCheckbox() {
    basicNursingCheckbox = !basicNursingCheckbox;

    notifyListeners();
  }

  void changeCompanionshipCheckbox2() {
    companionship2 = !companionship2;

    notifyListeners();
  }

  void changePersonalCareCheckbox2() {
    personalCare2 = !personalCare2;

    notifyListeners();
  }

  void changeMobilitySupportCheckbox2() {
    mobilitySupport2 = !mobilitySupport2;

    notifyListeners();
  }

  void changeMealPreparationCheckbox2() {
    mealPreparation2 = !mealPreparation2;

    notifyListeners();
  }

  void changeBasicNursingCareCheckbox2() {
    basicNursingCare2 = !basicNursingCare2;

    notifyListeners();
  }

  void changeTransportationCheckbox2() {
    transportation2 = !transportation2;

    notifyListeners();
  }

  void changeShoppingCheckbox2() {
    shopping2 = !shopping2;

    notifyListeners();
  }

  void changeLightCheckbox2() {
    light2 = !light2;

    notifyListeners();
  }

  void changeCompanionshipCheckbox() {
    companionship = !companionship;

    notifyListeners();
  }

  void changePersonalCareCheckbox() {
    personalCare = !personalCare;

    notifyListeners();
  }

  void changeMobilitySupportCheckbox() {
    mobilitySupport = !mobilitySupport;

    notifyListeners();
  }

  void changeMealPreparationCheckbox() {
    mealPreparation = !mealPreparation;

    notifyListeners();
  }

  void changeBasicNursingCareCheckbox() {
    basicNursingCare = !basicNursingCare;

    notifyListeners();
  }

  void changeTransportationCheckbox() {
    transportation = !transportation;

    notifyListeners();
  }

  void changeShoppingCheckbox() {
    shopping = !shopping;

    notifyListeners();
  }

  void changeLightCheckbox() {
    light = !light;

    notifyListeners();
  }

  void changeService1Checkbox() {
    service1 = !service1;

    notifyListeners();
  }

  void changeService2Checkbox() {
    service2 = !service2;

    notifyListeners();
  }
}
