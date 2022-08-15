import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/WhenYoyNeed/schedule.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/additionalServicesProvider.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';

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
                      width: deviceSize.width * 0.1,
                      height: deviceSize.width * 0.1,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xff28306e),
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '6',
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
                  'What else do you require?',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              value:
                                  AdditionalServicesProvider.lightHousekeeping,
                              onChanged: (val) {
                                foo.changelightHousekeepingCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Light housekeeping',
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
                          child: Consumer<AdditionalServicesProvider>(
                            builder: (_, foo, __) => CheckboxListTile(
                              activeColor: Colors.green,
                              value: AdditionalServicesProvider.cookingForKids,
                              onChanged: (val) {
                                foo.changecookingForKidsCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Cooking for kids',
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
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                            value: AdditionalServicesProvider.cookingForElderly,
                            onChanged: (val) {
                              foo.changecookingForElderlyCheckbox();
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: deviceSize.width * 0.27,
                        child: Text(
                          'Cooking for Elderly',
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
                        width: deviceSize.width * 0.27,
                        child: Text(
                          'Pick up / Drop off for kids',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.03),
                        ),
                      ),
                    ],
                  ),
                ]),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                            value: AdditionalServicesProvider.transportation,
                            onChanged: (val) {
                              foo.changetransportationCheckbox();
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: deviceSize.width * 0.27,
                        child: Text(
                          'Transportation (accompany elderly to go from one place to another)',
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
                        width: deviceSize.width * 0.27,
                        child: Text(
                          'Running errands and shopping',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.03),
                        ),
                      ),
                    ],
                  ),
                ]),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Divider(thickness: 1),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Other Preferences',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Column(
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
                              value: AdditionalServicesProvider.haveAMotorcycle,
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
                              value: AdditionalServicesProvider.covidVaccinated,
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
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Divider(thickness: 1),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.7,
                      child: Text(
                        'I prefer a caregiver that is non-smoker',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Consumer<AdditionalServicesProvider>(
                      builder: (_, foo, __) => FlutterSwitch(
                        width: deviceSize.width * 0.11,
                        height: deviceSize.height * 0.025,
                        value: AdditionalServicesProvider.isSwitchedSmoker,
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
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Divider(thickness: 1),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.7,
                      child: Text(
                        'I prefer a caregive that is Cat Friendly',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Consumer<AdditionalServicesProvider>(
                      builder: (_, foo, __) => FlutterSwitch(
                        width: deviceSize.width * 0.11,
                        height: deviceSize.height * 0.025,
                        value: AdditionalServicesProvider.isSwitchedCatFriendly,
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
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Divider(thickness: 1),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.7,
                      child: Text(
                        'I prefer a caregive that is Dog Friendly',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Consumer<AdditionalServicesProvider>(
                      builder: (_, foo, __) => FlutterSwitch(
                        width: deviceSize.width * 0.11,
                        height: deviceSize.height * 0.025,
                        value: AdditionalServicesProvider.isSwitchedDogFriendly,
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
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Divider(thickness: 1),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Are you looking for a caregiver from a specifc age range? (select that applies)',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              value:
                                  AdditionalServicesProvider.lightHousekeeping,
                              onChanged: (val) {
                                foo.changelightHousekeepingCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Up to 24',
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
                          child: Consumer<AdditionalServicesProvider>(
                            builder: (_, foo, __) => CheckboxListTile(
                              activeColor: Colors.green,
                              value: AdditionalServicesProvider.cookingForKids,
                              onChanged: (val) {
                                foo.changecookingForKidsCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            '35 - 50',
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
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                            value: AdditionalServicesProvider.cookingForElderly,
                            onChanged: (val) {
                              foo.changecookingForElderlyCheckbox();
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: deviceSize.width * 0.27,
                        child: Text(
                          '24 - 35',
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
                        width: deviceSize.width * 0.27,
                        child: Text(
                          '50 and above',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.03),
                        ),
                      ),
                    ],
                  ),
                ]),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Divider(thickness: 1),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Are you looking for a caregiver with specifc certifcations?',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              value:
                                  AdditionalServicesProvider.lightHousekeeping,
                              onChanged: (val) {
                                foo.changelightHousekeepingCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Certifcation 1',
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
                          child: Consumer<AdditionalServicesProvider>(
                            builder: (_, foo, __) => CheckboxListTile(
                              activeColor: Colors.green,
                              value: AdditionalServicesProvider.cookingForKids,
                              onChanged: (val) {
                                foo.changecookingForKidsCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Certifcation 2',
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
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                            value: AdditionalServicesProvider.cookingForElderly,
                            onChanged: (val) {
                              foo.changecookingForElderlyCheckbox();
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: deviceSize.width * 0.27,
                        child: Text(
                          'Certifcation 3',
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
                        width: deviceSize.width * 0.27,
                        child: Text(
                          'Certifcation 4',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.03),
                        ),
                      ),
                    ],
                  ),
                ]),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Divider(thickness: 1),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Are you looking for a caregiver who speaks a specifc language?',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              value:
                                  AdditionalServicesProvider.lightHousekeeping,
                              onChanged: (val) {
                                foo.changelightHousekeepingCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'English',
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
                          child: Consumer<AdditionalServicesProvider>(
                            builder: (_, foo, __) => CheckboxListTile(
                              activeColor: Colors.green,
                              value: AdditionalServicesProvider.cookingForKids,
                              onChanged: (val) {
                                foo.changecookingForKidsCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Arabic',
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
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                            value: AdditionalServicesProvider.cookingForElderly,
                            onChanged: (val) {
                              foo.changecookingForElderlyCheckbox();
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: deviceSize.width * 0.27,
                        child: Text(
                          'French',
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
                        width: deviceSize.width * 0.27,
                        child: Text(
                          'German',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.03),
                        ),
                      ),
                    ],
                  ),
                ]),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Divider(thickness: 1),
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
