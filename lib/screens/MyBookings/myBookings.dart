import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/MyBookings/widgets/item.dart';

import '../../models/testModel.dart';
import '../../providers/myBookingProvider.dart';

class MyBookings extends StatefulWidget {
  static const routeName = '/myBookings-screen';

  @override
  _MyBookingsdState createState() => _MyBookingsdState();
}

class _MyBookingsdState extends State<MyBookings> {
  @override
  Widget build(BuildContext context) {
    bool _isState = MyBookingProvider.stateMyBooking == 'isPending';
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
          margin: EdgeInsets.all(deviceSize.height * 0.03),
          child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, count) {
                return ItemPending(
                  careModel: TestModel.testPending,
                  height: deviceSize.height * 0.18,
                  width: deviceSize.width * 0.9,
                  isPending: _isState,
                  isDatiel: false,
                  isRequest: false,
                );
              })),
    );
  }
}
