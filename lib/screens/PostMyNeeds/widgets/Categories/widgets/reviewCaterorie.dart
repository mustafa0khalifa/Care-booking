import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/careCategory.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/gender.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/location.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/schedule.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/PostMyNeedsProvider/CategoriesProvider.dart';
import '../../caregiverPreferences.dart';
import '../../caregiversInrAea.dart';

class ReviewCaterorie extends StatefulWidget {
  static const routeName = '/reviewCaterorie-screen';

  @override
  _ReviewCaterorieState createState() => _ReviewCaterorieState();
}

class _ReviewCaterorieState extends State<ReviewCaterorie> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Review & submit your request",
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
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Please choose your request",
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: 18),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.06)),
                Consumer<CategoriesProvider>(
                  builder: (_, foo, __) => InkWell(
                    child: Center(
                      child: SizedBox(
                        height: deviceSize.height * 0.1,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/1x/Asset 12.png',
                                  color:
                                      CategoriesProvider.clickCaregiversInrAea
                                          ? Color(0xff28306e)
                                          : null,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Text('Here you go!',
                                    style: TextStyle(
                                        color: CategoriesProvider
                                                .clickCaregiversInrAea
                                            ? Color.fromARGB(255, 255, 255, 255)
                                            : Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 20)),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.05,
                              child: Center(
                                  child: Icon(
                                Icons.category_outlined,
                                size: 28,
                                color: Color(0xff3ab284),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onLongPress: () => {foo.ClickCaregiversInrAea()},
                    onTap: () => {
                      foo.ClickCaregiversInrAea(),
                      Navigator.of(context).pushNamed(
                        CaregiversInrAea.routeName,
                      )
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Consumer<CategoriesProvider>(
                  builder: (_, foo, __) => InkWell(
                    child: Center(
                      child: SizedBox(
                        height: deviceSize.height * 0.1,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/1x/Asset 12.png',
                                  color: CategoriesProvider.clickCareCategory
                                      ? Color(0xff28306e)
                                      : null,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Text('Services',
                                    style: TextStyle(
                                        color: CategoriesProvider
                                                .clickCareCategory
                                            ? Color.fromARGB(255, 255, 255, 255)
                                            : Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 20)),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.05,
                              child: Center(
                                  child: Icon(
                                Icons.location_city_outlined,
                                size: 25,
                                color: Color(0xff3ab284),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onLongPress: () => {foo.ClickCareCategory()},
                    onTap: () => {
                      foo.ClickCareCategory(),
                      Navigator.of(context).pushNamed(
                        CareCategory.routeName,
                      )
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Consumer<CategoriesProvider>(
                  builder: (_, foo, __) => InkWell(
                    child: Center(
                      child: SizedBox(
                        height: deviceSize.height * 0.1,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/1x/Asset 12.png',
                                  color: CategoriesProvider
                                          .clickCaregiverPreferences
                                      ? Color(0xff28306e)
                                      : null,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Text('Preferences',
                                    style: TextStyle(
                                        color: CategoriesProvider
                                                .clickCaregiverPreferences
                                            ? Color.fromARGB(255, 255, 255, 255)
                                            : Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 20)),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.05,
                              child: Center(
                                  child: Icon(
                                Icons.male_outlined,
                                size: 25,
                                color: Color(0xff3ab284),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onLongPress: () => {foo.ClickCaregiverPreferences()},
                    onTap: () => {
                      foo.ClickCaregiverPreferences(),
                      Navigator.of(context).pushNamed(
                        CaregiverPreferences.routeName,
                      )
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Consumer<CategoriesProvider>(
                  builder: (_, foo, __) => InkWell(
                    child: Center(
                      child: SizedBox(
                        height: deviceSize.height * 0.1,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/1x/Asset 12.png',
                                  color: CategoriesProvider.clickSchedule
                                      ? Color(0xff28306e)
                                      : null,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Text('Schedule',
                                    style: TextStyle(
                                        color: CategoriesProvider.clickSchedule
                                            ? Color.fromARGB(255, 255, 255, 255)
                                            : Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 20)),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.05,
                              child: Center(
                                  child: Icon(
                                Icons.male_outlined,
                                size: 25,
                                color: Color(0xff3ab284),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onLongPress: () => {foo.ClickSchedule()},
                    onTap: () => {
                      foo.ClickSchedule(),
                      Navigator.of(context).pushNamed(
                        Schedule.routeName,
                      )
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              ]),
        ),
      ),
    );
  }
}
