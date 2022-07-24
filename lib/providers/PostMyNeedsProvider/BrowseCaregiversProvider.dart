import 'package:flutter/cupertino.dart';

class BrowseCaregiversProvider extends ChangeNotifier {
  static String browseCaregiversMode = "filter";
  static String groubVal = "all";
  static String groubVal2 = "clild";
  static bool distance = false;
  static bool paymentRate = false;
  static double valueSlider = 30;
  static double valueSlider2 = 30;

  void changeValueSlider(double val) {
    valueSlider = val;

    notifyListeners();
  }

  void changeValueSlider2(double val) {
    valueSlider2 = val;

    notifyListeners();
  }

  void changeBrowseCaregiversMode() {
    if (browseCaregiversMode == 'filter') {
      browseCaregiversMode = 'main';
    } else {
      browseCaregiversMode = 'filter';
    }
    notifyListeners();
  }

  void changeGroubVal(String val) {
    groubVal = val;
    notifyListeners();
  }

  void changeGroubVal2(String val) {
    groubVal2 = val;
    notifyListeners();
  }

  void changeDistance() {
    distance = !distance;
    notifyListeners();
  }

  void changePaymentRate() {
    paymentRate = !paymentRate;
    notifyListeners();
  }
}
