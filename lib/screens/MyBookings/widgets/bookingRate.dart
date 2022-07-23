import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/MyBookings/widgets/item.dart';
import 'package:provider/provider.dart';

import '../../../models/testModel.dart';
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
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.1 * deviceSize.height),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        "Cleanliness/hygiene",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        "Punctuality",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        "Demonstrated knowledge",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        "Kindness/caring",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        "Calmness/discreteness",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        "Politeness",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        "Professionalism",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)),
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
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.02),
                  child: SizedBox(
                    width: deviceSize.width * 0.4,
                    child: Text(
                      "Write your Review",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.02),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Write your Review",
                      labelText: "your Review",
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: deviceSize.width * 0.7),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors
                              .greenAccent //elevated btton background color
                          ),
                      onPressed: () {
                        // ignore: avoid_print
                        print("Tap Post");
                      },
                      child: Text("Post"),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
