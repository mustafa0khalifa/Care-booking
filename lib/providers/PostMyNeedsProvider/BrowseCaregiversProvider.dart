import 'package:flutter/cupertino.dart';

class BrowseCaregiversProvider extends ChangeNotifier {
  static String browseCaregiversMode = "filter";
  static String groubVal = '';
  static String groubVal2 = "";
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
  static bool bachelor = false;

  static bool noDegree = false;
  static bool brevet = false;
  static bool highSchool = false;
  static bool master = false;
  static bool PhD = false;
  static bool years = false;

  static bool noDegree2 = false;
  static bool brevet2 = false;
  static bool highSchool2 = false;
  static bool master2 = false;
  static bool PhD2 = false;
  static bool years2 = false;

  static bool noDegree3 = false;
  static bool brevet3 = false;
  static bool highSchool3 = false;
  static bool master3 = false;
  static bool PhD3 = false;
  static bool years3 = false;

  static bool clickGender = false;
  static bool setGender = false;

  static bool clickDistance = false;
  static bool setDistance = false;

  static bool clickCareRequired = false;
  static bool setCareRequired = false;

  static bool clickPayment = false;
  static bool setPayment = false;

  static bool clickAge = false;
  static bool setAge = false;

  static bool clickServicesRequirede = false;
  static bool setServicesRequirede = false;

  static bool clickYears = false;
  static bool setYears = false;

  static bool clickLanguage = false;
  static bool setLanguage = false;

  static bool clickEducation = false;
  static bool setEducation = false;

  static bool clickAdditional = false;
  static bool setAdditional = false;

  static bool clickOther = false;
  static bool setOther = false;

  void resetFilter() {
    changesetGender(false);
    changesetDistance(false);
    changesetCareRequired(false);
    changesetPayment(false);
    changesetAge(false);
    changesetServicesRequirede(false);
    changesetCaregiverType(false);
    changesetYears(false);
    changesetLanguage(false);
    changesetEducation(false);
    changesetAdditional(false);
    changesetOther(false);
  }

  void changeclickOther() {
    clickOther = !clickOther;
    notifyListeners();
  }

  void changesetOther(bool set) {
    setOther = set;
    if (!set) {
      noDegree3 = false;
      brevet3 = false;
      highSchool3 = false;
      master3 = false;
      PhD3 = false;
    }

    notifyListeners();
  }

  void changeclickAdditional() {
    clickAdditional = !clickAdditional;
    notifyListeners();
  }

  void changesetAdditional(bool set) {
    setAdditional = set;
    if (!set) {
      noDegree2 = false;
      brevet2 = false;
      highSchool2 = false;
      master2 = false;
      PhD2 = false;
    }

    notifyListeners();
  }

  void changeclickEducation() {
    clickEducation = !clickEducation;
    notifyListeners();
  }

  void changesetEducation(bool set) {
    setEducation = set;

    if (!set) {
      if (!set) {
        noDegree = false;
        brevet = false;
        highSchool = false;
        master = false;
        PhD = false;
      }
    }

    notifyListeners();
  }

  void changeclickLanguage() {
    clickLanguage = !clickLanguage;
    notifyListeners();
  }

  void changesetLanguage(bool set) {
    setLanguage = set;

    notifyListeners();
  }

  void changeclickYears() {
    clickYears = !clickYears;
    notifyListeners();
  }

  void changesetYears(bool set) {
    setYears = set;

    notifyListeners();
  }

  static bool clickCaregiverType = false;
  static bool setCaregiverType = false;

  void changeclickCaregiverType() {
    clickCaregiverType = !clickCaregiverType;
    notifyListeners();
  }

  void changesetCaregiverType(bool set) {
    setCaregiverType = set;
    if (!set) {
      registeredNurseCheck = false;
      practicalNurseCheck = false;
    }

    notifyListeners();
  }

  void changeclickServicesRequirede() {
    clickServicesRequirede = !clickServicesRequirede;
    notifyListeners();
  }

  void changesetServicesRequirede(bool set) {
    setServicesRequirede = set;

    if (!set) {
      newpornCheck = false;
      basicCareCheck = false;
      service2Check = false;
      infantCheck = false;
      toddlerCheck = false;
      preschoolerCheck = false;
      primaryschoolerCheck = false;
    }
    notifyListeners();
  }

  void changeclickAge() {
    clickAge = !clickAge;
    notifyListeners();
  }

  void changesetAge(bool set) {
    setAge = set;

    notifyListeners();
  }

  void changeclickPayment() {
    clickPayment = !clickPayment;
    notifyListeners();
  }

  void changesetPayment(bool set) {
    setPayment = set;
    if (!set) {
      valueSlider2 = 0;
    }
    notifyListeners();
  }

  void changeclickCareRequired() {
    clickCareRequired = !clickCareRequired;
    notifyListeners();
  }

  void changesetCareRequired(bool set) {
    setCareRequired = set;
    if (!set) {
      groubVal2 = '';
    }
    notifyListeners();
  }

  void changeclickDistance() {
    clickDistance = !clickDistance;
    notifyListeners();
  }

  void changesetDistance(bool set) {
    setDistance = set;
    if (!set) {
      valueSlider = 0;
    }
    notifyListeners();
  }

  void changeclickGender() {
    clickGender = !clickGender;
    notifyListeners();
  }

  void changesetGender(bool set) {
    setGender = set;
    if (!set) {
      groubVal = '';
    }
    notifyListeners();
  }

  void changeyears() {
    years = !years;
    notifyListeners();
  }

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

  void changehighSchool() {
    highSchool = !highSchool;
    notifyListeners();
  }

  void changebrevet() {
    brevet = !brevet;
    notifyListeners();
  }

  void changenoDegree2() {
    noDegree2 = !noDegree2;
    notifyListeners();
  }

  void changePhD2() {
    PhD2 = !PhD2;
    notifyListeners();
  }

  void changemaster2() {
    master2 = !master2;
    notifyListeners();
  }

  void changehighSchool2() {
    highSchool2 = !highSchool2;
    notifyListeners();
  }

  void changebrevet2() {
    brevet2 = !brevet2;
    notifyListeners();
  }

  void changenoDegree3() {
    noDegree3 = !noDegree3;
    notifyListeners();
  }

  void changePhD3() {
    PhD3 = !PhD3;
    notifyListeners();
  }

  void changemaster3() {
    master3 = !master3;
    notifyListeners();
  }

  void changehighSchool3() {
    highSchool3 = !highSchool3;
    notifyListeners();
  }

  void changebrevet3() {
    brevet3 = !brevet3;
    notifyListeners();
  }

  void changebachelor() {
    bachelor = !bachelor;
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

    changesetDistance(true);

    notifyListeners();
  }

  void changeValueSlider2(double val) {
    valueSlider2 = val;
    changesetPayment(true);

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
    changesetGender(true);
    notifyListeners();
  }

  void changeGroubVal2(String val) {
    groubVal2 = val;
    changesetCareRequired(true);
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
