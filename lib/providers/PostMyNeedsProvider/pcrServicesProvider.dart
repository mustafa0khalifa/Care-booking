import 'package:flutter/material.dart';

class PcrServicesProvider extends ChangeNotifier {
  static int numberOfPeopleTest = 3;
  static int numberOfCovidTesting = 3;
  static int numberOfBloodTesting = 3;
  static int numberOfOtherLab = 3;

  void changeNumberOfPeopleTest(bool isPlus) {
    if (isPlus) {
      numberOfPeopleTest++;
    } else {
      if (numberOfPeopleTest != 0) {
        numberOfPeopleTest--;
      }
    }
    notifyListeners();
  }

  void changeNumberOfCovidTesting(bool isPlus) {
    if (covidTestingCheckbox) {
      if (isPlus) {
        numberOfCovidTesting++;
      } else {
        if (numberOfCovidTesting != 0) {
          numberOfCovidTesting--;
        }
      }
      if (numberOfCovidTesting == 0) {
        covidTestingCheckbox = false;
      }
    }
    notifyListeners();
  }

  void changeNumberOfBloodTesting(bool isPlus) {
    if (bloodTestingCheckbox) {
      if (isPlus) {
        numberOfBloodTesting++;
      } else {
        if (numberOfBloodTesting != 0) {
          numberOfBloodTesting--;
        }
      }
    }

    if (numberOfBloodTesting == 0) {
      bloodTestingCheckbox = false;
    }
    notifyListeners();
  }

  void changeNumberOfOtherLab(bool isPlus) {
    if (otherLabCheckbox) {
      if (isPlus) {
        numberOfOtherLab++;
      } else {
        if (numberOfOtherLab != 0) {
          numberOfOtherLab--;
        }
      }
    }
    if (numberOfOtherLab == 0) {
      otherLabCheckbox = false;
    }
    notifyListeners();
  }

  static bool covidTestingCheckbox = false;
  static bool bloodTestingCheckbox = false;
  static bool otherLabCheckbox = false;

  static bool standardPCR = false;

  static bool fastPCR = false;

  static bool rapidPCR = false;

  static bool immunityPCR = false;

  static bool covidGeneXpertTest = false;

  static bool allBloodTestTypes = false;

  static bool collectingUrine = false;

  static bool sutureRemoval = false;

  static bool hemovacRemoval = false;
  static bool diabetic = false;
  static bool CVA = false;
  static bool Ops = false;
  static bool tracheostomyCare = false;
  static bool gastrostomyCare = false;
  static bool adjustingSetting = false;
  static bool suctioning = false;
  static bool ulcerCare = false;

  void changecovidTestingCheckbox() {
    covidTestingCheckbox = !covidTestingCheckbox;

    if (covidTestingCheckbox) {
      numberOfCovidTesting = 1;
    } else {
      numberOfCovidTesting = 0;
    }

    notifyListeners();
  }

  void changeOtherLabCheckbox() {
    otherLabCheckbox = !otherLabCheckbox;
    if (otherLabCheckbox) {
      numberOfOtherLab = 1;
    } else {
      numberOfOtherLab = 0;
    }

    notifyListeners();
  }

  void changeBloodTestingCheckbox() {
    bloodTestingCheckbox = !bloodTestingCheckbox;
    if (bloodTestingCheckbox) {
      numberOfBloodTesting = 1;
    } else {
      numberOfBloodTesting = 0;
    }
    notifyListeners();
  }

  void changeCollectingUrineCheckbox() {
    collectingUrine = !collectingUrine;

    notifyListeners();
  }

  void changeStandardPCRCheckbox() {
    standardPCR = !standardPCR;

    notifyListeners();
  }

  void changeAllBloodTestTypesCheckbox() {
    allBloodTestTypes = !allBloodTestTypes;

    notifyListeners();
  }

  void changeFastPCRCheckbox() {
    fastPCR = !fastPCR;

    notifyListeners();
  }

  void changeRapidPCRCheckbox() {
    rapidPCR = !rapidPCR;

    notifyListeners();
  }

  void changeImmunityPCRCheckbox() {
    immunityPCR = !immunityPCR;

    notifyListeners();
  }

  void changeCovidGeneXpertTestCheckbox() {
    covidGeneXpertTest = !covidGeneXpertTest;

    notifyListeners();
  }
}
