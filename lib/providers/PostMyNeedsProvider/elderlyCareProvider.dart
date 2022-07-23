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
