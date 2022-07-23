import 'package:flutter/cupertino.dart';

class MyBookingProvider extends ChangeNotifier {
  static String stateMyBooking = 'isPending';
  static double rating1 = 2;
  static double rating2 = 0;
  static double rating3 = 1;
  static double rating4 = 2;
  static double rating5 = 4;
  static double rating6 = 1;
  static double rating7 = 5;

  void changeStateMyBooking(String state) {
    stateMyBooking = state;

    notifyListeners();
  }

  void changeRating1(double val) {
    rating1 = val;

    notifyListeners();
  }

  void changeRating2(double val) {
    rating2 = val;

    notifyListeners();
  }

  void changeRating3(double val) {
    rating3 = val;

    notifyListeners();
  }

  void changeRating4(double val) {
    rating4 = val;

    notifyListeners();
  }

  void changeRating5(double val) {
    rating5 = val;

    notifyListeners();
  }

  void changeRating6(double val) {
    rating6 = val;

    notifyListeners();
  }

  void changeRating7(double val) {
    rating7 = val;

    notifyListeners();
  }
}
