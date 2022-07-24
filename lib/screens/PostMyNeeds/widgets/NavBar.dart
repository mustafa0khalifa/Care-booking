import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/BookingsDashboard/bookingsDashboard.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/CareRecipients/careRecipients.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/budget.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/careCategory.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/caregiversInrAea.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/gender.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/location.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/schedule.dart';
import 'package:provider/provider.dart';

import '../../../providers/PostMyNeedsProvider/NavBarProvider.dart';
import '../../../providers/careCategoryProvider.dart';
import 'caregiverPreferences.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Oflutter.com'),
            accountEmail: Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          Consumer<NavBarProvider>(
            builder: (_, foo, __) => ListTile(
              leading: Icon(Icons.business_center_outlined),
              title: Text('Build your care request'),
              onTap: () => foo.changeBuild(),
            ),
          ),
          Consumer<NavBarProvider>(
              builder: (_, foo, __) =>
                  NavBarProvider.build ? Build(context) : SizedBox()),
          Divider(),
          Consumer<NavBarProvider>(
            builder: (_, foo, __) => ListTile(
              leading: Icon(Icons.reviews_outlined),
              title: Text('Review & submit your request'),
              onTap: () => foo.changeRiview(),
            ),
          ),
          Consumer<NavBarProvider>(
              builder: (_, foo, __) =>
                  NavBarProvider.review ? Review(context) : SizedBox()),
          Divider(),
          Consumer<NavBarProvider>(
            builder: (_, foo, __) => ListTile(
              leading: Icon(Icons.create_new_folder_outlined),
              title: Text('Create your account'),
              onTap: () => foo.changeCreat(),
            ),
          ),
          Consumer<NavBarProvider>(
              builder: (_, foo, __) =>
                  NavBarProvider.creat ? Creat(context) : SizedBox()),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => {
              Navigator.of(context).pushNamed(BookingsDashboard.routeName),
            },
          ),
        ],
      ),
    );
  }

  Widget Build(context) {
    return Column(children: [
      ListTile(
        leading: Icon(Icons.category_outlined),
        title: Text('Care Category'),
        onTap: () => {
          Navigator.of(context).pushNamed(CareCategory.routeName),
        },
      ),
      ListTile(
        leading: Icon(Icons.location_city_outlined),
        title: Text('Location'),
        onTap: () => {
          Navigator.of(context).pushNamed(Location.routeName),
        },
      ),
      ListTile(
        leading: Icon(Icons.girl_outlined),
        title: Text('Gender'),
        onTap: () => {
          Navigator.of(context).pushNamed(Gender.routeName),
        },
      ),
    ]);
  }

  Widget Review(context) {
    return Column(children: [
      ListTile(
        leading: Icon(Icons.g_mobiledata),
        title: Text('Here you go!'),
        onTap: () => {
          Navigator.of(context).pushNamed(CaregiversInrAea.routeName),
        },
      ),
      ListTile(
        leading: Icon(Icons.room_service_outlined),
        title: Text('Services'),
        onTap: () => {
          Navigator.of(context)
              .pushNamed(CareCategoryProvider.routCategorySelected),
        },
      ),
      ListTile(
        leading: Icon(Icons.room_preferences_outlined),
        title: Text('Preferences'),
        onTap: () => {
          Navigator.of(context).pushNamed(CaregiverPreferences.routeName),
        },
      ),
      ListTile(
        leading: Icon(Icons.schedule_outlined),
        title: Text('Schedule'),
        onTap: () => {
          Navigator.of(context).pushNamed(Schedule.routeName),
        },
      ),
    ]);
  }

  Widget Creat(context) {
    return Column(children: [
      ListTile(
        leading: Icon(Icons.bug_report_outlined),
        title: Text('Budget'),
        onTap: () => {
          Navigator.of(context).pushNamed(Budget.routeName),
        },
      ),
      ListTile(
        leading: Icon(Icons.receipt_long_rounded),
        title: Text('Care Recipients'),
        onTap: () => {
          Navigator.of(context).pushNamed(CareRecipients.routeName),
        },
      ),
    ]);
  }
}
