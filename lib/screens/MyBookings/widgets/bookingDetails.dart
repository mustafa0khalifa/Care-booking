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
  bool active1 = false;
  bool active2 = false;
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    Widget itemShift(String date, String hours, String inTime, String outTime,
        String price, bool activeOne, int numShift) {
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
                        'Shift${numShift}',
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
          margin: EdgeInsets.all(deviceSize.width * 0.02),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffD3CFC8),
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  padding: EdgeInsets.all(deviceSize.width * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: deviceSize.width * 0.4,
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffe9ecef),
                                    border: Border.all(
                                        color: Color(0xff28306e), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))
                                    //more than 50% of width makes circle
                                    ),
                                child: Icon(
                                  Icons.person,
                                  size: deviceSize.width * 0.1,
                                  color: Color(0xff495057),
                                )), //CircleAva
                            Padding(
                                padding: EdgeInsets.only(
                                    left: deviceSize.width * 0.05)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jane, 31",
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica-Bold',
                                      fontSize: deviceSize.width * 0.035),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: deviceSize.width * 0.02)),
                                Text(
                                  "Child Care",
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.035),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(deviceSize.height * 0.01),
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                            child: Row(
                          children: [
                            Icon(
                              Icons.whatsapp,
                              color: Color(0xff3ab284),
                              size: deviceSize.width * 0.07,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.03),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(
                                      color: Color(0xff28306e), width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))
                                  //more than 50% of width makes circle
                                  ),
                              child: Icon(
                                Icons.call,
                                color: Colors.white,
                                size: deviceSize.width * 0.06,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.03),
                            ),
                            Icon(
                              Icons.warning_rounded,
                              color: Colors.red,
                              size: deviceSize.width * 0.08,
                            ),
                          ],
                        )),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  padding: EdgeInsets.all(deviceSize.width * 0.02),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.4,
                            child: Text(
                              "Booking Schedule",
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica-Bold',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.03)),
                          SizedBox(
                            child: Text(
                              "Booking Request",
                              style: TextStyle(
                                  color: Color(0xff007bff),
                                  fontFamily: 'Helvetica-Bold',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.02)),
                      SizedBox(
                        width: deviceSize.width * 0.9,
                        child: Text(
                          "From 01 July, 2022 to 01 Sep, 2022",
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica-Bold',
                              fontSize: deviceSize.width * 0.035),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  padding: EdgeInsets.all(deviceSize.width * 0.02),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.4,
                            child: Text(
                              "Remaining Balance",
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica-Bold',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.03)),
                          SizedBox(
                            child: Text(
                              "My Balance",
                              style: TextStyle(
                                  color: Color(0xff007bff),
                                  fontFamily: 'Helvetica-Bold',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.02)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.3,
                            child: Text(
                              "95\$ remaining ",
                              style: TextStyle(
                                  color: Color(0xff3ab284),
                                  fontFamily: 'Helvetica-Bold',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.03)),
                          SizedBox(
                            child: Text(
                              "out of 500\$",
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  padding: EdgeInsets.all(deviceSize.width * 0.02),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.3,
                            child: Text(
                              "Care Recipient(s)",
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica-Bold',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.03)),
                          SizedBox(
                            child: Text(
                              "Amir Sultan, Amira Sultan",
                              style: TextStyle(
                                  color: Color(0xff007bff),
                                  fontFamily: 'Helvetica-Bold',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  padding: EdgeInsets.all(deviceSize.width * 0.02),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: deviceSize.width * 0.9,
                        child: Text(
                          "Requested Services",
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica-Bold',
                              fontSize: deviceSize.width * 0.035),
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.02)),
                      SizedBox(
                        width: deviceSize.width * 0.9,
                        child: Text(
                          "Child care, 2 children",
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica-Bold',
                              fontSize: deviceSize.width * 0.035),
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.01)),
                      SizedBox(
                        width: deviceSize.width * 0.9,
                        child: Text(
                          "Basic Newborn Care, Maternity Care, Cooking for kids",
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.03),
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.01)),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Shifts',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica_Bold',
                      fontWeight: FontWeight.bold,
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        "4 remaining shifts",
                        style: TextStyle(
                            color: Colors.red,
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.035),
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.03)),
                    SizedBox(
                      child: Text(
                        "4 remaining shifts",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.035),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                SizedBox(
                  height: deviceSize.height * 0.3,
                  child: ListView(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 240, 202, 145),
                            border:
                                Border.all(color: Color(0xffD3CFC8), width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                            //more than 50% of width makes circle
                            ),
                        padding: EdgeInsets.all(deviceSize.width * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: deviceSize.width * 0.4,
                                  child: Text(
                                    "Wednesday, July 23, 2022",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.03),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: deviceSize.width * 0.06)),
                                Text(
                                  "5:00 PM - 8:00 PM",
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.03),
                                ),
                              ],
                            ),
                            SizedBox(
                              child: Text(
                                "Dispute",
                                style: TextStyle(
                                    color: Color(0xff007bff),
                                    fontFamily: 'Helvetica-Bold',
                                    fontSize: deviceSize.width * 0.03),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.01)),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 240, 202, 145),
                            border:
                                Border.all(color: Color(0xffD3CFC8), width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                            //more than 50% of width makes circle
                            ),
                        padding: EdgeInsets.all(deviceSize.width * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: deviceSize.width * 0.4,
                                  child: Text(
                                    "Wednesday, July 26, 2022",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.03),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: deviceSize.width * 0.06)),
                                Text(
                                  "5:00 PM - 8:00 PM",
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.03),
                                ),
                              ],
                            ),
                            SizedBox(
                              child: Text(
                                "Dispute",
                                style: TextStyle(
                                    color: Color(0xff007bff),
                                    fontFamily: 'Helvetica-Bold',
                                    fontSize: deviceSize.width * 0.03),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.01)),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 149, 197, 236),
                            border:
                                Border.all(color: Color(0xffD3CFC8), width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                            //more than 50% of width makes circle
                            ),
                        padding: EdgeInsets.all(deviceSize.width * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: deviceSize.width * 0.4,
                                  child: Text(
                                    "Wednesday, August 9, 2022",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.03),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: deviceSize.width * 0.06)),
                                Text(
                                  "5:00 PM - 8:00 PM",
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.03),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.01)),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 149, 197, 236),
                            border:
                                Border.all(color: Color(0xffD3CFC8), width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                            //more than 50% of width makes circle
                            ),
                        padding: EdgeInsets.all(deviceSize.width * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: deviceSize.width * 0.4,
                                  child: Text(
                                    "Wednesday, August 9, 2022",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.03),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: deviceSize.width * 0.06)),
                                Text(
                                  "5:00 PM - 8:00 PM",
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.03),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.01)),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 209, 241, 210),
                            border:
                                Border.all(color: Color(0xffD3CFC8), width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                            //more than 50% of width makes circle
                            ),
                        padding: EdgeInsets.all(deviceSize.width * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: deviceSize.width * 0.4,
                                  child: Text(
                                    "Wednesday, August 23, 2022",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.03),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: deviceSize.width * 0.06)),
                                Text(
                                  "5:00 PM - 8:00 PM",
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.03),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.01)),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 209, 241, 210),
                            border:
                                Border.all(color: Color(0xffD3CFC8), width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                            //more than 50% of width makes circle
                            ),
                        padding: EdgeInsets.all(deviceSize.width * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: deviceSize.width * 0.4,
                                  child: Text(
                                    "Wednesday, August 23, 2022",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.03),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: deviceSize.width * 0.06)),
                                Text(
                                  "5:00 PM - 8:00 PM",
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.03),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.01)),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 209, 241, 210),
                            border:
                                Border.all(color: Color(0xffD3CFC8), width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                            //more than 50% of width makes circle
                            ),
                        padding: EdgeInsets.all(deviceSize.width * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: deviceSize.width * 0.4,
                                  child: Text(
                                    "Wednesday, August 23, 2022",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.03),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: deviceSize.width * 0.06)),
                                Text(
                                  "5:00 PM - 8:00 PM",
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.03),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.01)),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 209, 241, 210),
                            border:
                                Border.all(color: Color(0xffD3CFC8), width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                            //more than 50% of width makes circle
                            ),
                        padding: EdgeInsets.all(deviceSize.width * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: deviceSize.width * 0.4,
                                  child: Text(
                                    "Wednesday, August 23, 2022",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.03),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: deviceSize.width * 0.06)),
                                Text(
                                  "5:00 PM - 8:00 PM",
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.03),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.01)),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 209, 241, 210),
                            border:
                                Border.all(color: Color(0xffD3CFC8), width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                            //more than 50% of width makes circle
                            ),
                        padding: EdgeInsets.all(deviceSize.width * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: deviceSize.width * 0.4,
                                  child: Text(
                                    "Wednesday, August 23, 2022",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.03),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: deviceSize.width * 0.06)),
                                Text(
                                  "5:00 PM - 8:00 PM",
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.03),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              ],
            ),
          )),
    );
  }
}
