import 'package:flutter/material.dart';
import '../../BookingsDashboard/bookingsDashboard.dart';
import 'afterPostingRequest.dart';

class WhatToExpect extends StatefulWidget {
  static const routeName = '/whatToExpect-screen';

  @override
  _WhatToExpectState createState() => _WhatToExpectState();
}

class _WhatToExpectState extends State<WhatToExpect> {
  bool clickNote1 = false;
  bool clickNote2 = false;
  bool clickNote3 = false;
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
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
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "What to expect",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          margin: EdgeInsets.all(deviceSize.width * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(deviceSize.width * 0.01),
                  decoration: BoxDecoration(
                      color: Color(0xfff2f5fa),
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.78,
                            child: Row(
                              children: [
                                Text(
                                  'Stage 1: After posting the need ',
                                  style: TextStyle(
                                    fontSize: deviceSize.width * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff28306e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () => {
                                    setState(
                                      () => {clickNote1 = !clickNote1},
                                    )
                                  },
                              icon: !clickNote1
                                  ? Icon(
                                      Icons.keyboard_arrow_down_outlined,
                                      color: Color(0xff17a2b8),
                                      size: deviceSize.width * 0.05,
                                    )
                                  : Icon(
                                      Icons.keyboard_arrow_up_outlined,
                                      color: Color(0xff17a2b8),
                                      size: deviceSize.width * 0.05,
                                    )),
                        ],
                      ),
                      clickNote1
                          ? Text(
                              'We have used our magical sorting formula to send your care request to the most relevant caregivers on our database.\nThe responses from interested caregivers will be listed here as soon as they happen Keep checking this page to browse profles of interested caregivers.\nWe will also send you notifcations when new caregivers apply.\nStay tuned',
                              style: TextStyle(
                                fontSize: deviceSize.width * 0.025,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff28306e),
                              ),
                            )
                          : SizedBox()
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(deviceSize.width * 0.01),
                  decoration: BoxDecoration(
                      color: Color(0xfff2f5fa),
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.78,
                            child: Row(
                              children: [
                                Text(
                                  'Stage 2: Client got responses from caregivers',
                                  style: TextStyle(
                                    fontSize: deviceSize.width * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff28306e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () => {
                                    setState(
                                      () => {clickNote2 = !clickNote2},
                                    )
                                  },
                              icon: !clickNote2
                                  ? Icon(
                                      Icons.keyboard_arrow_down_outlined,
                                      color: Color(0xff17a2b8),
                                      size: deviceSize.width * 0.05,
                                    )
                                  : Icon(
                                      Icons.keyboard_arrow_up_outlined,
                                      color: Color(0xff17a2b8),
                                      size: deviceSize.width * 0.05,
                                    )),
                        ],
                      ),
                      clickNote2
                          ? Text(
                              'Interested caregivers will mark their interest in working with you.\nWe have used all of your preferences to connect you with the caregivers who match your request the most.\nHowever, please note that caregiver who have responded to your care request might not exactly matchall your preferences.\nIt is YOUR responsibility to closely examine caregivers\' profles and responses beforedeciding to hire any of them.\nWe advise you to check all the details including budget, gender, start date, services, etc.',
                              style: TextStyle(
                                fontSize: deviceSize.width * 0.025,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff28306e),
                              ),
                            )
                          : SizedBox()
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(deviceSize.width * 0.01),
                  decoration: BoxDecoration(
                      color: Color(0xfff2f5fa),
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.78,
                            child: Row(
                              children: [
                                Text(
                                  'Stage 3: Client clicked Accept',
                                  style: TextStyle(
                                    fontSize: deviceSize.width * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff28306e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () => {
                                    setState(
                                      () => {clickNote3 = !clickNote3},
                                    )
                                  },
                              icon: !clickNote3
                                  ? Icon(
                                      Icons.keyboard_arrow_down_outlined,
                                      color: Color(0xff17a2b8),
                                      size: deviceSize.width * 0.05,
                                    )
                                  : Icon(
                                      Icons.keyboard_arrow_up_outlined,
                                      color: Color(0xff17a2b8),
                                      size: deviceSize.width * 0.05,
                                    )),
                        ],
                      ),
                      clickNote3
                          ? Text(
                              'our booking is confrmed Process the payment to avoid losing Meanwhile, you can browse our platform, flter and sort caregivers in any way you like.\nFor any additional information, please   contact us',
                              style: TextStyle(
                                fontSize: deviceSize.width * 0.025,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff28306e),
                              ),
                            )
                          : SizedBox()
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(deviceSize.width * 0.01),
                  decoration: BoxDecoration(
                      color: Color(0xfff2f5fa),
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.note,
                            size: deviceSize.width * 0.06,
                            color: Color(0xff28306e),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.01)),
                          SizedBox(
                            width: deviceSize.width * 0.84,
                            child: Text(
                              'Your request will expire in xx days/hours. Make sure you complete all the booking process before the expiration date',
                              style: TextStyle(
                                fontSize: deviceSize.width * 0.03,
                                color: Color(0xff28306e),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'No caregivers replied to your post yet. Stay tuned :)',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Container(
                  height: deviceSize.height * 0.3,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  margin: EdgeInsets.all(deviceSize.height * 0.05),
                  alignment: Alignment.bottomRight,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors
                                .orangeAccent //elevated btton background color
                            ),
                        onPressed: () => {
                          /*Navigator.of(context).pushNamed(
                                CareCategory.routeName,
                              ),*/
                          Navigator.of(context).pop()
                        },
                        child: Text("Back"),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(left: deviceSize.width * 0.2)),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors
                                .greenAccent //elevated btton background color
                            ),
                        onPressed: () => {
                          /*Navigator.of(context).pushNamed(
                                CareCategory.routeName,
                              ),*/
                          Navigator.of(context)
                              .pushNamed(AfterPostingRequest.routeName),
                        },
                        child: Text("Next"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
