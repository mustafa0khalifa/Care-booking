import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/additionalServicesProvider.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
import '../CareRecipients/careRecipientsBookNow.dart';

class AdditionalServicesBookNow extends StatefulWidget {
  static const routeName = '/additionalServicesBookNow-screen';

  @override
  _AdditionalServicesBookNowState createState() =>
      _AdditionalServicesBookNowState();
}

class _AdditionalServicesBookNowState extends State<AdditionalServicesBookNow> {
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
          "Additional Services",
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
                  'What else do you require?',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.18,
                              height: deviceSize.height * 0.07,
                              child: Consumer<AdditionalServicesProvider>(
                                builder: (_, foo, __) => CheckboxListTile(
                                  activeColor: Colors.green,
                                  value: AdditionalServicesProvider
                                      .lightHousekeeping,
                                  onChanged: (val) {
                                    foo.changelightHousekeepingCheckbox();
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.7,
                              child: Text(
                                'Light housekeeping',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
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
                              child: Consumer<AdditionalServicesProvider>(
                                builder: (_, foo, __) => CheckboxListTile(
                                  activeColor: Colors.green,
                                  value:
                                      AdditionalServicesProvider.cookingForKids,
                                  onChanged: (val) {
                                    foo.changecookingForKidsCheckbox();
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.7,
                              child: Text(
                                'Cooking for kids',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
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
                              child: Consumer<AdditionalServicesProvider>(
                                builder: (_, foo, __) => CheckboxListTile(
                                  activeColor: Colors.green,
                                  value: AdditionalServicesProvider
                                      .cookingForElderly,
                                  onChanged: (val) {
                                    foo.changecookingForElderlyCheckbox();
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.7,
                              child: Text(
                                'Cooking for Elderly',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
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
                              child: Consumer<AdditionalServicesProvider>(
                                builder: (_, foo, __) => CheckboxListTile(
                                  activeColor: Colors.green,
                                  value: AdditionalServicesProvider.pickUp,
                                  onChanged: (val) {
                                    foo.changepickUpCheckbox();
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.7,
                              child: Text(
                                'Pick up / Drop off for kids',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
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
                              child: Consumer<AdditionalServicesProvider>(
                                builder: (_, foo, __) => CheckboxListTile(
                                  activeColor: Colors.green,
                                  value:
                                      AdditionalServicesProvider.transportation,
                                  onChanged: (val) {
                                    foo.changetransportationCheckbox();
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.7,
                              child: Text(
                                'Transportation (accompany elderly to go from one place to another)',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
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
                              child: Consumer<AdditionalServicesProvider>(
                                builder: (_, foo, __) => CheckboxListTile(
                                  activeColor: Colors.green,
                                  value: AdditionalServicesProvider.shopping,
                                  onChanged: (val) {
                                    foo.changeshoppingCheckbox();
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.7,
                              child: Text(
                                'Running errands and shopping',
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
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.8,
                  child: Text(
                    'Services\' fees will be added to the current care request price',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: deviceSize.width * 0.045),
                  ),
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
                          .pushNamed(CareRecipientsBookNow.routeName);
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
