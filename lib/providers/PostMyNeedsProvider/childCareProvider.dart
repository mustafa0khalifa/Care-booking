import 'package:flutter/material.dart';

class ChildCareProvider extends ChangeNotifier {
  static bool showNewborn = true;

  void changeshowNewborn() {
    showNewborn = !showNewborn;
    notifyListeners();
  }

  static bool newbornCheckbox = true;
  static int numberOfChildrenNewborn = 0;

  static bool infantCheckbox = false;
  static int numberOfInfant = 0;

  static bool toddlerCheckbox = false;
  static int numberOfToddler = 0;

  static bool preschoolerCheckbox = false;
  static int numberOfPreschooler = 0;

  static bool primarySchoolerCheckbox = false;
  static int numberOfPrimarySchooler = 0;

  static int numberOfChildren = 0;

  void changeNewbornCheckbox() {
    newbornCheckbox = !newbornCheckbox;
    if (!newbornCheckbox) {
      numberOfChildrenNewborn = 0;
    } else {
      numberOfChildrenNewborn = 1;
    }

    notifyListeners();
  }

  void changeNumberOfChildrenNewborn(bool isPlus) {
    if (isPlus) {
      numberOfChildrenNewborn++;
    } else {
      if (numberOfChildrenNewborn != 0) {
        numberOfChildrenNewborn--;
      }
    }
    notifyListeners();
  }

  void changeInfantCheckbox() {
    infantCheckbox = !infantCheckbox;
    if (!infantCheckbox) {
      numberOfInfant = 0;
    } else {
      numberOfInfant = 1;
    }

    notifyListeners();
  }

  void changeNumberOfInfant(bool isPlus) {
    if (isPlus) {
      numberOfInfant++;
    } else {
      if (numberOfInfant != 0) {
        numberOfInfant--;
      }
    }

    notifyListeners();
  }

  void changeToddlerCheckbox() {
    toddlerCheckbox = !toddlerCheckbox;
    if (!toddlerCheckbox) {
      numberOfToddler = 0;
    } else {
      numberOfToddler = 1;
    }

    notifyListeners();
  }

  void changeNumberOfToddler(bool isPlus) {
    if (isPlus) {
      numberOfToddler++;
    } else {
      if (numberOfToddler != 0) {
        numberOfToddler--;
      }
    }

    notifyListeners();
  }

  void changePreschoolerCheckbox() {
    preschoolerCheckbox = !preschoolerCheckbox;
    if (!preschoolerCheckbox) {
      numberOfPreschooler = 0;
    } else {
      numberOfPreschooler = 1;
    }

    notifyListeners();
  }

  void changeNumberOfPreschooler(bool isPlus) {
    if (isPlus) {
      numberOfPreschooler++;
    } else {
      if (numberOfPreschooler != 0) {
        numberOfPreschooler--;
      }
    }

    notifyListeners();
  }

  void changePrimarySchoolerCheckbox() {
    primarySchoolerCheckbox = !primarySchoolerCheckbox;
    if (!primarySchoolerCheckbox) {
      numberOfPrimarySchooler = 0;
    } else {
      numberOfPrimarySchooler = 1;
    }

    notifyListeners();
  }

  void changeNumberOfPrimarySchooler(bool isPlus) {
    if (isPlus) {
      numberOfPrimarySchooler++;
    } else {
      if (numberOfPrimarySchooler != 0) {
        numberOfPrimarySchooler--;
      }
    }

    notifyListeners();
  }

  void calculateNumberOfChildren() {
    numberOfChildren = numberOfChildrenNewborn +
        numberOfInfant +
        numberOfPreschooler +
        numberOfPrimarySchooler +
        numberOfToddler;

    notifyListeners();
  }
}
