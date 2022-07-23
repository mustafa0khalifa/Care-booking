import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/careCategoryProvider.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Services/advancedNursing.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Services/childCare.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Services/elderlyCare.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Services/pcrServices.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/gender.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CareCategory extends StatefulWidget {
  static const routeName = '/careCategory-screen';
  String groupValueRadio = 'val1';
  @override
  _CareCategoryState createState() => _CareCategoryState();
}

class _CareCategoryState extends State<CareCategory> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
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
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000)),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.05)),
                  ListTile(
                      title: Text("Child Care"),
                      subtitle: Text('(Newborn, toddler, preschooler, etc.)'),
                      leading: Radio(
                          activeColor: Colors.greenAccent,
                          value: 'childCare',
                          groupValue: widget.groupValueRadio,
                          onChanged: (value) {
                            setState(() {
                              widget.groupValueRadio = value.toString();
                              CareCategoryProvider.routCategorySelected =
                                  ChildCare.routeName;
                            }); //selected value
                          })),
                  ListTile(
                      title: Text("Elderly Care "),
                      subtitle:
                          Text('(Companionship, personal care, meal prep)'),
                      leading: Radio(
                          activeColor: Colors.greenAccent,
                          value: 'elderlyCare',
                          groupValue: widget.groupValueRadio,
                          onChanged: (value) {
                            setState(() {
                              widget.groupValueRadio = value.toString();
                              CareCategoryProvider.routCategorySelected =
                                  ElderlyCare.routeName;
                            }); //selected value
                          })),
                  ListTile(
                      title: Text("Advanced Nursing Care "),
                      subtitle: Text(
                          '(by registered nurses: Injections, wound care, etc.)'),
                      leading: Radio(
                          activeColor: Colors.greenAccent,
                          value: 'advancedNursingCare',
                          groupValue: widget.groupValueRadio,
                          onChanged: (value) {
                            setState(() {
                              widget.groupValueRadio = value.toString();
                              CareCategoryProvider.routCategorySelected =
                                  AdvancedNursing.routeName;
                            }); //selected value
                          })),
                  ListTile(
                      title: Text("Laboratory Services "),
                      subtitle: Text('(PCR, blood analysis, etc.)'),
                      leading: Radio(
                          activeColor: Colors.greenAccent,
                          value: 'laboratoryServices',
                          groupValue: widget.groupValueRadio,
                          onChanged: (value) {
                            setState(() {
                              widget.groupValueRadio = value.toString();
                              CareCategoryProvider.routCategorySelected =
                                  PcrServices.routeName;
                            }); //selected value
                          })),
                  Container(
                    margin: EdgeInsets.all(deviceSize.height * 0.05),
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors
                              .greenAccent //elevated btton background color
                          ),
                      onPressed: () => {
                        Navigator.of(context).pushNamed(
                          Gender.routeName,
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
