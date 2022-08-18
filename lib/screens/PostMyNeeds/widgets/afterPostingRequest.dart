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
              SizedBox(
                child: Text(
                  "Your request has been submitted successfully.",
                  style: TextStyle(
                      color: Color(0xffD3CFC8),
                      fontFamily: 'Helvetica_Bold',
                      fontSize: deviceSize.width * 0.035),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
              SizedBox(
                child: Text(
                  "You can check your request’s progress from “My Care request” page",
                  style: TextStyle(
                      color: Color(0xffD3CFC8),
                      fontFamily: 'Helvetica_Bold',
                      fontSize: deviceSize.width * 0.035),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.1)),
              Center(
                child: SizedBox(
                  width: deviceSize.width * 0.6,
                  child: TextButton(
                    child: Text('My Pending Bookings'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.teal,
                      onSurface: Colors.grey,
                    ),
                    onPressed: () {
                      widget.myBook.changeStateMyBooking('My Pending Bookings');
                      Navigator.of(context).pushNamed(
                        MyBookings.routeName,
                      );
                    },
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.2)),
              Container(
                margin: EdgeInsets.all(deviceSize.height * 0.05),
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary:
                          Colors.greenAccent //elevated btton background color
                      ),
                  onPressed: () => {
                    /*Navigator.of(context).pushNamed(
                      AfterBookingRequest.routeName,
                    )*/
                  },
                  child: Text("My Care Request"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
