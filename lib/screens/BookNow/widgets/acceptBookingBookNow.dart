import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/authProvider.dart';

import '../../../providers/myBookingProvider.dart';
import '../../BookingsDashboard/bookingsDashboard.dart';
import 'completeYourRequestBookNow.dart';

class AcceptBookingBookNow extends StatefulWidget {
  static const routeName = '/acceptBookingBookNow-screen';
  MyBookingProvider myBook = MyBookingProvider();

  @override
  _AcceptBookingBookNowState createState() => _AcceptBookingBookNowState();
}

class _AcceptBookingBookNowState extends State<AcceptBookingBookNow> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    AuthProvidere.fromPostMyNeeds = false;
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
          "Accept Booking",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
        height: deviceSize.height,
        width: deviceSize.width,
        margin: EdgeInsets.all(deviceSize.height * 0.03),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: deviceSize.width * 0.9,
                child: Text(
                  maxLines: 10,
                  "You accepted to book with Caregiver Name.\n"
                  "The following steps are necessary to proceed with this request:\n\n"
                  "1. Proceed with Payment\n"
                  "2. Upload Your ID and Approve the undertaking\n"
                  "3. Complete your request",
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              SizedBox(
                width: deviceSize.width * 0.9,
                child: Text(
                  maxLines: 10,
                  "1) Proceed with Payment ",
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.04),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(deviceSize.height * 0.03),
                child: SizedBox(
                  width: deviceSize.width * 0.9,
                  child: Text(
                    maxLines: 10,
                    "Please check your email for payment details Amount to be paid: xxx USD Payment Instructions.\n"
                    "Please contact <FAN Phone Number> to send the payment proof.",
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: deviceSize.width * 0.035),
                  ),
                ),
              ),
              SizedBox(
                width: deviceSize.width * 0.9,
                child: Text(
                  maxLines: 10,
                  "2. Upload Your ID and Approve the undertaking ",
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.04),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            maxLines: 2,
                            "Your Identity",
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.035),
                          ),
                          TextButton(
                            onPressed: null,
                            child: Text(
                              maxLines: 2,
                              "Uploaded",
                              style: TextStyle(
                                  fontSize: deviceSize.width * 0.035,
                                  color: Color.fromARGB(255, 41, 117, 11)),
                            ),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            maxLines: 2,
                            "Approve Undertaking",
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.035),
                          ),
                          TextButton(
                            onPressed: null,
                            child: Text(
                              maxLines: 2,
                              "Approved",
                              style: TextStyle(
                                  fontSize: deviceSize.width * 0.035,
                                  color: Color.fromARGB(255, 41, 117, 11)),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
              SizedBox(
                width: deviceSize.width * 0.9,
                child: Text(
                  maxLines: 10,
                  "4. Provide us more details ",
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.04),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () => {
                              Navigator.of(context).pushNamed(
                                CompleteYourRequestBookNow.routeName,
                              )
                            },
                            child: Text(
                              maxLines: 2,
                              "Complete your request",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 50, 149, 207),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ),
                          TextButton(
                            onPressed: null,
                            child: Text(
                              maxLines: 2,
                              "Not Completed",
                              style: TextStyle(
                                  fontSize: deviceSize.width * 0.035,
                                  color: Color.fromARGB(255, 41, 117, 11)),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
