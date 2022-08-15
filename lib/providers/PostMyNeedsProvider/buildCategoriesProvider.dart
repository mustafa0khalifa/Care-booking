import 'package:flutter/foundation.dart';

class BuildCategoriesProvider extends ChangeNotifier {
  static bool clickServices = false;

  void ClickServices() {
    clickServices = true;

    notifyListeners();
  }
}
