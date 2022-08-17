import 'caregaverModel.dart';
import 'favoriteCaregiversModel.dart';
import 'pendingBookingsModel.dart';

class TestModel {
  static CaregaverModel testCaregaverModel = new CaregaverModel(
      imageUrl: 'assets/images/profile.jpg',
      firstName: 'mustafa saeed',
      age: 25,
      qualifications: 'baby sitter',
      nationality: 'Lebanese Arabic',
      rating: 3,
      distance: 20.0,
      providedHoursOfCare: '6 houres',
      clientRef: 'NB Client References  ',
      badgesIcons: ['Badges - ICONS (up to 5)'],
      aboutMe: 'Biography',
      location: 'Town',
      providedServices: [
        'Child Care',
        'Can Care for more than 4 children',
        '     Newborn Care',
        '     Infant Care',
        '     Newborn Care',
      ],
      additionalServices: [
        'Light housekeeping',
        'Cooking for Kids',
        'Cooking for Elderly',
        'Running errands and shopping',
      ],
      ratingReviewsAndReferences: [
        'Rating - Average Rating per Rating Specification',
        'Reviews List (More Links)',
        'References List (More Link)'
      ],
      experience: [
        'I have [HH] hours of care to [XX] families via Find a Nurse since I joined in [YYYY].',
        '     Sub Category 1: N years of experience',
        '     Sub Category 2: N years of experience',
        '     Sub Category 3: N years of experience,'
      ],
      qualificationsEducation: [
        'Member of Syndicate',
        'Highest Degree',
        'Educational Certificates List',
        'Qualifications List',
        'Certifications List ',
        'Skills List'
      ],
      fees: [
        '- Child Care - 8 hours shift - 17 USD  [Calculate]',
        '- Elderly Care - 8 hours shift - 17 USD [Calculate]',
        '- Advanced Nursing Care ',
        'You will be billed per hour according to the below pricing table',
        '1 hour shift - 20 USD',
        '2 hours shift - 20 USD	',
        '3 hours shift - 20 USD',
        '4 hours shift - 20 USD',
        '- Laboratory',
        'The lab test fee does NOT include the lab fee and only covers the technician fee Sub Category 1 - 20 USD'
      ],
      avallabillty: [''],
      generalAvallabillty: [
        'I generally have a fixed and predictable schedule',
        'I generally don\'t have a fixed schedule',
        'I am generally available all time'
      ],
      specialRemarks: [
        'Work/ Unavailable at night',
        'Work/ Unavailable on weekends',
        'Provide Live-in Care',
        'Can Travel abroad - Passport Expiry Date'
      ],
      documents: [
        'ID',
        'Photo',
        'Certificate',
        'Record - سجل عدلي',
      ],
      additionalInformation: [
        'Non-smoker',
        'Dog friendly',
        'Cat friendly',
        'Has a car',
        'Languages (French - Spanish)',
        'Have allergies ',
        'Take Medications',
        'Suffer from XYZ'
      ]);
  static PendingBookingsModel testPending = new PendingBookingsModel(
      CareType: "Child Care",
      agePreferences: "between 20 and 30 years old",
      schedule_Shift: "Every Monday from 5:00 AM to 8:00 AM",
      careRecipientsCount: "2 Care ",
      careRecipientsDetails: "Recipient 5 kg, Male, 3 months",
      categoriesDetails: "2 Infant (2 months - 3 months) ",
      additionalServices: "   ",
      caregiverWeight: "50 KM  - 20 minutes",
      certificationsPreferences: "Certifications Preferences: None",
      genderPreferences: "Male",
      languagesPreferences: "Arabic",
      price: 25);

  static PendingBookingsModel testPending2 = new PendingBookingsModel(
      CareType: "Child Care",
      agePreferences: "Jane",
      schedule_Shift: "Requested on 22 July 2022",
      additionalServices: "this booking will expire on",
      careRecipientsCount: "30 July 2022",
      careRecipientsDetails:
          "if you don't book a caregiver before this data. the booking will be canceled",
      categoriesDetails: "2 Infant (2 months - 3 months) ",
      caregiverWeight: "50 KM  - 20 minutes",
      certificationsPreferences: "Certifications Preferences: None",
      genderPreferences: "Male",
      languagesPreferences: "Arabic",
      price: 25);

  static FavoriteCaregiversModel testFavoriteCaregivers =
      new FavoriteCaregiversModel(
    imageUrl: 'assets/images/profile.jpg',
    firstName: 'mustafa saeed',
    age: 25,
    nationality: 'Lebanese Arabic',
    clientReferences: 'Lebanon - Beirut',
    qualifications: 'baby sitter',
    caregiversBiography:
        'A physical therapist who specializes in helping children with special needs and holds a certificate of experience from an internationally recognized nursing home',
    providedHoursofcare: 6,
    rating: 3,
    distance: 20.0,
  );
}
