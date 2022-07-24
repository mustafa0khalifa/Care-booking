import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/MyBookings/widgets/item.dart';

import '../../../models/testModel.dart';
import '../../../providers/myBookingProvider.dart';

class BookingDetails extends StatefulWidget {
  static const routeName = '/bookingDetails-screen';

  MyBookingProvider myBook = MyBookingProvider();

  @override
  _BookingDetailsState createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.1 * deviceSize.height),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemPending(
                careModel: TestModel.testPending,
                height: deviceSize.height * 0.18,
                width: deviceSize.width * 0.9,
                isPending: true,
                isDatiel: true,
                isRequest: false,
              ),
              Padding(
                padding: EdgeInsets.all(deviceSize.height * 0.02),
                child: Text(
                  'Executed Shifts',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000)),
                ),
              ),
              Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black87)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Date',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000)),
                        ),
                        Text(
                          '10/05/2022',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000)),
                        ),
                        Text(
                          '10/05/2022',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000)),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hours',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000)),
                        ),
                        Text(
                          '3 hours',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000)),
                        ),
                        Text(
                          '3 hours',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000)),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'In Time',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000)),
                        ),
                        Text(
                          '15 : 00',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000)),
                        ),
                        Text(
                          '15 : 00',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000)),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Out Time',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000)),
                        ),
                        Text(
                          '17 : 00',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000)),
                        ),
                        Text(
                          '17 : 00',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000)),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000)),
                        ),
                        Text(
                          '20 USD',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000)),
                        ),
                        Text(
                          '20 USD',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000)),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}