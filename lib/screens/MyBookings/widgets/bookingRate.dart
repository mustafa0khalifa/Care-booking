import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/MyBookings/widgets/report.dart';
import 'package:provider/provider.dart';

import '../../../providers/myBookingProvider.dart';
import 'package:getwidget/getwidget.dart';

class BookingRate extends StatefulWidget {
  static const routeName = '/bookingRate-screen';

  MyBookingProvider myBook = MyBookingProvider();

  @override
  _BookingRateState createState() => _BookingRateState();
}

class _BookingRateState extends State<BookingRate> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Booking Rating",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.all(
            deviceSize.width * 0.03,
          ),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                          padding: EdgeInsets.all(deviceSize.width * 0.01),
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                              child: Column(
                            children: [
                              Icon(
                                Icons.warning_rounded,
                                color: Colors.red,
                                size: deviceSize.width * 0.1,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.01)),
                              InkWell(
                                child: Text(
                                  "Report Jane",
                                  style: TextStyle(
                                      color: Color(0xff007bff),
                                      fontFamily: 'Helvetica',
                                      fontWeight: FontWeight.bold,
                                      fontSize: deviceSize.width * 0.035),
                                ),
                                onTap: () => {
                                  Navigator.of(context).pushNamed(
                                    Report.routeName,
                                  )
                                },
                              )
                            ],
                          ))),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        "Cleanliness/hygiene",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold,
                            fontSize: deviceSize.width * 0.035),
                      ),
                    ),
                    Consumer<MyBookingProvider>(
                      builder: (_, myRating, __) => GFRating(
                        color: Color(0xff3ab284),
                        borderColor: Color(0xff3ab284),
                        size: GFSize.SMALL,
                        value: MyBookingProvider.rating1,
                        onChanged: (value) {
                          myRating.changeRating1(value);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        "Punctuality",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold,
                            fontSize: deviceSize.width * 0.035),
                      ),
                    ),
                    Consumer<MyBookingProvider>(
                      builder: (_, myRating, __) => GFRating(
                        color: Color(0xff3ab284),
                        borderColor: Color(0xff3ab284),
                        size: GFSize.SMALL,
                        value: MyBookingProvider.rating2,
                        onChanged: (value) {
                          myRating.changeRating2(value);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        "Demonstrated knowledge",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold,
                            fontSize: deviceSize.width * 0.035),
                      ),
                    ),
                    Consumer<MyBookingProvider>(
                      builder: (_, myRating, __) => GFRating(
                        color: Color(0xff3ab284),
                        borderColor: Color(0xff3ab284),
                        size: GFSize.SMALL,
                        value: MyBookingProvider.rating3,
                        onChanged: (value) {
                          myRating.changeRating3(value);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        "Kindness/caring",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold,
                            fontSize: deviceSize.width * 0.035),
                      ),
                    ),
                    Consumer<MyBookingProvider>(
                      builder: (_, myRating, __) => GFRating(
                        color: Color(0xff3ab284),
                        borderColor: Color(0xff3ab284),
                        size: GFSize.SMALL,
                        value: MyBookingProvider.rating4,
                        onChanged: (value) {
                          myRating.changeRating4(value);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        "Calmness/discreteness",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold,
                            fontSize: deviceSize.width * 0.035),
                      ),
                    ),
                    Consumer<MyBookingProvider>(
                      builder: (_, myRating, __) => GFRating(
                        color: Color(0xff3ab284),
                        borderColor: Color(0xff3ab284),
                        size: GFSize.SMALL,
                        value: MyBookingProvider.rating5,
                        onChanged: (value) {
                          myRating.changeRating5(value);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        "Politeness",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold,
                            fontSize: deviceSize.width * 0.035),
                      ),
                    ),
                    Consumer<MyBookingProvider>(
                      builder: (_, myRating, __) => GFRating(
                        color: Color(0xff3ab284),
                        borderColor: Color(0xff3ab284),
                        size: GFSize.SMALL,
                        value: MyBookingProvider.rating6,
                        onChanged: (value) {
                          myRating.changeRating6(value);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        "Professionalism",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold,
                            fontSize: deviceSize.width * 0.035),
                      ),
                    ),
                    Consumer<MyBookingProvider>(
                      builder: (_, myRating, __) => GFRating(
                        color: Color(0xff3ab284),
                        borderColor: Color(0xff3ab284),
                        size: GFSize.SMALL,
                        value: MyBookingProvider.rating7,
                        onChanged: (value) {
                          myRating.changeRating7(value);
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.1),
                ),
                SizedBox(
                  child: Text(
                    "Write your Review",
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.bold,
                        fontSize: deviceSize.width * 0.04),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.03),
                ),
                TextField(
                  textAlign: TextAlign.start,
                  expands: false,
                  maxLines: 10,
                  style: TextStyle(
                    fontSize: deviceSize.width * 0.03,
                    color: Color(0xff495057),
                    fontFamily: 'Helvetica',
                  ),
                  decoration: InputDecoration(
                    hintText: 'Your Rivew',
                    fillColor: Color(0xffe9ecef),
                    filled: true,
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width,
                        maxHeight: MediaQuery.of(context).size.height),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffced4da), width: 1.0),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffced4da), width: 1.0),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Color(0xffced4da))),
                  ), //autofocus: ,
                ),
                Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.03),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: deviceSize.width * 0.1,
                      right: deviceSize.width * 0.1),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: deviceSize.width * 0.2,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 240, 220,
                                  105) //elevated btton background color
                              ),
                          onPressed: () {
                            // ignore: avoid_print
                            print("Tap Post");
                            Navigator.of(context).pop();
                          },
                          child: Text("Cancel"),
                        ),
                      ),
                      SizedBox(
                        width: deviceSize.width * 0.2,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors
                                  .greenAccent //elevated btton background color
                              ),
                          onPressed: () {
                            // ignore: avoid_print
                            print("Tap Post");
                            Navigator.of(context).pop();
                          },
                          child: Text("Post"),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
