import 'package:flutter/material.dart';
import '../../BookingsDashboard/bookingsDashboard.dart';
import 'whatToExpect.dart';

class CaregaverClientRequest extends StatefulWidget {
  static const routeName = '/caregaverClientRequest-screen';

  @override
  _CaregaverClientRequestState createState() => _CaregaverClientRequestState();
}

class _CaregaverClientRequestState extends State<CaregaverClientRequest> {
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
          "Review and Submit",
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
                Text(
                  'Your care request summary that will be shared with relevant caregivers will look like this: ',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: deviceSize.width * 0.48,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.luggage,
                                size: deviceSize.width * 0.06,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: deviceSize.width * 0.01)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.width * 0.005)),
                                  Text(
                                    "Job Type",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helveticas',
                                        fontSize: deviceSize.width * 0.035),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.width * 0.01)),
                                  Text(
                                    "Child Care",
                                    style: TextStyle(
                                        fontFamily: 'Helveticas',
                                        color: Color(0xff28306e),
                                        fontWeight: FontWeight.bold,
                                        fontSize: deviceSize.width * 0.035),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.width * 0.01)),
                                  SizedBox(
                                    width: deviceSize.width * 0.35,
                                    child: Text(
                                      "Basic newborn care, sleep training",
                                      style: TextStyle(
                                          fontFamily: 'Helveticas',
                                          color: Color(0xff28306e),
                                          fontSize: deviceSize.width * 0.03),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: deviceSize.width * 0.45,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: deviceSize.width * 0.06,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: deviceSize.width * 0.01)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.width * 0.005)),
                                  Text(
                                    "Location",
                                    style: TextStyle(
                                        fontFamily: 'Helveticas',
                                        color: Color(0xff28306e),
                                        fontSize: deviceSize.width * 0.035),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.width * 0.01)),
                                  Text(
                                    "20 km away",
                                    style: TextStyle(
                                        fontFamily: 'Helveticas',
                                        color: Color(0xff28306e),
                                        fontWeight: FontWeight.bold,
                                        fontSize: deviceSize.width * 0.035),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.width * 0.01)),
                                  SizedBox(
                                    width: deviceSize.width * 0.32,
                                    child: Text(
                                      "20 minutes away",
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helveticas',
                                          fontSize: deviceSize.width * 0.03),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(top: deviceSize.height * 0.02)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: deviceSize.width * 0.48,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.money_off_outlined,
                                size: deviceSize.width * 0.06,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: deviceSize.width * 0.01)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.width * 0.005)),
                                  Text(
                                    "Budget",
                                    style: TextStyle(
                                        fontFamily: 'Helveticas',
                                        color: Color(0xff28306e),
                                        fontSize: deviceSize.width * 0.035),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.width * 0.01)),
                                  Text(
                                    "560,000 LL",
                                    style: TextStyle(
                                        fontFamily: 'Helveticas',
                                        color: Color(0xff28306e),
                                        fontWeight: FontWeight.bold,
                                        fontSize: deviceSize.width * 0.035),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: deviceSize.width * 0.45,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.female,
                                size: deviceSize.width * 0.06,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: deviceSize.width * 0.01)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.width * 0.005)),
                                  Text(
                                    "Gender Preference",
                                    style: TextStyle(
                                        fontFamily: 'Helveticas',
                                        color: Color(0xff28306e),
                                        fontSize: deviceSize.width * 0.035),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.width * 0.01)),
                                  Text(
                                    "Female",
                                    style: TextStyle(
                                        fontFamily: 'Helveticas',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff28306e),
                                        fontSize: deviceSize.width * 0.035),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(top: deviceSize.height * 0.02)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: deviceSize.width * 0.48,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.date_range_outlined,
                                size: deviceSize.width * 0.06,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: deviceSize.width * 0.01)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.width * 0.005)),
                                  Text(
                                    "Schedule",
                                    style: TextStyle(
                                        fontFamily: 'Helveticas',
                                        color: Color(0xff28306e),
                                        fontSize: deviceSize.width * 0.035),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.width * 0.01)),
                                  SizedBox(
                                    width: deviceSize.width * 0.35,
                                    child: Text(
                                      "Every Monday and Wednesday from 4:00 PM till 6:00 PM",
                                      style: TextStyle(
                                          fontFamily: 'Helveticas',
                                          color: Color(0xff28306e),
                                          fontWeight: FontWeight.bold,
                                          fontSize: deviceSize.width * 0.035),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: deviceSize.width * 0.45,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.man,
                                size: deviceSize.width * 0.06,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: deviceSize.width * 0.01)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.width * 0.005)),
                                  Text(
                                    "Age Preference",
                                    style: TextStyle(
                                        fontFamily: 'Helveticas',
                                        color: Color(0xff28306e),
                                        fontSize: deviceSize.width * 0.035),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.width * 0.01)),
                                  Text(
                                    "Up to 24",
                                    style: TextStyle(
                                        fontFamily: 'Helveticas',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff28306e),
                                        fontSize: deviceSize.width * 0.035),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Divider(thickness: 1),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.02)),
                Text(
                  'Additional Services or preferences',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Text(
                  'Cooking for kids, no smoker, cat friendly',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Certifcations preference',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Text(
                  'None',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Language preferences',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Text(
                  'English',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Care Recipients',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: deviceSize.width * 0.4,
                        height: deviceSize.height * 0.12,
                        padding: EdgeInsets.all(deviceSize.height * 0.01),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xff28306e), width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                            //more than 50% of width makes circle
                            ),
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "My child, 3 years",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: deviceSize.height * 0.005)),
                            Text(
                              "20 kg",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: deviceSize.height * 0.01)),
                            Text(
                              "Tested positive for covid",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ],
                        )),
                    Container(
                        alignment: Alignment.center,
                        width: deviceSize.width * 0.4,
                        height: deviceSize.height * 0.12,
                        padding: EdgeInsets.all(deviceSize.height * 0.01),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xff28306e), width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                            //more than 50% of width makes circle
                            ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "My child, 5 years",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: deviceSize.height * 0.005)),
                            Text(
                              "25 kg",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ],
                        )),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(deviceSize.width * 0.01),
                  decoration: BoxDecoration(
                      color: Colors.orange[100],
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.note,
                            size: deviceSize.width * 0.06,
                            color: Color(0xff28306e),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.01)),
                          SizedBox(
                            width: deviceSize.width * 0.84,
                            child: Text(
                              'This care request posting will expire on: 30/08/2022',
                              style: TextStyle(
                                fontSize: deviceSize.width * 0.035,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff28306e),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
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
                              EdgeInsets.only(left: deviceSize.width * 0.1)),
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
                              .pushNamed(WhatToExpect.routeName),
                        },
                        child: Text("Confirm and Post now"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
