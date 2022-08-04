import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/elderlyCareProvider.dart';
import '../pricingCalculatorBookNow.dart';

class ElderlyCareBookNow extends StatefulWidget {
  static const routeName = '/elderlyCareBookNow-screen';
  String groupValueRadio = 'val1';

  @override
  _ElderlyCareBookNowState createState() => _ElderlyCareBookNowState();
}

class _ElderlyCareBookNowState extends State<ElderlyCareBookNow> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.1 * deviceSize.height),
          margin: EdgeInsets.all(deviceSize.width * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'How many elderly need care? ',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica_Bold',
                      fontSize: 20),
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.03),
                ),
                Column(
                  children: [
                    ListTile(
                        title: Text(
                          "1 elder / senior",
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: 16),
                        ),
                        leading: Radio(
                            activeColor: Colors.greenAccent,
                            value: 'val1',
                            groupValue: widget.groupValueRadio,
                            onChanged: (value) {
                              setState(() {
                                widget.groupValueRadio = value.toString();
                              }); //selected value
                            })),
                    ListTile(
                        title: Text(
                          "2 elder / seniors",
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: 16),
                        ),
                        leading: Radio(
                            activeColor: Colors.greenAccent,
                            value: 'val2',
                            groupValue: widget.groupValueRadio,
                            onChanged: (value) {
                              setState(() {
                                widget.groupValueRadio = value.toString();
                              }); //selected value
                            })),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.03),
                ),
                Text(
                  'Please specify the services',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica_Bold',
                      fontSize: 20),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.black87)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.18,
                            height: deviceSize.height * 0.07,
                            child: Consumer<ElderlyCareProvider>(
                              builder: (_, foo, __) => CheckboxListTile(
                                activeColor: Colors.green,
                                value: ElderlyCareProvider.basicCareCheckbox,
                                onChanged: (val) {
                                  foo.changeBasicCareCheckbox();
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.7,
                            child: Text(
                              'Basic care (Subcategory)',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(deviceSize.height * 0.02),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: deviceSize.width * 0.18,
                                  height: deviceSize.height * 0.07,
                                  child: Consumer<ElderlyCareProvider>(
                                    builder: (_, foo, __) => CheckboxListTile(
                                      activeColor: Colors.green,
                                      value: ElderlyCareProvider.companionship,
                                      onChanged: (val) {
                                        foo.changeCompanionshipCheckbox();
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: deviceSize.width * 0.5,
                                  child: Text(
                                    'Companionship',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 16),
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
                                  child: Consumer<ElderlyCareProvider>(
                                    builder: (_, foo, __) => CheckboxListTile(
                                      activeColor: Colors.green,
                                      value: ElderlyCareProvider.personalCare,
                                      onChanged: (val) {
                                        foo.changePersonalCareCheckbox();
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: deviceSize.width * 0.5,
                                  child: Text(
                                    'Personal care (e.g washing, dressing)',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 16),
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
                                  child: Consumer<ElderlyCareProvider>(
                                    builder: (_, foo, __) => CheckboxListTile(
                                      activeColor: Colors.green,
                                      value:
                                          ElderlyCareProvider.mobilitySupport,
                                      onChanged: (val) {
                                        foo.changeMobilitySupportCheckbox();
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: deviceSize.width * 0.5,
                                  child: Text(
                                    'Mobility support',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 16),
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
                                  child: Consumer<ElderlyCareProvider>(
                                    builder: (_, foo, __) => CheckboxListTile(
                                      activeColor: Colors.green,
                                      value:
                                          ElderlyCareProvider.mealPreparation,
                                      onChanged: (val) {
                                        foo.changeMealPreparationCheckbox();
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: deviceSize.width * 0.5,
                                  child: Text(
                                    'Meal preparation',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 16),
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
                                  child: Consumer<ElderlyCareProvider>(
                                    builder: (_, foo, __) => CheckboxListTile(
                                      activeColor: Colors.green,
                                      value:
                                          ElderlyCareProvider.basicNursingCare,
                                      onChanged: (val) {
                                        foo.changeBasicNursingCareCheckbox();
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: deviceSize.width * 0.5,
                                  child: Text(
                                    'Basic nursing care',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 16),
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
                                  child: Consumer<ElderlyCareProvider>(
                                    builder: (_, foo, __) => CheckboxListTile(
                                      activeColor: Colors.green,
                                      value: ElderlyCareProvider.transportation,
                                      onChanged: (val) {
                                        foo.changeTransportationCheckbox();
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: deviceSize.width * 0.5,
                                  child: Text(
                                    'Transportation',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 16),
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
                                  child: Consumer<ElderlyCareProvider>(
                                    builder: (_, foo, __) => CheckboxListTile(
                                      activeColor: Colors.green,
                                      value: ElderlyCareProvider.shopping,
                                      onChanged: (val) {
                                        foo.changeShoppingCheckbox();
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: deviceSize.width * 0.5,
                                  child: Text(
                                    'Errands / Shopping',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 16),
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
                                  child: Consumer<ElderlyCareProvider>(
                                    builder: (_, foo, __) => CheckboxListTile(
                                      activeColor: Colors.green,
                                      value: ElderlyCareProvider.light,
                                      onChanged: (val) {
                                        foo.changeLightCheckbox();
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: deviceSize.width * 0.5,
                                  child: Text(
                                    'Light housekeeping',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 16),
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
                            child: Consumer<ElderlyCareProvider>(
                              builder: (_, foo, __) => CheckboxListTile(
                                activeColor: Colors.green,
                                value: ElderlyCareProvider.basicNursingCheckbox,
                                onChanged: (val) {
                                  foo.changeBasicNursingCheckbox();
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.7,
                            child: Text(
                              'Basic nursing care (provide medication, monitor vital signs)',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(deviceSize.height * 0.02),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: deviceSize.width * 0.18,
                                  height: deviceSize.height * 0.07,
                                  child: Consumer<ElderlyCareProvider>(
                                    builder: (_, foo, __) => CheckboxListTile(
                                      activeColor: Colors.green,
                                      value: ElderlyCareProvider.service1,
                                      onChanged: (val) {
                                        foo.changeService1Checkbox();
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: deviceSize.width * 0.5,
                                  child: Text(
                                    'Service 1',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 16),
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
                                  child: Consumer<ElderlyCareProvider>(
                                    builder: (_, foo, __) => CheckboxListTile(
                                      activeColor: Colors.green,
                                      value: ElderlyCareProvider.service2,
                                      onChanged: (val) {
                                        foo.changeService2Checkbox();
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: deviceSize.width * 0.5,
                                  child: Text(
                                    'Service 2',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 16),
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
