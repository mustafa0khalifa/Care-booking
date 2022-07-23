import 'dart:ffi';

class FavoriteCaregiversModel {
  String firstName;
  int age;
  String nationality;
  double distance;
  int rating;
  double providedHoursofcare;
  String clientReferences;
  String caregiversBiography;
  String qualifications;
  List<String> iCONS;

  FavoriteCaregiversModel({
    required this.firstName,
    required this.age,
    required this.nationality,
    required this.distance,
    required this.rating,
    required this.providedHoursofcare,
    required this.clientReferences,
    required this.caregiversBiography,
    required this.qualifications,
    required this.iCONS,
  });
}
