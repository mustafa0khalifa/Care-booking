import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/MyBookings/widgets/item.dart';
import 'package:flutter_application_10000/screens/MyBookings/widgets/itemDetiel.dart';

import '../../../models/testModel.dart';
import '../../../providers/myBookingProvider.dart';

class BookingDetails extends StatefulWidget {
  static const routeName = '/bookingDetails-screen';

  MyBookingProvider myBook = MyBookingProvider();

  @override
  _BookingDetailsState createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  bool active1 = false;
  bool active2 = false;
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    Widget itemShift(String date, String hours, String inTime, String outTime,
        String price, bool activeOne) {
      return Container(
        padding: EdgeInsets.all(0.03 * deviceSize.width),
        decoration: BoxDecoration(
            color: Color(0xff28306e),
            borderRadius: BorderRadius.all(Radius.circular(5))
            //more than 50% of width makes circle
            ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Text(
                        'Shift1',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.045),
                      ),
                    ),
                    IconButton(
                        onPressed: () => {
                              setState(() {
                                if (activeOne) {
                                  active1 = !active1;
                                } else {
                                  active2 = !active2;
                                }
                              })
                            },
                        icon: active1 && activeOne || !activeOne && active2
                            ? Icon(
                                Icons.keyboard_arrow_up_sharp,
                                color: Colors.white,
                                size: deviceSize.width * 0.06,
                              )
                            : Icon(
                                Icons.keyboard_arrow_down_sharp,
                                color: Colors.white,
                                size: deviceSize.width * 0.06,
                              )),
                  ],
                ),
              ),
              active1 && activeOne || !activeOne && active2
                  ? Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5))
                          //more than 50% of width makes circle
                          ),
                      padding: EdgeInsets.all(0.03 * deviceSize.width),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                child: Text(
                                  'Date: ',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.04),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '${date}',
                                  style: TextStyle(
                                      color: Color(0xff495057),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.035),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.01)),
                          Row(
                            children: [
                              SizedBox(
                                child: Text(
                                  'Hours: ',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.04),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '${hours} Hours',
                                  style: TextStyle(
                                      color: Color(0xff495057),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.035),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.01)),
                          Row(
                            children: [
                              SizedBox(
                                child: Text(
                                  'In Time: ',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.04),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '${inTime}',
                                  style: TextStyle(
                                      color: Color(0xff495057),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.035),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.01)),
                          Row(
                            children: [
                              SizedBox(
                                child: Text(
                                  'Out Time: ',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.04),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '${outTime}',
                                  style: TextStyle(
                                      color: Color(0xff495057),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.035),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.01)),
                          Row(
                            children: [
                              SizedBox(
                                child: Text(
                                  'Price: ',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.04),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '${price}\$',
                                  style: TextStyle(
                                      color: Color(0xff495057),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.035),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : SizedBox()
            ]),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Booking Details",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          margin: EdgeInsets.all(deviceSize.width * 0.01),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ItemPending(
                  careModel: TestModel.testPending2,
                  height: deviceSize.height,
                  width: deviceSize.width,
                  isPending: true,
                  isDatiel: true,
                  isRequest: false,
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Executed Shifts',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica_Bold',
                      fontWeight: FontWeight.bold,
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Container(
                    padding: EdgeInsets.all(deviceSize.width * 0.01),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        itemShift(
                            '8/8/2022', '3', '5:00 PM', '8:00 PM', '25', true),
                        Padding(
                            padding:
                                EdgeInsets.only(top: deviceSize.height * 0.03)),
                        itemShift(
                            '8/8/2022', '3', '5:00 PM', '8:00 PM', '25', false)
                      ],
                    )),
              ],
            ),
          )),
    );
  }
}
