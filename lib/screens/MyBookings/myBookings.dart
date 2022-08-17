import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/MyBookings/widgets/item.dart';

import '../../models/testModel.dart';
import '../../providers/myBookingProvider.dart';
import '../BookingsDashboard/bookingsDashboard.dart';

class MyBookings extends StatefulWidget {
  static const routeName = '/myBookings-screen';

  @override
  _MyBookingsdState createState() => _MyBookingsdState();
}

class _MyBookingsdState extends State<MyBookings> {
  @override
  Widget build(BuildContext context) {
    bool _isState = MyBookingProvider.stateMyBooking == 'Pending Booking';
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "${MyBookingProvider.stateMyBooking}",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
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
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          margin: EdgeInsets.all(deviceSize.width * 0.01),
          child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, count) {
                return ItemPending(
                  careModel: TestModel.testPending2,
                  height: deviceSize.height,
                  width: deviceSize.width,
                  isPending: _isState,
                  isDatiel: false,
                  isRequest: false,
                );
              })),
    );
  }
}
