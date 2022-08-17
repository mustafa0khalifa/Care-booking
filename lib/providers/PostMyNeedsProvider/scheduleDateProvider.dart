import 'package:flutter/cupertino.dart';

class ScheduleDateProvider extends ChangeNotifier {
  static List<List> DateDay = [
    [],
    [],
    [],
    [],
    [],
    [],
    [],
  ];

  static List<bool> clickSh = [
    true,
    true,
    true,
    true,
    true,
    true,
    true,
  ];
  static List<bool> clickDay = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  void changeclickDayOk(int ind) {
    clickDay[ind] = true;
    notifyListeners();
  }

  void changeclickDayNo(int ind) {
    clickDay[ind] = false;
  }

  void changeclickShDay(int ind) {
    clickSh[ind] = !clickSh[ind];
    notifyListeners();
  }

  void addSh(String from, String to, int ind) {
    DateDay[ind].add(from);
    DateDay[ind].add(to);
    notifyListeners();
  }

  void removeShInDayList(int ind, int shInd) {
    DateDay[ind].removeAt(shInd);
    DateDay[ind].removeAt(shInd);

    notifyListeners();
  }

  void removeAllShInDayList(int ind) {
    DateDay[ind] = [];

    notifyListeners();
  }
}
