import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/CategoriesProvider.dart';
import 'package:flutter_application_10000/providers/careCategoryProvider.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Services/advancedNursing.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Services/childCare.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Services/elderlyCare.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Services/pcrServices.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/locations.dart';

import '../../BookingsDashboard/bookingsDashboard.dart';

class CareCategory extends StatefulWidget {
  static const routeName = '/careCategory-screen';
  String groupValueRadio = 'childCare';
  @override
  _CareCategoryState createState() => _CareCategoryState();
}

class _CareCategoryState extends State<CareCategory> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: Color(0xff28306e),
            ),
            onPressed: () {
              Navigator.pushAndRemoveUntil<void>(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => BookingsDashboard()),
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Care Category",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.all(0.03 * deviceSize.width),
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: deviceSize.width * 0.1,
                        height: deviceSize.width * 0.1,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xff28306e),
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          '1',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.04),
                        ),
                      ),
                      Container(
                        width: deviceSize.width * 0.07,
                        height: deviceSize.width * 0.07,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          '2',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.04),
                        ),
                      ),
                      Container(
                        width: deviceSize.width * 0.07,
                        height: deviceSize.width * 0.07,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          '3',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.04),
                        ),
                      ),
                      Container(
                        width: deviceSize.width * 0.07,
                        height: deviceSize.width * 0.07,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          '4',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.04),
                        ),
                      ),
                      Container(
                        width: deviceSize.width * 0.07,
                        height: deviceSize.width * 0.07,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          '5',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.04),
                        ),
                      ),
                      Container(
                        width: deviceSize.width * 0.07,
                        height: deviceSize.width * 0.07,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          '6',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.04),
                        ),
                      ),
                      Container(
                        width: deviceSize.width * 0.07,
                        height: deviceSize.width * 0.07,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          '7',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.04),
                        ),
                      ),
                      Container(
                        width: deviceSize.width * 0.07,
                        height: deviceSize.width * 0.07,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          '8',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.04),
                        ),
                      ),
                      Container(
                        width: deviceSize.width * 0.07,
                        height: deviceSize.width * 0.07,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          '9',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.04),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.06)),
                  SizedBox(
                    width: deviceSize.width * 0.9,
                    child: Text(
                      'What type of care do you need?',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica',
                          fontSize: deviceSize.width * 0.045),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                  Container(
                    height: deviceSize.height * 0.12,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Color(0xffD3CFC8))),
                      child: ListTile(
                        title: Text(
                          "Child Care",
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.04),
                        ),
                        subtitle: Text(
                          '(Newborn, toddler, preschooler, etc.)',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.03),
                        ),
                        leading: Icon(
                          Icons.man,
                          size: deviceSize.width * 0.1,
                        ),
                        onTap: () => {
                          CareCategoryProvider.routCategorySelected =
                              ChildCare.routeName,
                          Navigator.of(context).pushNamed(
                            Locations.routeName,
                          )
                        },
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                  Container(
                    height: deviceSize.height * 0.12,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Color(0xffD3CFC8))),
                      child: ListTile(
                        title: Text(
                          "Elderly Care ",
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.04),
                        ),
                        subtitle: Text(
                          '(Companionship, personal care, meal prep)',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.03),
                        ),
                        leading: Icon(
                          Icons.man,
                          size: deviceSize.width * 0.1,
                        ),
                        onTap: () => {
                          CareCategoryProvider.routCategorySelected =
                              ElderlyCare.routeName,
                          Navigator.of(context).pushNamed(
                            Locations.routeName,
                          )
                        },
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                  Container(
                    height: deviceSize.height * 0.12,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Color(0xffD3CFC8))),
                      child: ListTile(
                        title: Text(
                          "Advanced Nursing Care ",
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.04),
                        ),
                        subtitle: Text(
                          '(by registered nurses: Injections, wound care, etc.)',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.03),
                        ),
                        leading: Icon(
                          Icons.manage_accounts_outlined,
                          size: deviceSize.width * 0.1,
                        ),
                        onTap: () => {
                          CareCategoryProvider.routCategorySelected =
                              AdvancedNursing.routeName,
                          Navigator.of(context).pushNamed(
                            Locations.routeName,
                          )
                        },
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                  Container(
                    height: deviceSize.height * 0.12,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Color(0xffD3CFC8))),
                      child: ListTile(
                        title: Text(
                          "Laboratory Services",
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.04),
                        ),
                        subtitle: Text(
                          '(PCR, blood analysis, etc.)',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.03),
                        ),
                        leading: Icon(
                          Icons.thermostat,
                          size: deviceSize.width * 0.1,
                        ),
                        onTap: () => {
                          CareCategoryProvider.routCategorySelected =
                              PcrServices.routeName,
                          Navigator.of(context).pushNamed(
                            Locations.routeName,
                          )
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}



/*

///next button
        Container(
                    margin: EdgeInsets.all(deviceSize.height * 0.05),
                    alignment: Alignment.bottomRight,
                    child: Consumer<CategoriesProvider>(
                      builder: (_, foo, __) => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors
                                .greenAccent //elevated btton background color
                            ),
                        onPressed: () => {
                          /* Navigator.of(context).pushNamed(
                            Gender.routeName,
                          )*/
                          foo.ClickCar(),
                          
                        },
                        child: Text("Next"),
                      ),
                    ),
                  ),
            
            */