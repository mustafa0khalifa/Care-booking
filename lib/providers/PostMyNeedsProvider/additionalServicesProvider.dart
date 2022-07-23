import 'package:flutter/foundation.dart';

class AdditionalServicesProvider extends ChangeNotifier {
  static bool lightHousekeeping = false;
  static bool cookingForElderly = false;
  static bool cookingForKids = false;
  static bool pickUp = false;
  static bool transportation = false;
  static bool shopping = false;

  static bool isSwitchedSmoker = false;
  static bool isSwitchedCatFriendly = false;
  static bool isSwitchedDogFriendly = false;

  static bool haveACar = false;
  static bool haveAMotorcycle = false;
  static bool covidVaccinated = false;

  void changecovidVaccinatedCheckbox() {
    covidVaccinated = !covidVaccinated;

    notifyListeners();
  }

  void changehaveAMotorcycleCheckbox() {
    haveAMotorcycle = !haveAMotorcycle;

    notifyListeners();
  }

  void changehaveACarCheckbox() {
    haveACar = !haveACar;

    notifyListeners();
  }

  void changeSwitchedDogFriendly() {
    isSwitchedDogFriendly = !isSwitchedDogFriendly;

    notifyListeners();
  }

  void changeSwitchedCatFriendly() {
    isSwitchedCatFriendly = !isSwitchedCatFriendly;

    notifyListeners();
  }

  void changeSwitchedSmoker() {
    isSwitchedSmoker = !isSwitchedSmoker;

    notifyListeners();
  }

  void changeshoppingCheckbox() {
    shopping = !shopping;

    notifyListeners();
  }

  void changetransportationCheckbox() {
    transportation = !transportation;

    notifyListeners();
  }

  void changepickUpCheckbox() {
    pickUp = !pickUp;

    notifyListeners();
  }

  void changecookingForKidsCheckbox() {
    cookingForKids = !cookingForKids;

    notifyListeners();
  }

  void changecookingForElderlyCheckbox() {
    cookingForElderly = !cookingForElderly;

    notifyListeners();
  }

  void changelightHousekeepingCheckbox() {
    lightHousekeeping = !lightHousekeeping;

    notifyListeners();
  }
}
