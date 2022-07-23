import 'package:flutter/cupertino.dart';

class ForgetPassProvidere extends ChangeNotifier {
  static String ForgetPassMode = 'enterNumber';

  void changeForgetSteta() {
    if (ForgetPassMode == 'enterNumber')
      ForgetPassMode = 'enterCode';
    else if (ForgetPassMode == 'enterCode')
      ForgetPassMode = 'resetPass';
    else
      ForgetPassMode = 'enterNumber';

    notifyListeners();
  }

  void cancelForgetSteta() {
    ForgetPassMode = 'enterNumber';

    notifyListeners();
  }
}
