import 'package:flutter/cupertino.dart';

class NavBarProvider extends ChangeNotifier {
  static bool build = false;
  static bool review = false;
  static bool creat = false;

  void changeBuild() {
    build = !build;
    notifyListeners();
  }

  void changeRiview() {
    review = !review;
    notifyListeners();
  }

  void changeCreat() {
    creat = !creat;
    notifyListeners();
  }
}
