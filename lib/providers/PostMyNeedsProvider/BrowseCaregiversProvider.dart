import 'package:flutter/cupertino.dart';

class BrowseCaregiversProvider extends ChangeNotifier {
  static String browseCaregiversMode = "filter";
  static String groubVal = "all";
  static String groubVal2 = "clild";
  static bool distance = false;
  static bool paymentRate = false;
  static bool age = false;
  static double valueSlider = 30;
  static double valueSlider2 = 30;
  static double numAge1 = 30;
  static double numAge2 = 40;
  static bool newpornCheck = false;
  static bool basicCareCheck = false;
  static bool service2Check = false;
  static bool infantCheck = false;
  static bool toddlerCheck = false;
  static bool preschoolerCheck = false;
  static bool primaryschoolerCheck = false;
  static bool registeredNurseCheck = false;
  static bool practicalNurseCheck = false;
  static double numfExperience = 5;
  static bool yearsOfExperienceCheck = false;
  static bool arabicCheck = false;
  static bool englishCheck = false;
  static bool frenchCheck = false;
  static bool noDegree = false;
  static bool brevet = false;
  static bool highSchool = false;
  static bool bachelor = false;
  static bool master = false;
  static bool PhD = false;

  void changenoDegree() {
    noDegree = !noDegree;
    notifyListeners();
  }

  void changePhD() {
    PhD = !PhD;
    notifyListeners();
  }

  void changemaster() {
    master = !master;
    notifyListeners();
  }

  void changebachelor() {
    bachelor = !bachelor;
    notifyListeners();
  }

  void changehighSchool() {
    highSchool = !highSchool;
    notifyListeners();
  }

  void changebrevet() {
    brevet = !brevet;
    notifyListeners();
  }

  void changefrenchCheck() {
    frenchCheck = !frenchCheck;
    notifyListeners();
  }

  void changeenglishCheck() {
    englishCheck = !englishCheck;
    notifyListeners();
  }

  void changearabicCheck() {
    arabicCheck = !arabicCheck;
    notifyListeners();
  }

  void changeNumberOfExperience(bool isPlus) {
    if (yearsOfExperienceCheck) {
      if (isPlus) {
        numfExperience++;
      } else {
        if (numfExperience != 0) {
          numfExperience--;
        }
      }
    }
    notifyListeners();
  }

  void changeyearsOfExperienceCheck() {
    yearsOfExperienceCheck = !yearsOfExperienceCheck;
    notifyListeners();
  }

  void changepracticalNurseCheck() {
    practicalNurseCheck = !practicalNurseCheck;
    notifyListeners();
  }

  void changeregisteredNurseCheck() {
    registeredNurseCheck = !registeredNurseCheck;
    notifyListeners();
  }

  void changeprimaryschoolerCheck() {
    primaryschoolerCheck = !primaryschoolerCheck;
    notifyListeners();
  }

  void changepreschoolerCheck() {
    preschoolerCheck = !preschoolerCheck;
    notifyListeners();
  }

  void changetoddlerCheck() {
    toddlerCheck = !toddlerCheck;
    notifyListeners();
  }

  void changeinfantCheck() {
    infantCheck = !infantCheck;
    notifyListeners();
  }

  void changeservice2Check() {
    service2Check = !service2Check;
    notifyListeners();
  }

  void changebasicCareCheck() {
    basicCareCheck = !basicCareCheck;
    notifyListeners();
  }

  void changenewpornCheck() {
    newpornCheck = !newpornCheck;
    notifyListeners();
  }

  void changeNumberOfAge1(bool isPlus) {
    if (age) {
      if (isPlus) {
        numAge1++;
      } else {
        if (numAge1 != 0) {
          numAge1--;
        }
      }
    }
    notifyListeners();
  }

  void changeNumberOfAge2(bool isPlus) {
    if (age) {
      if (isPlus) {
        numAge2++;
      } else {
        if (numAge2 != 0) {
          numAge2--;
        }
      }
    }
    notifyListeners();
  }

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

  void changeAge() {
    age = !age;
    notifyListeners();
  }

  void changePaymentRate() {
    paymentRate = !paymentRate;
    notifyListeners();
  }
}
