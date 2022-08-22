import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/authProvider.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/NavBar.dart';

import '../../../providers/myBookingProvider.dart';
import '../../MyBookings/myBookings.dart';
import 'AfterBookingRequest/afterBookingRequest.dart';

class AfterPostingRequest extends StatefulWidget {
  static const routeName = '/afterPostingRequest-screen';
  MyBookingProvider myBook = MyBookingProvider();

  @override
  _AfterPostingRequestState createState() => _AfterPostingRequestState();
}

class _AfterPostingRequestState extends State<AfterPostingRequest> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    AuthProvidere.fromPostMyNeeds = false;
    return Scaffold(
      body: Container(
        height: deviceSize.height,
        width: deviceSize.width,
        margin: EdgeInsets.all(deviceSize.width * 0.03),
        padding: EdgeInsets.only(top: deviceSize.height * 0.1),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Center(
                child: Image.asset(
                  'assets/images/submit-successfully.png',
                  scale: 4,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
              Center(
                child: SizedBox(
                  child: Text(
                    "Your submitted successfully",
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica_Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: deviceSize.width * 0.045),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.02)),
              Center(
                child: SizedBox(
                  width: deviceSize.width * 0.55,
                  child: Text(
                    "You can check your request’s progress from “My Care request” page",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xffD3CFC8),
                        fontFamily: 'Helvetica_Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: deviceSize.width * 0.04),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: SizedBox(
                        width: deviceSize.width * 0.4,
                        child: TextButton(
                          child: Text(
                            'My Pending Bookings',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Helvetica_Bold',
                                fontWeight: FontWeight.bold,
                                fontSize: deviceSize.width * 0.035),
                          ),
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Color(0xff28306e),
                            onSurface: Colors.grey,
                          ),
                          onPressed: () {
                            widget.myBook
                                .changeStateMyBooking('My Pending Bookings');
                            Navigator.of(context).pushNamed(
                              MyBookings.routeName,
                            );
                          },
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: deviceSize.width * 0.4,
                        child: TextButton(
                          child: Text(
                            'My Care Request',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Helvetica_Bold',
                                fontWeight: FontWeight.bold,
                                fontSize: deviceSize.width * 0.035),
                          ),
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Color(0xff3ab284),
                            onSurface: Colors.grey,
                          ),
                          onPressed: () {
                            /*Navigator.of(context).pushNamed(
                          AfterBookingRequest.routeName,
                        )*/
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
