import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Services/advancedNursing.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Services/childCare.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Services/elderlyCare.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Services/pcrServices.dart';

import '../../../providers/careCategoryProviderBokNow.dart';
import '../../BookingsDashboard/bookingsDashboard.dart';
import 'ScheduleBookNow.dart';
import 'Services/advancedNursingBookNow.dart';
import 'Services/childCareBookNow.dart';
import 'Services/elderlyCareBookNow.dart';
import 'Services/pcrServicesBookNow.dart';

class CareCategoryBookNow extends StatefulWidget {
  static const routeName = '/careCategoryBookNow-screen';
  String groupValueRadio = 'val1';
  @override
  _CareCategoryStateBookNow createState() => _CareCategoryStateBookNow();
}

class _CareCategoryStateBookNow extends State<CareCategoryBookNow> {
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
          padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'What type of care do you need?',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica',
                          fontSize: deviceSize.width * 0.05),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.05)),
                  ListTile(
                      title: Text(
                        "Child Care",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.045),
                      ),
                      subtitle: Text(
                        '(Newborn, toddler, preschooler, etc.)',
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.035),
                      ),
                      leading: Radio(
                          activeColor: Colors.greenAccent,
                          value: 'childCare',
                          groupValue: widget.groupValueRadio,
                          onChanged: (value) {
                            setState(() {
                              widget.groupValueRadio = value.toString();
                              CareCategoryBookNowProvider.routCategorySelected =
                                  ChildCare.routeName;
                            }); //selected value
                          })),
                  ListTile(
                      title: Text(
                        "Elderly Care ",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.045),
                      ),
                      subtitle: Text(
                        '(Companionship, personal care, meal prep)',
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                      leading: Radio(
                          activeColor: Colors.greenAccent,
                          value: 'elderlyCare',
                          groupValue: widget.groupValueRadio,
                          onChanged: (value) {
                            setState(() {
                              widget.groupValueRadio = value.toString();
                              CareCategoryBookNowProvider.routCategorySelected =
                                  ElderlyCare.routeName;
                            }); //selected value
                          })),
                  ListTile(
                      title: Text(
                        "Advanced Nursing Care ",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.045),
                      ),
                      subtitle: Text(
                        '(by registered nurses: Injections, wound care, etc.)',
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                      leading: Radio(
                          activeColor: Colors.greenAccent,
                          value: 'advancedNursingCare',
                          groupValue: widget.groupValueRadio,
                          onChanged: (value) {
                            setState(() {
                              widget.groupValueRadio = value.toString();
                              CareCategoryBookNowProvider.routCategorySelected =
                                  AdvancedNursing.routeName;
                            }); //selected value
                          })),
                  ListTile(
                      title: Text(
                        "Laboratory Services",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.045),
                      ),
                      subtitle: Text(
                        '(PCR, blood analysis, etc.)',
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                      leading: Radio(
                          activeColor: Colors.greenAccent,
                          value: 'laboratoryServices',
                          groupValue: widget.groupValueRadio,
                          onChanged: (value) {
                            setState(() {
                              widget.groupValueRadio = value.toString();
                              CareCategoryBookNowProvider.routCategorySelected =
                                  PcrServices.routeName;
                            }); //selected value
                          })),
                  Container(
                    margin: EdgeInsets.all(deviceSize.height * 0.05),
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(
                              0xff28306e) //elevated btton background color
                          ),
                      onPressed: () => {
                        Navigator.of(context).pushNamed(
                          ScheduleBookNow.routeName,
                        )
                      },
                      child: Text("Next"),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
