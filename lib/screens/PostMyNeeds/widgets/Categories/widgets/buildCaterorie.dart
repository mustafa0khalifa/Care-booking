import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/CareRecipients/careRecipients.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/careCategory.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/caregiversInrAea.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/gender.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/locations.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/WhenYoyNeed/schedule.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/PostMyNeedsProvider/CategoriesProvider.dart';
import '../../../../../providers/careCategoryProvider.dart';
import '../../../../../providers/PostMyNeedsProvider/buildCategoriesProvider.dart';
import '../../budget.dart';
import '../../caregiverPreferences.dart';

class BuildCategory extends StatefulWidget {
  static const routeName = '/buildCaterorie-screen';

  @override
  _BuildCaterorieState createState() => _BuildCaterorieState();
}

class _BuildCaterorieState extends State<BuildCategory> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Build your care request",
            style: TextStyle(
                color: Color(0xff28306e),
                fontFamily: 'Helvetica-Bold',
                fontSize: 20),
          ),
        ),
      ),
      body: Container(
        height: deviceSize.height,
        width: deviceSize.width,
        padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
        margin: EdgeInsets.all(deviceSize.height * 0.03),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Please choose your request",
                style: TextStyle(
                    color: Color(0xff28306e),
                    fontFamily: 'Helvetica',
                    fontSize: 18),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.05)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(deviceSize.height * 0.01),
                    decoration: BoxDecoration(
                        color: CategoriesProvider.clickCar
                            ? Color(0xff28306e)
                            : Color(0xffcbcbcb),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )
                        //more than 50% of width makes circle
                        ),
                    child: Consumer<CategoriesProvider>(
                      builder: (_, foo, __) => InkWell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.category_outlined,
                              size: 28,
                              color: CategoriesProvider.clickCar
                                  ? Color.fromARGB(255, 255, 255, 255)
                                  : Color(0xff28306e),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: deviceSize.height * 0.01)),
                            Text('Care Category',
                                style: TextStyle(
                                    color: CategoriesProvider.clickCar
                                        ? Color.fromARGB(255, 255, 255, 255)
                                        : Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 16)),
                          ],
                        ),
                        onTap: () => {
                          Navigator.of(context).pushNamed(
                            CareCategory.routeName,
                          ),
                        },
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                  Container(
                    padding: EdgeInsets.all(deviceSize.height * 0.01),
                    decoration: BoxDecoration(
                        color: CategoriesProvider.clickLocation
                            ? Color(0xff28306e)
                            : Color(0xffcbcbcb),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )
                        //more than 50% of width makes circle
                        ),
                    child: Consumer<CategoriesProvider>(
                      builder: (_, foo, __) => InkWell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.location_city_rounded,
                              size: 28,
                              color: CategoriesProvider.clickLocation
                                  ? Color.fromARGB(255, 255, 255, 255)
                                  : Color(0xff28306e),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: deviceSize.height * 0.01)),
                            Text('Location',
                                style: TextStyle(
                                    color: CategoriesProvider.clickLocation
                                        ? Color.fromARGB(255, 255, 255, 255)
                                        : Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 16)),
                          ],
                        ),
                        onTap: () => {
                          Navigator.of(context).pushNamed(
                            Locations.routeName,
                          ),
                        },
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                  Container(
                    padding: EdgeInsets.all(deviceSize.height * 0.01),
                    decoration: BoxDecoration(
                        color: CategoriesProvider.clickGender
                            ? Color(0xff28306e)
                            : Color(0xffcbcbcb),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )
                        //more than 50% of width makes circle
                        ),
                    child: Consumer<CategoriesProvider>(
                      builder: (_, foo, __) => InkWell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.male_rounded,
                              size: 28,
                              color: CategoriesProvider.clickGender
                                  ? Color.fromARGB(255, 255, 255, 255)
                                  : Color(0xff28306e),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: deviceSize.height * 0.01)),
                            Text('Gender',
                                style: TextStyle(
                                    color: CategoriesProvider.clickGender
                                        ? Color.fromARGB(255, 255, 255, 255)
                                        : Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 16)),
                          ],
                        ),
                        onTap: () => {
                          Navigator.of(context).pushNamed(
                            Gender.routeName,
                          ),
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(deviceSize.height * 0.01),
                    decoration: BoxDecoration(
                        color: CategoriesProvider.clickCaregiversInrAea
                            ? Color(0xff28306e)
                            : Color(0xffcbcbcb),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )
                        //more than 50% of width makes circle
                        ),
                    child: Consumer<CategoriesProvider>(
                      builder: (_, foo, __) => InkWell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.golf_course,
                              size: 28,
                              color: CategoriesProvider.clickCaregiversInrAea
                                  ? Color.fromARGB(255, 255, 255, 255)
                                  : Color(0xff28306e),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: deviceSize.height * 0.01)),
                            Text('Here you go!',
                                style: TextStyle(
                                    color:
                                        CategoriesProvider.clickCaregiversInrAea
                                            ? Color.fromARGB(255, 255, 255, 255)
                                            : Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 16)),
                          ],
                        ),
                        onTap: () => {
                          Navigator.of(context).pushNamed(
                            CaregiversInrAea.routeName,
                          ),
                        },
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                  Container(
                    padding: EdgeInsets.all(deviceSize.height * 0.01),
                    decoration: BoxDecoration(
                        color: BuildCategoriesProvider.clickServices
                            ? Color(0xff28306e)
                            : Color(0xffcbcbcb),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )
                        //more than 50% of width makes circle
                        ),
                    child: Consumer<BuildCategoriesProvider>(
                      builder: (_, foo, __) => InkWell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.room_service_rounded,
                              size: 28,
                              color: BuildCategoriesProvider.clickServices
                                  ? Color.fromARGB(255, 255, 255, 255)
                                  : Color(0xff28306e),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: deviceSize.height * 0.01)),
                            Text('Services!',
                                style: TextStyle(
                                    color: BuildCategoriesProvider.clickServices
                                        ? Color.fromARGB(255, 255, 255, 255)
                                        : Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 16)),
                          ],
                        ),
                        onTap: () => {
                          Navigator.of(context).pushNamed(
                              CareCategoryProvider.routCategorySelected)
                        },
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                  Container(
                    padding: EdgeInsets.all(deviceSize.height * 0.01),
                    decoration: BoxDecoration(
                        color: CategoriesProvider.clickCaregiverPreferences
                            ? Color(0xff28306e)
                            : Color(0xffcbcbcb),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )
                        //more than 50% of width makes circle
                        ),
                    child: Consumer<CategoriesProvider>(
                      builder: (_, foo, __) => InkWell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.room_preferences_rounded,
                              size: 28,
                              color:
                                  CategoriesProvider.clickCaregiverPreferences
                                      ? Color.fromARGB(255, 255, 255, 255)
                                      : Color(0xff28306e),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: deviceSize.height * 0.01)),
                            Text('Preferences',
                                style: TextStyle(
                                    color: CategoriesProvider
                                            .clickCaregiverPreferences
                                        ? Color.fromARGB(255, 255, 255, 255)
                                        : Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 16)),
                          ],
                        ),
                        onTap: () => {
                          Navigator.of(context).pushNamed(
                            CaregiverPreferences.routeName,
                          ),
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(deviceSize.height * 0.01),
                    decoration: BoxDecoration(
                        color: CategoriesProvider.clickSchedule
                            ? Color(0xff28306e)
                            : Color(0xffcbcbcb),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )
                        //more than 50% of width makes circle
                        ),
                    child: Consumer<CategoriesProvider>(
                      builder: (_, foo, __) => InkWell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.schedule_rounded,
                              size: 28,
                              color: CategoriesProvider.clickSchedule
                                  ? Color.fromARGB(255, 255, 255, 255)
                                  : Color(0xff28306e),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: deviceSize.height * 0.01)),
                            Text('Schedule',
                                style: TextStyle(
                                    color: CategoriesProvider.clickSchedule
                                        ? Color.fromARGB(255, 255, 255, 255)
                                        : Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 16)),
                          ],
                        ),
                        onTap: () => {
                          Navigator.of(context).pushNamed(
                            Schedule.routeName,
                          ),
                        },
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                  Container(
                    padding: EdgeInsets.all(deviceSize.height * 0.01),
                    decoration: BoxDecoration(
                        color: CategoriesProvider.clickBudget
                            ? Color(0xff28306e)
                            : Color(0xffcbcbcb),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )
                        //more than 50% of width makes circle
                        ),
                    child: Consumer<CategoriesProvider>(
                      builder: (_, foo, __) => InkWell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.bug_report_outlined,
                              size: 28,
                              color: CategoriesProvider.clickBudget
                                  ? Color.fromARGB(255, 255, 255, 255)
                                  : Color(0xff28306e),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: deviceSize.height * 0.01)),
                            Text('Budget',
                                style: TextStyle(
                                    color: CategoriesProvider.clickBudget
                                        ? Color.fromARGB(255, 255, 255, 255)
                                        : Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 16)),
                          ],
                        ),
                        onTap: () => {
                          Navigator.of(context).pushNamed(
                            Budget.routeName,
                          ),
                        },
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                  Container(
                    padding: EdgeInsets.all(deviceSize.height * 0.01),
                    decoration: BoxDecoration(
                        color: CategoriesProvider.clickCareRecipients
                            ? Color(0xff28306e)
                            : Color(0xffcbcbcb),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )
                        //more than 50% of width makes circle
                        ),
                    child: Consumer<CategoriesProvider>(
                      builder: (_, foo, __) => InkWell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.receipt_long_outlined,
                              size: 28,
                              color: CategoriesProvider.clickCareRecipients
                                  ? Color.fromARGB(255, 255, 255, 255)
                                  : Color(0xff28306e),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: deviceSize.height * 0.01)),
                            Text('Care Recipients',
                                style: TextStyle(
                                    color:
                                        CategoriesProvider.clickCareRecipients
                                            ? Color.fromARGB(255, 255, 255, 255)
                                            : Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 16)),
                          ],
                        ),
                        onTap: () => {
                          Navigator.of(context).pushNamed(
                            CareRecipients.routeName,
                          ),
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.1)),
            ]),
      ),
    );
  }
}
