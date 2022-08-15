import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/advancedNursingProvider.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
import '../../../../providers/PostMyNeedsProvider/buildCategoriesProvider.dart';
import '../caregiverPreferences.dart';

class AdvancedNursing extends StatefulWidget {
  static const routeName = '/advancedNursing-screen';
  String groupValueRadio = 'val1';

  @override
  _AdvancedNursingState createState() => _AdvancedNursingState();
}

class _AdvancedNursingState extends State<AdvancedNursing> {
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
          margin: EdgeInsets.all(deviceSize.width * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '1',
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
                      width: deviceSize.width * 0.1,
                      height: deviceSize.width * 0.1,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xff28306e),
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '5',
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
                Text(
                  'What type of services do you need?',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                TextField(
                  style: TextStyle(color: Colors.blue.shade900, fontSize: 11),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey)),
                      hintText: 'Keyword search',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 11)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.9,
                  child: Text(
                    'IntravenousTherapy (IV)',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: deviceSize.width * 0.04),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.18,
                      height: deviceSize.height * 0.07,
                      child: Consumer<AdvancedNursingProvider>(
                        builder: (_, foo, __) => CheckboxListTile(
                          activeColor: Colors.green,
                          value: AdvancedNursingProvider.insertion,
                          onChanged: (val) {
                            foo.changeInsertionCheckbox();
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.7,
                      child: Text(
                        'Intravenous Therapy (IV) Insertion',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.03),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.18,
                      height: deviceSize.height * 0.07,
                      child: Consumer<AdvancedNursingProvider>(
                        builder: (_, foo, __) => CheckboxListTile(
                          activeColor: Colors.green,
                          value: AdvancedNursingProvider.antibiotic,
                          onChanged: (val) {
                            foo.changeAntibioticCheckbox();
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.7,
                      child: Text(
                        'Intravenous Therapy (Antibiotic, Total Parenteral and Enteral Nutrition. Other meds) ',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.03),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Divider(
                  thickness: 1,
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.9,
                  child: Text(
                    'Other advanced nursing services',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: deviceSize.width * 0.045),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
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
                              value: AdvancedNursingProvider.woundCare,
                              onChanged: (val) {
                                foo.changeWoundCareCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Wound Care',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
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
                              value:
                                  AdvancedNursingProvider.foleyInsertionFemale,
                              onChanged: (val) {
                                foo.changeFoleyInsertionFemaleCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Foley Insertion (For Female Patients)',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
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
                              value: AdvancedNursingProvider.sutureRemoval,
                              onChanged: (val) {
                                foo.changeSutureRemovalCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Suture Removal',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
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
                              value: AdvancedNursingProvider.hemovacRemoval,
                              onChanged: (val) {
                                foo.changeHemovacRemovalCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'JP/Hemovac Removal',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
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
                              value: AdvancedNursingProvider.diabetic,
                              onChanged: (val) {
                                foo.changeDiabeticCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Patient Education: Diabetic',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
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
                              value: AdvancedNursingProvider.CVA,
                              onChanged: (val) {
                                foo.changeCVACheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Patient Education: Post-CVA',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                TextField(
                  style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: deviceSize.width * 0.035),
                  decoration: InputDecoration(
                    label: Text(
                        'Indicate here if any equipment or special instructions are needed'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
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
                Consumer<BuildCategoriesProvider>(
                  builder: (_, foo, __) => Container(
                    margin: EdgeInsets.all(deviceSize.height * 0.05),
                    alignment: Alignment.bottomRight,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors
                                  .orangeAccent //elevated btton background color
                              ),
                          onPressed: () => {
                            /*Navigator.of(context).pushNamed(
                                CareCategory.routeName,
                              ),*/
                            Navigator.of(context).pop()
                          },
                          child: Text("Back"),
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(left: deviceSize.width * 0.2)),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors
                                  .greenAccent //elevated btton background color
                              ),
                          onPressed: () => {
                            /*Navigator.of(context).pushNamed(
                                CareCategory.routeName,
                              ),*/
                            Navigator.of(context)
                                .pushNamed(CaregiverPreferences.routeName),
                          },
                          child: Text("Next"),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
