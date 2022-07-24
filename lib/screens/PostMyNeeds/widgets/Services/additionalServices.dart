import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/schedule.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/additionalServicesProvider.dart';
import '../NavBar.dart';

class AdditionalServices extends StatefulWidget {
  static const routeName = '/additionalServices-screen';

  @override
  _AdditionalServicesState createState() => _AdditionalServicesState();
}

class _AdditionalServicesState extends State<AdditionalServices> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavBar(),
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
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
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
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
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
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
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
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
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
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
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
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
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
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
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
                  height: deviceSize.height * 0.2,
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black87)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.7,
                              child: Text(
                                'I prefer a caregiver that is non-smoker',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
                              ),
                            ),
                            Consumer<AdditionalServicesProvider>(
                              builder: (_, foo, __) => FlutterSwitch(
                                width: deviceSize.width * 0.11,
                                height: deviceSize.height * 0.025,
                                value:
                                    AdditionalServicesProvider.isSwitchedSmoker,
                                activeColor: Colors.green,
                                borderRadius: 30.0,
                                showOnOff: false,
                                onToggle: (val) {
                                  foo.changeSwitchedSmoker();
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.7,
                              child: Text(
                                'I prefer a caregive that is Cat Friendly',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
                              ),
                            ),
                            Consumer<AdditionalServicesProvider>(
                              builder: (_, foo, __) => FlutterSwitch(
                                width: deviceSize.width * 0.11,
                                height: deviceSize.height * 0.025,
                                value: AdditionalServicesProvider
                                    .isSwitchedCatFriendly,
                                activeColor: Colors.green,
                                borderRadius: 30.0,
                                showOnOff: false,
                                onToggle: (val) {
                                  foo.changeSwitchedCatFriendly();
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.7,
                              child: Text(
                                'I prefer a caregive that is Dog Friendly',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
                              ),
                            ),
                            Consumer<AdditionalServicesProvider>(
                              builder: (_, foo, __) => FlutterSwitch(
                                width: deviceSize.width * 0.11,
                                height: deviceSize.height * 0.025,
                                value: AdditionalServicesProvider
                                    .isSwitchedDogFriendly,
                                activeColor: Colors.green,
                                borderRadius: 30.0,
                                showOnOff: false,
                                onToggle: (val) {
                                  foo.changeSwitchedDogFriendly();
                                },
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
                Text(
                  'Other Preferences',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                SizedBox(
                  height: deviceSize.height * 0.2,
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
                              child: Consumer<AdditionalServicesProvider>(
                                builder: (_, foo, __) => CheckboxListTile(
                                  activeColor: Colors.green,
                                  value: AdditionalServicesProvider.haveACar,
                                  onChanged: (val) {
                                    foo.changehaveACarCheckbox();
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.7,
                              child: Text(
                                'Have a car ',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
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
                                      .haveAMotorcycle,
                                  onChanged: (val) {
                                    foo.changehaveAMotorcycleCheckbox();
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.7,
                              child: Text(
                                'Have a motorcycle',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
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
                                      .covidVaccinated,
                                  onChanged: (val) {
                                    foo.changecovidVaccinatedCheckbox();
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.7,
                              child: Text(
                                'Covid Vaccinated (2 or more doses)',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
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
                Container(
                  margin: EdgeInsets.all(deviceSize.height * 0.05),
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Colors.greenAccent //elevated btton background color
                        ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(Schedule.routeName);
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
