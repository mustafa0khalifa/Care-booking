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
        String price, bool activeOne) {
      return Container(
        padding: EdgeInsets.all(0.01 * deviceSize.height),
        color: Color(0xff28306e),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: deviceSize.height * 0.04,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Text(
                        'Shift1',
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
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
                                Icons.remove,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              active1 && activeOne || !activeOne && active2
                  ? Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(0.01 * deviceSize.height),
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '${date}',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 136, 135, 135),
                                      fontFamily: 'Helvetica',
                                      fontSize: 16),
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '${hours} Hours',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 136, 135, 135),
                                      fontFamily: 'Helvetica',
                                      fontSize: 16),
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '${inTime}',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 136, 135, 135),
                                      fontFamily: 'Helvetica',
                                      fontSize: 16),
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '${outTime}',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 136, 135, 135),
                                      fontFamily: 'Helvetica',
                                      fontSize: 16),
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '${price}\$',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 136, 135, 135),
                                      fontFamily: 'Helvetica',
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.01)),
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
              fontSize: 20),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          margin: EdgeInsets.all(deviceSize.height * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ItemPending(
                  careModel: TestModel.testPending,
                  height: deviceSize.height * 0.18,
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
                      fontSize: 18),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Container(
                    width: deviceSize.width * 0.9,
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
