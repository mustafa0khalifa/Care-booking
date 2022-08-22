import 'package:flutter/material.dart';
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
                        color: GFColors.SUCCESS,
                        borderColor: GFColors.SUCCESS,
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
                        color: GFColors.SUCCESS,
                        borderColor: GFColors.SUCCESS,
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
                        color: GFColors.SUCCESS,
                        borderColor: GFColors.SUCCESS,
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
                        color: GFColors.SUCCESS,
                        borderColor: GFColors.SUCCESS,
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
                        color: GFColors.SUCCESS,
                        borderColor: GFColors.SUCCESS,
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
                        color: GFColors.SUCCESS,
                        borderColor: GFColors.SUCCESS,
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
                        color: GFColors.SUCCESS,
                        borderColor: GFColors.SUCCESS,
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
                  style: TextStyle(
                    fontSize: deviceSize.width * 0.03,
                    color: Color(0xff495057),
                    fontFamily: 'Helvetica',
                  ),
                  decoration: InputDecoration(
                    hintText: 'Your Rivew',
                    fillColor: Color(0xffe9ecef),
                    filled: true,
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
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Colors.greenAccent //elevated btton background color
                        ),
                    onPressed: () {
                      // ignore: avoid_print
                      print("Tap Post");
                    },
                    child: Text("Post"),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
