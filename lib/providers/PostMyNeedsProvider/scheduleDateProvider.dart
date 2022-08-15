import 'package:flutter/cupertino.dart';

class ScheduleDateProvider extends ChangeNotifier {
  static List<List> shMo = [
    ['g']
  ];
  static List<List> shTu = [];
  static List<List> shWe = [];
  static List<List> shTh = [];
  static List<List> shFr = [];
  static List<List> shSa = [];
  static List<List> shSu = [];

  /////all
  static List<int> numShInDay = [0, 0, 0, 0, 0, 0, 0];

/*
  static bool clickMo = false;
  static bool clickTu = false;
  static bool clickWe = false;
  static bool clickTh = false;
  static bool clickFr = false;
  static bool clickSa = false;
  static bool clickSu = false;

  static bool clickShMo = true;
  static bool clickShTu = true;
  static bool clickShWe = true;
  static bool clickShTh = true;
  static bool clickShFr = true;
  static bool clickShSa = true;
  static bool clickShSu = true;
*/
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

  void addShInDay(int ind) {
    numShInDay[ind] += 1;
    notifyListeners();
  }

  void removeShInDay(int ind) {
    numShInDay[ind] -= 1;
    notifyListeners();
  }

  void removeAllShInDay(int ind) {
    numShInDay[ind] = 0;
    notifyListeners();
  }

  void changeclickDayOk(int ind) {
    clickDay[ind] = true;
    notifyListeners();
  }

  void changeclickDayNo(int ind) {
    clickDay[ind] = false;
    notifyListeners();
  }

  void changeclickShDay(int ind) {
    clickSh[ind] = !clickSh[ind];
    notifyListeners();
  }
/*
  void changeclickWe() {
    clickWe = !clickWe;
    notifyListeners();
  }

  void changeclickTh() {
    clickTh = !clickTh;
    notifyListeners();
  }

  void changeclickFr() {
    clickFr = !clickFr;
    notifyListeners();
  }

  void changeclickSa() {
    clickSa = !clickSa;
    notifyListeners();
  }

  void changeclickSu() {
    clickSu = !clickSu;
    notifyListeners();
  }

  void changeclickShMo() {
    clickShMo = !clickShMo;
    notifyListeners();
  }

  void changeclickShTu() {
    clickShTu = !clickShTu;
    notifyListeners();
  }

  void changeclickShWe() {
    clickShWe = !clickShWe;
    notifyListeners();
  }

  void changeclickShTh() {
    clickShTh = !clickShTh;
    notifyListeners();
  }

  void changeclickShFr() {
    clickShFr = !clickShFr;
    notifyListeners();
  }

  void changeclickShSa() {
    clickShSa = !clickShSa;
    notifyListeners();
  }

  void changeclickShSu() {
    clickShSu = !clickShSu;
    notifyListeners();
  }
*/

  void addSh(String from, String to, String day) {
    if (day == 'Mo') {
      shMo.add([from, to]);
    }
    if (day == 'Tu') {
      shTu.add([from, to]);
    }
    if (day == 'We') {
      shWe.add([from, to]);
    }
    if (day == 'Th') {
      shTh.add([from, to]);
    }
    if (day == 'Fr') {
      shFr.add([from, to]);
    }
    if (day == 'Sa') {
      shSa.add([from, to]);
    }
    if (day == 'Su') {
      shSu.add([from, to]);
    }
  }
}
