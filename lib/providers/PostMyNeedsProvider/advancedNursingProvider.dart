import 'package:flutter/material.dart';

class AdvancedNursingProvider extends ChangeNotifier {
  static bool intravenousTherapy = false;

  static bool insertion = false;

  static bool antibiotic = false;

  static bool injections = false;

  static bool otherAdvanced = false;

  static bool woundCare = false;

  static bool foleyInsertionFemale = false;

  static bool foleyInsertionMale = false;

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

  void changeIntravenousTherapyCheckbox() {
    intravenousTherapy = !intravenousTherapy;

    notifyListeners();
  }

  void changeInsertionCheckbox() {
    insertion = !insertion;

    notifyListeners();
  }

  void changeAntibioticCheckbox() {
    antibiotic = !antibiotic;

    notifyListeners();
  }

  void changeInjectionsCheckbox() {
    injections = !injections;

    notifyListeners();
  }

  void changeOtherAdvancedCheckbox() {
    otherAdvanced = !otherAdvanced;

    notifyListeners();
  }

  void changeWoundCareCheckbox() {
    woundCare = !woundCare;

    notifyListeners();
  }

  void changeFoleyInsertionFemaleCheckbox() {
    foleyInsertionFemale = !foleyInsertionFemale;

    notifyListeners();
  }

  void changeFoleyInsertionMaleCheckbox() {
    foleyInsertionMale = !foleyInsertionMale;

    notifyListeners();
  }

  void changeSutureRemovalCheckbox() {
    sutureRemoval = !sutureRemoval;

    notifyListeners();
  }

  void changeHemovacRemovalCheckbox() {
    hemovacRemoval = !hemovacRemoval;

    notifyListeners();
  }

  void changeDiabeticCheckbox() {
    diabetic = !diabetic;

    notifyListeners();
  }

  void changeCVACheckbox() {
    CVA = !CVA;

    notifyListeners();
  }

  void changeOpsCheckbox() {
    Ops = !Ops;

    notifyListeners();
  }

  void changeTracheostomyCareCheckbox() {
    tracheostomyCare = !tracheostomyCare;

    notifyListeners();
  }

  void changeGastrostomyCareCheckbox() {
    gastrostomyCare = !gastrostomyCare;

    notifyListeners();
  }

  void changeAdjustingSettingCheckbox() {
    adjustingSetting = !adjustingSetting;

    notifyListeners();
  }

  void changeSuctioningCheckbox() {
    suctioning = !suctioning;

    notifyListeners();
  }

  void changeUlcerCareCheckbox() {
    ulcerCare = !ulcerCare;

    notifyListeners();
  }
}
