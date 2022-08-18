import 'package:flutter/cupertino.dart';

class ProfileProvider extends ChangeNotifier {
  static bool clickAbout = true;

  static bool clickLocation = false;

  static bool clickProvided = false;

  static bool clickAdditional = false;

  static bool clickRating = false;

  static bool clickExperience = false;
  static bool clickQualifications = false;

  static bool clickFees = false;

  static bool clickAvailability = false;

  void changeclickAvailability() {
    clickAvailability = !clickAvailability;

    notifyListeners();
  }

  void changeclickFees() {
    clickFees = !clickFees;

    notifyListeners();
  }

  void changeclickQualifications() {
    clickQualifications = !clickQualifications;

    notifyListeners();
  }

  void changeclickExperience() {
    clickExperience = !clickExperience;

    notifyListeners();
  }

  void changeclickRating() {
    clickRating = !clickRating;

    notifyListeners();
  }

  void changeclickAdditional() {
    clickAdditional = !clickAdditional;

    notifyListeners();
  }

  void changeclickProvided() {
    clickProvided = !clickProvided;

    notifyListeners();
  }

  void changeclickLocation() {
    clickLocation = !clickLocation;

    notifyListeners();
  }

  void changeclickAbout() {
    clickAbout = !clickAbout;

    notifyListeners();
  }
}
