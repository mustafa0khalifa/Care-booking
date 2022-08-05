import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/BrowseCaregivers/browseCaregivers.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/careCategory.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/gender.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/location.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/PostMyNeedsProvider/CategoriesProvider.dart';

class BuildCaterorie extends StatefulWidget {
  static const routeName = '/buildCaterorie-screen';

  @override
  _BuildCaterorieState createState() => _BuildCaterorieState();
}

class _BuildCaterorieState extends State<BuildCaterorie> {
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
                                  color: CategoriesProvider.clickCar
                                      ? Color(0xff28306e)
                                      : null,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Text('Care Category',
                                    style: TextStyle(
                                        color: CategoriesProvider.clickCar
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
                    onLongPress: () => {foo.ClickCar()},
                    onTap: () => {
                      foo.ClickCar(),
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
                                  color: CategoriesProvider.clickLocation
                                      ? Color(0xff28306e)
                                      : null,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Text('Location',
                                    style: TextStyle(
                                        color: CategoriesProvider.clickLocation
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
                    onLongPress: () => {foo.ClickLocation()},
                    onTap: () => {
                      foo.ClickLocation(),
                      Navigator.of(context).pushNamed(
                        Location.routeName,
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
                                  color: CategoriesProvider.clickGender
                                      ? Color(0xff28306e)
                                      : null,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Text('Gender',
                                    style: TextStyle(
                                        color: CategoriesProvider.clickGender
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
                    onLongPress: () => {foo.ClickGender()},
                    onTap: () => {
                      foo.ClickGender(),
                      Navigator.of(context).pushNamed(
                        Gender.routeName,
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
