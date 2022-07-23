import 'favoriteCaregiversModel.dart';
import 'pendingBookingsModel.dart';

class TestModel {
  static PendingBookingsModel testPending = new PendingBookingsModel(
      CareType: "Child Care",
      agePreferences: "I prefer caregiver between 20 and 30",
      schedule_Shift: "Every Monday from 5:00 AM to 8:00 AM",
      careRecipientsCount: "2 Care ",
      careRecipientsDetails: "Recipient 5 kg, Male, 3 months",
      categoriesDetails: "2 Infant (2 months - 3 months) ",
      additionalServices: "   ",
      caregiverWeight: "50 KM  - 20 minutes",
      certificationsPreferences: "Certifications Preferences: None",
      genderPreferences: "Gender Preferences: Prefer Male",
      languagesPreferences: "Languages Preferences: None",
      price: 25);

  static FavoriteCaregiversModel testFavoriteCaregivers =
      new FavoriteCaregiversModel(
    firstName: 'mustafa saeed',
    age: 25,
    qualifications: 'Physical therapist',
    nationality: 'Lebanese Arabic',
    rating: 3,
    distance: 20.0,
    caregiversBiography:
        'A physical therapist who specializes in helping children with special needs and holds a certificate of experience from an internationally recognized nursing home',
    iCONS: [''],
    providedHoursofcare: 6,
    clientReferences: 'Lebanon - Beirut',
  );
}
