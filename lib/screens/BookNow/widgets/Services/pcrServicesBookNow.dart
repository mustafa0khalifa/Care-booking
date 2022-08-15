import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/pcrServicesProvider.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
import '../pricingCalculatorBookNow.dart';

class PcrServicesBookNow extends StatefulWidget {
  static const routeName = '/_pcrServicesStateBookNow-screen';
  String groupValueRadio = 'val1';

  @override
  _PcrServicesBookNowState createState() => _PcrServicesBookNowState();
}

class _PcrServicesBookNowState extends State<PcrServicesBookNow> {
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
          "Pcr Services",
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
                  'The lab test fee does NOT cover the lab fee and only covers the technician fee ',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.04),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'How many people will get the test? ',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica',
                          fontSize: deviceSize.width * 0.04),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.10)),
                    SizedBox(
                      child: Consumer<PcrServicesProvider>(
                        builder: (_, foo, __) => Text(
                          '${PcrServicesProvider.numberOfPeopleTest}',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.04),
                        ),
                      ),
                    ),
                    SizedBox(
                        child: Column(
                      children: [
                        Consumer<PcrServicesProvider>(
                          builder: (_, foo, __) => IconButton(
                            onPressed: () => {
                              foo.changeNumberOfPeopleTest(false),
                            },
                            icon: Icon(Icons.minimize),
                          ),
                        ),
                        Consumer<PcrServicesProvider>(
                          builder: (_, foo, __) => IconButton(
                            onPressed: () => {
                              foo.changeNumberOfPeopleTest(true),
                            },
                            icon: Icon(Icons.add),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
                Text(
                  'What type of services do you need?',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.035),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
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
                              child: Consumer<PcrServicesProvider>(
                                builder: (_, foo, __) => CheckboxListTile(
                                  activeColor: Colors.green,
                                  value:
                                      PcrServicesProvider.covidTestingCheckbox,
                                  onChanged: (val) {
                                    foo.changecovidTestingCheckbox();
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.4,
                              child: Text(
                                'COVID-19 testing',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
                              ),
                            ),
                            SizedBox(
                              child: Consumer<PcrServicesProvider>(
                                builder: (_, foo, __) => Text(
                                  '${PcrServicesProvider.numberOfCovidTesting}',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.04),
                                ),
                              ),
                            ),
                            SizedBox(
                                child: Column(
                              children: [
                                Consumer<PcrServicesProvider>(
                                  builder: (_, foo, __) => IconButton(
                                    onPressed: () => {
                                      foo.changeNumberOfCovidTesting(false),
                                    },
                                    icon: Icon(Icons.minimize),
                                  ),
                                ),
                                Consumer<PcrServicesProvider>(
                                  builder: (_, foo, __) => IconButton(
                                    onPressed: () => {
                                      foo.changeNumberOfCovidTesting(true),
                                    },
                                    icon: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(deviceSize.height * 0.01),
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
                                    child: Consumer<PcrServicesProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value: PcrServicesProvider.standardPCR,
                                        onChanged: (val) {
                                          foo.changeStandardPCRCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Standard PCR (Result within 12 to 48 hours)',
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
                                    child: Consumer<PcrServicesProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value: PcrServicesProvider.fastPCR,
                                        onChanged: (val) {
                                          foo.changeFastPCRCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Fast PCR (Result within 6 to 8 hours)',
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
                                    child: Consumer<PcrServicesProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value: PcrServicesProvider.rapidPCR,
                                        onChanged: (val) {
                                          foo.changeRapidPCRCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Rapid PCR (Result within 30 mins)',
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
                                    child: Consumer<PcrServicesProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value: PcrServicesProvider.immunityPCR,
                                        onChanged: (val) {
                                          foo.changeImmunityPCRCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Immunity Test',
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
                                    child: Consumer<PcrServicesProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value: PcrServicesProvider
                                            .covidGeneXpertTest,
                                        onChanged: (val) {
                                          foo.changeCovidGeneXpertTestCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Covid GeneXpert Test',
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
                              child: Consumer<PcrServicesProvider>(
                                builder: (_, foo, __) => CheckboxListTile(
                                  activeColor: Colors.green,
                                  value:
                                      PcrServicesProvider.bloodTestingCheckbox,
                                  onChanged: (val) {
                                    foo.changeBloodTestingCheckbox();
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.4,
                              child: Text(
                                'Blood testing',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
                              ),
                            ),
                            SizedBox(
                              child: Consumer<PcrServicesProvider>(
                                builder: (_, foo, __) => Text(
                                  '${PcrServicesProvider.numberOfBloodTesting}',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.04),
                                ),
                              ),
                            ),
                            SizedBox(
                                child: Column(
                              children: [
                                Consumer<PcrServicesProvider>(
                                  builder: (_, foo, __) => IconButton(
                                    onPressed: () => {
                                      foo.changeNumberOfBloodTesting(false),
                                    },
                                    icon: Icon(Icons.arrow_upward_rounded),
                                  ),
                                ),
                                Consumer<PcrServicesProvider>(
                                  builder: (_, foo, __) => IconButton(
                                    onPressed: () => {
                                      foo.changeNumberOfBloodTesting(true),
                                    },
                                    icon: Icon(Icons.arrow_downward_rounded),
                                  ),
                                ),
                              ],
                            ))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(deviceSize.height * 0.01),
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
                                    child: Consumer<PcrServicesProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value: PcrServicesProvider
                                            .allBloodTestTypes,
                                        onChanged: (val) {
                                          foo.changeAllBloodTestTypesCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'All blood test types',
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
                              child: Consumer<PcrServicesProvider>(
                                builder: (_, foo, __) => CheckboxListTile(
                                  activeColor: Colors.green,
                                  value: PcrServicesProvider.otherLabCheckbox,
                                  onChanged: (val) {
                                    foo.changeOtherLabCheckbox();
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.4,
                              child: Text(
                                'Other Lab Work Ups',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
                              ),
                            ),
                            SizedBox(
                              child: Consumer<PcrServicesProvider>(
                                builder: (_, foo, __) => Text(
                                  '${PcrServicesProvider.numberOfOtherLab}',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.04),
                                ),
                              ),
                            ),
                            SizedBox(
                                child: Column(
                              children: [
                                Consumer<PcrServicesProvider>(
                                  builder: (_, foo, __) => IconButton(
                                    onPressed: () => {
                                      foo.changeNumberOfOtherLab(false),
                                    },
                                    icon: Icon(Icons.arrow_upward_rounded),
                                  ),
                                ),
                                Consumer<PcrServicesProvider>(
                                  builder: (_, foo, __) => IconButton(
                                    onPressed: () => {
                                      foo.changeNumberOfOtherLab(true),
                                    },
                                    icon: Icon(Icons.arrow_downward_rounded),
                                  ),
                                ),
                              ],
                            ))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(deviceSize.height * 0.01),
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
                                    child: Consumer<PcrServicesProvider>(
                                      builder: (_, foo, __) => CheckboxListTile(
                                        activeColor: Colors.green,
                                        value:
                                            PcrServicesProvider.collectingUrine,
                                        onChanged: (val) {
                                          foo.changeCollectingUrineCheckbox();
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.6,
                                    child: Text(
                                      'Collecting urine/stool samples',
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
                  'indicate the detailed names of laboratory tests required',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.035),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Text(
                        'Prescrptions',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    IconButton(onPressed: null, icon: Icon(Icons.attach_file)),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
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
