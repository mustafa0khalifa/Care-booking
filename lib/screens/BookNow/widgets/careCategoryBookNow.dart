import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Services/advancedNursing.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Services/childCare.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Services/elderlyCare.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Services/pcrServices.dart';

import '../../../providers/careCategoryProviderBokNow.dart';
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
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
          margin: EdgeInsets.all(deviceSize.height * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: deviceSize.width * 0.9,
                  child: Center(
                    child: Text(
                      'What type of care do you need?',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica_Bold',
                          fontSize: 24),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                ListTile(
                    title: Text(
                      "Child Care",
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica',
                          fontSize: 16),
                    ),
                    subtitle: Text('(Newborn, toddler, preschooler, etc.)',
                        style: TextStyle(
                            color: Color(0xffcbcbcb),
                            fontFamily: 'Helvetica',
                            fontSize: 16)),
                    leading: Radio(
                        activeColor: Colors.greenAccent,
                        value: 'childCare',
                        groupValue: widget.groupValueRadio,
                        onChanged: (value) {
                          setState(() {
                            widget.groupValueRadio = value.toString();
                            CareCategoryBookNowProvider.routCategorySelected =
                                ChildCareBookNow.routeName;
                          }); //selected value
                        })),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                ListTile(
                    title: Text("Elderly Care ",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: 16)),
                    subtitle: Text('(Companionship, personal care, meal prep)',
                        style: TextStyle(
                            color: Color(0xffcbcbcb),
                            fontFamily: 'Helvetica',
                            fontSize: 16)),
                    leading: Radio(
                        activeColor: Colors.greenAccent,
                        value: 'elderlyCare',
                        groupValue: widget.groupValueRadio,
                        onChanged: (value) {
                          setState(() {
                            widget.groupValueRadio = value.toString();
                            CareCategoryBookNowProvider.routCategorySelected =
                                ElderlyCareBookNow.routeName;
                          }); //selected value
                        })),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                ListTile(
                    title: Text("Advanced Nursing Care ",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: 16)),
                    subtitle: Text(
                        '(by registered nurses: Injections, wound care, etc.)',
                        style: TextStyle(
                            color: Color(0xffcbcbcb),
                            fontFamily: 'Helvetica',
                            fontSize: 16)),
                    leading: Radio(
                        activeColor: Colors.greenAccent,
                        value: 'advancedNursingCare',
                        groupValue: widget.groupValueRadio,
                        onChanged: (value) {
                          setState(() {
                            widget.groupValueRadio = value.toString();
                            CareCategoryBookNowProvider.routCategorySelected =
                                AdvancedNursingBookNow.routeName;
                          }); //selected value
                        })),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                ListTile(
                    title: Text("Laboratory Services ",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: 16)),
                    subtitle: Text('(PCR, blood analysis, etc.)',
                        style: TextStyle(
                            color: Color(0xffcbcbcb),
                            fontFamily: 'Helvetica',
                            fontSize: 16)),
                    leading: Radio(
                        activeColor: Colors.greenAccent,
                        value: 'laboratoryServices',
                        groupValue: widget.groupValueRadio,
                        onChanged: (value) {
                          setState(() {
                            widget.groupValueRadio = value.toString();
                            CareCategoryBookNowProvider.routCategorySelected =
                                PcrServicesBookNow.routeName;
                          }); //selected value
                        })),
                Container(
                  margin: EdgeInsets.all(deviceSize.height * 0.05),
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Color(0xff28306e) //elevated btton background color
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
          )),
    );
  }
}
