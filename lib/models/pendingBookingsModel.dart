class PendingBookingsModel {
  String CareType;
  String caregiverWeight;
  String genderPreferences;
  String agePreferences;
  String certificationsPreferences;
  String languagesPreferences;
  String careRecipientsCount;
  String careRecipientsDetails;
  String schedule_Shift;
  String additionalServices;
  String categoriesDetails;
  int price;

  PendingBookingsModel({
    required this.CareType,
    required this.caregiverWeight,
    required this.genderPreferences,
    required this.agePreferences,
    required this.certificationsPreferences,
    required this.languagesPreferences,
    required this.careRecipientsCount,
    required this.careRecipientsDetails,
    required this.schedule_Shift,
    required this.price,
    required this.additionalServices,
    required this.categoriesDetails,
  });
}
