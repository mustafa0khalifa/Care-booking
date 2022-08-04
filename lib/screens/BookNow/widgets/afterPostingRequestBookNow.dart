import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/authProvider.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/NavBar.dart';

import '../../../providers/myBookingProvider.dart';
import '../../MyBookings/myBookings.dart';
import 'AfterBookingRequest/afterBookingRequest.dart';

class AfterPostingRequestBookNow extends StatefulWidget {
  static const routeName = '/afterPostingRequestBookNow-screen';
  MyBookingProvider myBook = MyBookingProvider();

  @override
  _AfterPostingRequestBookNowState createState() =>
      _AfterPostingRequestBookNowState();
}

class _AfterPostingRequestBookNowState
    extends State<AfterPostingRequestBookNow> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    AuthProvidere.fromPostMyNeeds = false;
    return Scaffold(
      drawer: NavBar(),
      body: Container(
        height: deviceSize.height,
        width: deviceSize.width,
        padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
        margin: EdgeInsets.all(deviceSize.height * 0.03),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: deviceSize.width * 0.6,
                child: Text(
                  "Your direct booking with XYZ has been submitted successfully.",
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: 20),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              SizedBox(
                width: deviceSize.width * 0.6,
                child: Text(
                  "You can check your request’s progress from “My Care request” page",
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: 20),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.1)),
              SizedBox(
                width: deviceSize.width * 0.6,
                child: TextButton(
                  child: Text('My Pending Bookings'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color.fromARGB(255, 124, 118, 212),
                    onSurface: Colors.grey,
                  ),
                  onPressed: () {
                    widget.myBook.changeStateMyBooking('isPending');
                    Navigator.of(context).pushNamed(
                      MyBookings.routeName,
                    );
                  },
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.2)),
              Container(
                margin: EdgeInsets.all(deviceSize.height * 0.05),
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary:
                          Color(0xff28306e) //elevated btton background color
                      ),
                  onPressed: () => {
                    Navigator.of(context).pushNamed(
                      AfterBookingRequestBookNow.routeName,
                    )
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
