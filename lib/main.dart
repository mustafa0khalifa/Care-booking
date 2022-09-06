// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/NavBarProvider.dart';
import 'package:flutter_application_10000/providers/authProvider.dart';
import 'package:flutter_application_10000/providers/bookNowProvider.dart';
import 'package:flutter_application_10000/providers/forgetPassProvider.dart';
import 'package:flutter_application_10000/screens/BookNow/bookNow.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Services/childCare.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/WhenYoyNeed/buildRequest.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/careCategory.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/gender.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/locations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'providers/PostMyNeedsProvider/BrowseCaregiversProvider.dart';
import 'providers/PostMyNeedsProvider/CategoriesProvider.dart';
import 'providers/PostMyNeedsProvider/additionalServicesProvider.dart';
import 'providers/PostMyNeedsProvider/advancedNursingProvider.dart';
import 'providers/PostMyNeedsProvider/automaticMatchingOptionProvider.dart';
import 'providers/PostMyNeedsProvider/budgetProvider.dart';
import 'providers/PostMyNeedsProvider/careRecipientsProvider.dart';
import 'providers/PostMyNeedsProvider/caregiverPreferencesProvider.dart';
import 'providers/PostMyNeedsProvider/childCareProvider.dart';
import 'providers/PostMyNeedsProvider/elderlyCareProvider.dart';
import 'providers/PostMyNeedsProvider/pcrServicesProvider.dart';
import 'providers/PostMyNeedsProvider/scheduleDateProvider.dart';
import 'providers/PostMyNeedsProvider/scheduleProvider.dart';
import 'providers/bookDashboardProvide.dart';
import 'providers/careCategoryProvider.dart';
import 'providers/careCategoryProviderBokNow.dart';
import 'providers/itemFavoriteCareProvider.dart';
import 'providers/myBookingProvider.dart';
import 'providers/profileProvider.dart';
import 'screens/BookNow/widgets/AfterBookingRequest/afterBookingRequest.dart';
import 'screens/BookNow/widgets/CareRecipients/careRecipients2BookNow.dart';
import 'screens/BookNow/widgets/CareRecipients/careRecipients3BookNow.dart';
import 'screens/BookNow/widgets/CareRecipients/careRecipientsBookNow.dart';
import 'screens/BookNow/widgets/ScheduleBookNow.dart';
import 'screens/BookNow/widgets/Services/additionalServicesBookNow.dart';
import 'screens/BookNow/widgets/Services/advancedNursingBookNow.dart';
import 'screens/BookNow/widgets/Services/childCareBookNow.dart';
import 'screens/BookNow/widgets/Services/elderlyCareBookNow.dart';
import 'screens/BookNow/widgets/Services/pcrServicesBookNow.dart';
import 'screens/BookNow/widgets/acceptBookingBookNow.dart';
import 'screens/BookNow/widgets/afterPostingRequestBookNow.dart';
import 'screens/BookNow/widgets/careCategoryBookNow.dart';
import 'screens/BookNow/widgets/WhereYouNeedBookNow.dart';
import 'screens/BookNow/widgets/caregaverClientRequestBookNow.dart';
import 'screens/BookNow/widgets/caregiversInrAeaBookNow.dart';
import 'screens/BookNow/widgets/completeYourRequestBookNow.dart';
import 'screens/BookNow/widgets/myCareRequestSummaryBookNow.dart';
import 'screens/BookNow/widgets/pricingCalculatorBookNow.dart';
import 'screens/BookingsDashboard/bookingsDashboard.dart';
import 'screens/CaregiverProfile/caregiverProfile.dart';
import 'screens/ClientNotifications/clientNotifications.dart';
import 'screens/FavoriteCaregivers/favoriteCaregivers.dart';
import 'screens/ForgetPassword/forgetPassword.dart';
import 'screens/MyBookings/myBookings.dart';
import 'screens/MyBookings/widgets/bookingDetails.dart';
import 'screens/MyBookings/widgets/bookingRate.dart';
import 'providers/PostMyNeedsProvider/buildCategoriesProvider.dart';
import 'screens/MyBookings/widgets/report.dart';
import 'screens/PostMyNeeds/postMyNeeds.dart';
import 'screens/PostMyNeeds/widgets/BrowseCaregivers/browseCaregivers.dart';
import 'screens/PostMyNeeds/widgets/BrowseCaregivers/widgets/filter.dart';
import 'screens/PostMyNeeds/widgets/BrowseCaregivers/widgets/mainBrowseCaregaver.dart';
import 'screens/PostMyNeeds/widgets/CareRecipients/careRecipients.dart';
import 'screens/PostMyNeeds/widgets/CareRecipients/careRecipients2.dart';
import 'screens/PostMyNeeds/widgets/CareRecipients/careRecipients3.dart';
import 'screens/PostMyNeeds/widgets/CareRecipients/mainRecipients.dart';
import 'screens/PostMyNeeds/widgets/Categories/widgets/buildCaterorie.dart';
import 'screens/PostMyNeeds/widgets/Categories/widgets/reviewCaterorie.dart';
import 'screens/PostMyNeeds/widgets/EnterAfterPost.dart';
import 'screens/PostMyNeeds/widgets/Services/additionalServices.dart';
import 'screens/PostMyNeeds/widgets/Services/advancedNursing.dart';
import 'screens/PostMyNeeds/widgets/Services/elderlyCare.dart';
import 'screens/PostMyNeeds/widgets/Services/pcrServices.dart';
import 'screens/PostMyNeeds/widgets/AfterBookingRequest/afterBookingRequest.dart';
import 'screens/PostMyNeeds/widgets/WhenYoyNeed/oneVisite.dart';
import 'screens/PostMyNeeds/widgets/WhenYoyNeed/variable.dart';
import 'screens/PostMyNeeds/widgets/acceptBooking.dart';
import 'screens/PostMyNeeds/widgets/afterPostingRequest.dart';
import 'screens/PostMyNeeds/widgets/automaticMatchingOption.dart';
import 'screens/PostMyNeeds/widgets/budget.dart';
import 'screens/PostMyNeeds/widgets/caregaverClientRequest.dart';
import 'screens/PostMyNeeds/widgets/caregiverPreferences.dart';
import 'screens/PostMyNeeds/widgets/caregiversInrAea.dart';
import 'screens/PostMyNeeds/widgets/Categories/categories.dart';
import 'screens/PostMyNeeds/widgets/completeYourRequest.dart';
import 'screens/PostMyNeeds/widgets/myCareRequestSummary.dart';
import 'screens/PostMyNeeds/widgets/WhenYoyNeed/schedule.dart';
import 'screens/PostMyNeeds/widgets/whatToExpect.dart';
import 'screens/auth/mainAuth.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const _MyApp());
}

class _MyApp extends StatelessWidget {
  const _MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvidere(),
        ),
        ChangeNotifierProvider(
          create: (_) => ForgetPassProvidere(),
        ),
        ChangeNotifierProvider(
          create: (_) => MyBookingProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChildCareProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ElderlyCareProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AdvancedNursingProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => PcrServicesProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CareCategoryProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CareCategoryBookNowProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AdditionalServicesProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ScheduleProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => NavBarProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CaregiverPreferencesProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => BudgetProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CareRecipientsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AutomaticMatchingOptionProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => BrowseCaregiversProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => bookNowProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => BookDashboardProvide(),
        ),
        ChangeNotifierProvider(
          create: (_) => ItemFavoriteCareProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CategoriesProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => BuildCategoriesProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ScheduleDateProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProfileProvider(),
        ),
      ], child: MyApp()),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  @override
  void initState() {
    super.initState();

    _prefs.then((SharedPreferences prefs) async {
      final prefs = await SharedPreferences.getInstance();
      final key = 'fromPostMyNeeds';
      prefs.setString(key, 'true');
    });
  }

  @override
  Widget build(BuildContext context) {
    // final AuthProvidere auth = AuthProvidere();
    bool isLoged = AuthProvidere.isLog;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Client Portal',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Lato',
        ),
        home: isLoged ? BookingsDashboard() : AutomaticMatchingOption(),
        routes: {
          AuthScreen.routeName: (context) => AuthScreen(),
          ForgetPassword.routeName: (context) => ForgetPassword(),
          BookingsDashboard.routeName: (context) => BookingsDashboard(),
          MyBookings.routeName: (context) => MyBookings(),
          BookingDetails.routeName: (context) => BookingDetails(),
          BookingRate.routeName: (context) => BookingRate(),
          Report.routeName: (context) => Report(),
          FavoriteCaregivers.routeName: (context) => FavoriteCaregivers(),
          ClientNotifications.routeName: (context) => ClientNotifications(),
          PostMyNeeds.routeName: (context) => PostMyNeeds(),
          Categories.routeName: (context) => Categories(),
          BuildCategory.routeName: (context) => BuildCategory(),
          ReviewCaterorie.routeName: (context) => ReviewCaterorie(),
          Locations.routeName: (context) => Locations(),
          CareCategory.routeName: (context) => CareCategory(),
          Gender.routeName: (context) => Gender(),
          CaregiversInrAea.routeName: (context) => CaregiversInrAea(),
          ChildCare.routeName: (context) => ChildCare(),
          ElderlyCare.routeName: (context) => ElderlyCare(),
          AdvancedNursing.routeName: (context) => AdvancedNursing(),
          PcrServices.routeName: (context) => PcrServices(),
          AdditionalServices.routeName: (context) => AdditionalServices(),
          BuildRequest.routeName: (context) => BuildRequest(),
          Schedule.routeName: (context) => Schedule(),
          OneVisite.routeName: (context) => OneVisite(),
          Variable.routeName: (context) => Variable(),
          CaregiverPreferences.routeName: (context) => CaregiverPreferences(),
          Budget.routeName: (context) => Budget(),
          MainRecipients.routeName: (context) => MainRecipients(),
          CareRecipients.routeName: (context) => CareRecipients(),
          CareRecipients2.routeName: (context) => CareRecipients2(),
          CareRecipients3.routeName: (context) => CareRecipients3(),
          MyCareRequestSummary.routeName: (context) => MyCareRequestSummary(),
          AutomaticMatchingOption.routeName: (context) =>
              AutomaticMatchingOption(),
          CaregaverClientRequest.routeName: (context) =>
              CaregaverClientRequest(),
          WhatToExpect.routeName: (context) => WhatToExpect(),
          EnterAfterPost.routeName: (context) => EnterAfterPost(),
          AfterPostingRequest.routeName: (context) => AfterPostingRequest(),
          AfterBookingRequest.routeName: (context) => AfterBookingRequest(),
          AcceptBooking.routeName: (context) => AcceptBooking(),
          CompleteYourRequest.routeName: (context) => CompleteYourRequest(),
          BrowseCaregivers.routeName: (context) => BrowseCaregivers(),
          Filter.routeName: (context) => Filter(),
          MainBrowseCaregaver.routeName: (context) => MainBrowseCaregaver(),
          CaregiverProfile.routeName: (context) => CaregiverProfile(),
          BookNow.routeName: (context) => BookNow(),
          CareCategoryBookNow.routeName: (context) => CareCategoryBookNow(),
          ScheduleBookNow.routeName: (context) => ScheduleBookNow(),
          WhereYouNeedBookNow.routeName: (context) => WhereYouNeedBookNow(),
          ChildCareBookNow.routeName: (context) => ChildCareBookNow(),
          ElderlyCareBookNow.routeName: (context) => ElderlyCareBookNow(),
          AdvancedNursingBookNow.routeName: (context) =>
              AdvancedNursingBookNow(),
          PcrServicesBookNow.routeName: (context) => PcrServicesBookNow(),
          AdditionalServicesBookNow.routeName: (context) =>
              AdditionalServicesBookNow(),
          PricingCalculatorBookNow.routeName: (context) =>
              PricingCalculatorBookNow(),
          CaregiversInrAeaBookNow.routeName: (context) =>
              CaregiversInrAeaBookNow(), //////////////////////llll
          CareRecipientsBookNow.routeName: (context) => CareRecipientsBookNow(),
          CareRecipients2BookNow.routeName: (context) =>
              CareRecipients2BookNow(),
          CareRecipients3BookNow.routeName: (context) =>
              CareRecipients3BookNow(),
          MyCareRequestSummaryBookNow.routeName: (context) =>
              MyCareRequestSummaryBookNow(),

          CaregaverClientRequestBookNow.routeName: (context) =>
              CaregaverClientRequestBookNow(),

          AfterPostingRequestBookNow.routeName: (context) =>
              AfterPostingRequestBookNow(),
          AfterBookingRequestBookNow.routeName: (context) =>
              AfterBookingRequestBookNow(),
          AcceptBookingBookNow.routeName: (context) => AcceptBookingBookNow(),
          CompleteYourRequestBookNow.routeName: (context) =>
              CompleteYourRequestBookNow(),
        });
  }
}
