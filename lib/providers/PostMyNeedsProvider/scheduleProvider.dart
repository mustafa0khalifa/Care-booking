import 'package:flutter/cupertino.dart';

class ScheduleProvider extends ChangeNotifier {
  static String groupValueRadio = 'Regular';
  static bool isLiveIn = false;
  static bool isRenewBooking = false;
  static bool mondayChecbox = false;
  static bool tuesdayChecbox = false;
  static bool wednesdayChecbox = false;
  static bool thursdayChecbox = false;
  static bool fridayChecbox = false;
  static bool saturdayChecbox = false;
  static bool sundayChecbox = false;
  static bool flexibleToStartChecbox = false;
  static bool isEndSpecificDate = false;

  void changeGroubRadio(String val) {
    groupValueRadio = val;

    notifyListeners();
  }

  void changeisRenewBookings() {
    isRenewBooking = !isRenewBooking;

    notifyListeners();
  }

  void changeisEndSpecificDate() {
    isEndSpecificDate = !isEndSpecificDate;

    notifyListeners();
  }

  void changemondayChecbox() {
    mondayChecbox = !mondayChecbox;

    notifyListeners();
  }

  void changethursdayChecbox() {
    thursdayChecbox = !thursdayChecbox;

    notifyListeners();
  }

  void changetuesdayChecbox() {
    tuesdayChecbox = !tuesdayChecbox;

    notifyListeners();
  }

  void changewednesdayChecbox() {
    wednesdayChecbox = !wednesdayChecbox;

    notifyListeners();
  }

  void changefridayChecbox() {
    fridayChecbox = !fridayChecbox;

    notifyListeners();
  }

  void changesaturdayChecbox() {
    saturdayChecbox = !saturdayChecbox;

    notifyListeners();
  }

  void changesundayChecbox() {
    sundayChecbox = !sundayChecbox;

    notifyListeners();
  }

  void changeisLiveIn() {
    isLiveIn = !isLiveIn;

    notifyListeners();
  }

  void changeflexibleToStartChecboxChecbox() {
    flexibleToStartChecbox = !flexibleToStartChecbox;

    notifyListeners();
  }
}
