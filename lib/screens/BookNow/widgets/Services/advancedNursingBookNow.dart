import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/advancedNursingProvider.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
import '../pricingCalculatorBookNow.dart';

class AdvancedNursingBookNow extends StatefulWidget {
  static const routeName = '/advancedNursingBookNow-screen';
  String groupValueRadio = 'val1';

  @override
  _AdvancedNursingBookNowState createState() => _AdvancedNursingBookNowState();
}

class _AdvancedNursingBookNowState extends State<AdvancedNursingBookNow> {
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
          "Advanced Nursing",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.05 * deviceSize.height),
          margin: EdgeInsets.all(deviceSize.width * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What type of services do you need?',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.02),
                  child: TextField(
                    style: TextStyle(color: Colors.blue.shade900, fontSize: 11),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.grey)),
                        hintText: 'Keyword search',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 11)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                SizedBox(
                  height: deviceSize.height * 0.5,
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black87)),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.18,
                              height: deviceSize.height * 0.07,
                              child: Consumer<AdvancedNursingProvider>(
                                builder: (_, foo, __) => CheckboxListTile(
                                  activeColor: Colors.green,
                                  value: AdvancedNursingProvider
                                      .intravenousTherapy,
                                  onChanged: (val) {
                                    foo.changeIntravenousTherapyCheckbox();
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.7,
                              child: Text(
                                'IntravenousTherapy (IV)',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.045),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(deviceSize.height * 0.02),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.18,
                                    height: deviceSize.height * 0.07,
                                    child: Consumer<AdvancedNursingProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value:
                                            AdvancedNursingProvider.insertion,
                                        onChanged: (val) {
                                          foo.changeInsertionCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Intravenous Therapy (IV) Insertion',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.18,
                                    height: deviceSize.height * 0.07,
                                    child: Consumer<AdvancedNursingProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value:
                                            AdvancedNursingProvider.antibiotic,
                                        onChanged: (val) {
                                          foo.changeAntibioticCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Intravenous Therapy (Antibiotic, Total Parenteral and Enteral Nutrition. Other meds) ',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.18,
                                    height: deviceSize.height * 0.07,
                                    child: Consumer<AdvancedNursingProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value:
                                            AdvancedNursingProvider.injections,
                                        onChanged: (val) {
                                          foo.changeInjectionsCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Intramuscular Injections',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.18,
                              height: deviceSize.height * 0.07,
                              child: Consumer<AdvancedNursingProvider>(
                                builder: (_, foo, __) => CheckboxListTile(
                                  activeColor: Colors.green,
                                  value: AdvancedNursingProvider.otherAdvanced,
                                  onChanged: (val) {
                                    foo.changeOtherAdvancedCheckbox();
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.7,
                              child: Text(
                                'Other advanced nursing services',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.045),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(deviceSize.height * 0.02),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.18,
                                    height: deviceSize.height * 0.07,
                                    child: Consumer<AdvancedNursingProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value:
                                            AdvancedNursingProvider.woundCare,
                                        onChanged: (val) {
                                          foo.changeWoundCareCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Wound Care',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.18,
                                    height: deviceSize.height * 0.07,
                                    child: Consumer<AdvancedNursingProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value: AdvancedNursingProvider
                                            .foleyInsertionFemale,
                                        onChanged: (val) {
                                          foo.changeFoleyInsertionFemaleCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Foley Insertion (For Female Patients)',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.18,
                                    height: deviceSize.height * 0.07,
                                    child: Consumer<AdvancedNursingProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value: AdvancedNursingProvider
                                            .foleyInsertionMale,
                                        onChanged: (val) {
                                          foo.changeFoleyInsertionMaleCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Foley Insertion (For Male Patients)',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.18,
                                    height: deviceSize.height * 0.07,
                                    child: Consumer<AdvancedNursingProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value: AdvancedNursingProvider
                                            .sutureRemoval,
                                        onChanged: (val) {
                                          foo.changeSutureRemovalCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Suture Removal',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.18,
                                    height: deviceSize.height * 0.07,
                                    child: Consumer<AdvancedNursingProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value: AdvancedNursingProvider
                                            .hemovacRemoval,
                                        onChanged: (val) {
                                          foo.changeHemovacRemovalCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'JP/Hemovac Removal',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.18,
                                    height: deviceSize.height * 0.07,
                                    child: Consumer<AdvancedNursingProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value: AdvancedNursingProvider.diabetic,
                                        onChanged: (val) {
                                          foo.changeDiabeticCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Patient Education: Diabetic',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.18,
                                    height: deviceSize.height * 0.07,
                                    child: Consumer<AdvancedNursingProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value: AdvancedNursingProvider.CVA,
                                        onChanged: (val) {
                                          foo.changeCVACheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Patient Education: Post-CVA',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.18,
                                    height: deviceSize.height * 0.07,
                                    child: Consumer<AdvancedNursingProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value: AdvancedNursingProvider.Ops,
                                        onChanged: (val) {
                                          foo.changeOpsCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Patient Education: Post-Ops',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.18,
                                    height: deviceSize.height * 0.07,
                                    child: Consumer<AdvancedNursingProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value: AdvancedNursingProvider
                                            .tracheostomyCare,
                                        onChanged: (val) {
                                          foo.changeTracheostomyCareCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Tracheostomy Care',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.18,
                                    height: deviceSize.height * 0.07,
                                    child: Consumer<AdvancedNursingProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value: AdvancedNursingProvider
                                            .gastrostomyCare,
                                        onChanged: (val) {
                                          foo.changeGastrostomyCareCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Gastrostomy Care',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.18,
                                    height: deviceSize.height * 0.07,
                                    child: Consumer<AdvancedNursingProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value: AdvancedNursingProvider
                                            .adjustingSetting,
                                        onChanged: (val) {
                                          foo.changeAdjustingSettingCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Adjusting setting and monitoring Bipap or Ventilator',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.18,
                                    height: deviceSize.height * 0.07,
                                    child: Consumer<AdvancedNursingProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value:
                                            AdvancedNursingProvider.suctioning,
                                        onChanged: (val) {
                                          foo.changeSuctioningCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Suctioning',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.18,
                                    height: deviceSize.height * 0.07,
                                    child: Consumer<AdvancedNursingProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value:
                                            AdvancedNursingProvider.ulcerCare,
                                        onChanged: (val) {
                                          foo.changeUlcerCareCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Pressure Ulcer Care',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Indicate here if any equipment or special instructions are needed',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.03),
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.03),
                  child: TextField(
                    style: TextStyle(color: Colors.blue.shade900, fontSize: 11),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Text(
                        'Prescrptions',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.045),
                      ),
                    ),
                    IconButton(onPressed: null, icon: Icon(Icons.attach_file)),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(deviceSize.height * 0.05),
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Color(0xff28306e) //elevated btton background color
                        ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(PricingCalculatorBookNow.routeName);
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
