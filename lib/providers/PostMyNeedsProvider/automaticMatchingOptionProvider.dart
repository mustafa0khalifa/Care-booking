import 'package:flutter/cupertino.dart';

class AutomaticMatchingOptionProvider extends ChangeNotifier {
  static String automaticMatchingOption = 'browse';

  void changeAutoMatching(String val) {
    automaticMatchingOption = val;

    notifyListeners();
  }
}
