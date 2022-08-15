import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/budgetProvider.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../../BookingsDashboard/bookingsDashboard.dart';
import 'Services/additionalServicesBookNow.dart';

class PricingCalculatorBookNow extends StatefulWidget {
  static const routeName = '/pricingCalculatorBookNow-screen';

  @override
  _PricingCalculatorBookNowState createState() =>
      _PricingCalculatorBookNowState();
}

class _PricingCalculatorBookNowState extends State<PricingCalculatorBookNow> {
  String dropdownvalue = 'USD';
  var items = ['USD'];
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
          "Pricing Calculator",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
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
                SizedBox(
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black87)),
                    child: Container(
                      margin: EdgeInsets.all(deviceSize.height * 0.01),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: deviceSize.width * 0.35,
                                child: Text(
                                  'Total number of days of booking',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.04),
                                ),
                              ),
                              Text(
                                '8',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
                              ),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.03)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: deviceSize.width * 0.35,
                                child: Text(
                                  'Total number of shifts',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.04),
                                ),
                              ),
                              Text(
                                '12',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
                              ),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.03)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: deviceSize.width * 0.35,
                                child: Text(
                                  'Total number of hours requested',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.04),
                                ),
                              ),
                              Text(
                                '24',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'You will be charged: XXX USD',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Charges may vary as per your schedule, the number of care recipients and the extra services selected.',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.035),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
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
                          .pushNamed(AdditionalServicesBookNow.routeName);
                    },
                    child: Text("Next"),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget BookingDate(
      context, String val1, String val2, String val3, String val4) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          child: Text(
            '${val1}',
            style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w300,
                color: Color(0xff000000)),
          ),
        ),
        SizedBox(
          child: Text(
            '${val2}',
            style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w300,
                color: Color(0xff000000)),
          ),
        ),
        SizedBox(
          child: Text(
            '${val3}',
            style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000)),
          ),
        ),
        SizedBox(
          child: Text(
            '${val4}',
            style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w300,
                color: Color(0xff000000)),
          ),
        ),
      ],
    );
  }
}
