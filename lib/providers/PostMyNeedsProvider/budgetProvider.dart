import 'package:flutter/foundation.dart';

class BudgetProvider extends ChangeNotifier {
  static bool specificBudget = true;

  static double valueSlider = 30;

  void changeValueSlider(double val) {
    valueSlider = val;

    notifyListeners();
  }

  void changeSpecificBudget() {
    specificBudget = !specificBudget;

    notifyListeners();
  }
}
