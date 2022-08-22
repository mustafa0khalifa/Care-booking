import 'package:date_format/date_format.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/CaregiverProfile/caregiverProfile.dart';

import '../../../models/pendingBookingsModel.dart';
import '../../../providers/myBookingProvider.dart';
import 'bookingDetails.dart';
import 'bookingRate.dart';

class ItemPending extends StatelessWidget {
  var width;
  var height;
  bool isDatiel;
  bool isRequest;
  PendingBookingsModel careModel;
  bool isPending;
  ItemPending({
    required this.width,
    required this.height,
    required this.careModel,
    required this.isPending,
    required this.isDatiel,
    required this.isRequest,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: Color(0xffD3CFC8))),
      child: Container(
        margin: EdgeInsets.all(width * 0.03),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyBookingProvider.stateMyBooking != 'Current Booking'
                  ? MyBookingProvider.stateMyBooking != 'Previous Booking'
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: width * 0.6,
                              child: Row(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xffe9ecef),
                                          border: Border.all(
                                              color: Color(0xff28306e),
                                              width: 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100))
                                          //more than 50% of width makes circle
                                          ),
                                      child: Icon(
                                        Icons.person,
                                        size: width * 0.06,
                                        color: Color(0xff495057),
                                      )), //CircleAva
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.03)),
                                  Text(
                                    "${careModel.agePreferences}",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica-Bold',
                                        fontSize: width * 0.04),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.06)),
                                  Text(
                                    "|",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica-Bold',
                                        fontSize: width * 0.04),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.06)),
                                  Text(
                                    "${careModel.CareType}",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: width * 0.04),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              child: Container(
                                padding: EdgeInsets.all(height * 0.01),
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  width: width * 0.25,
                                  child: Container(
                                    padding: EdgeInsets.all(width * 0.02),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xff007bff),
                                        ),
                                        borderRadius: BorderRadius.circular(5)),
                                    alignment: Alignment.center,
                                    child: Text('View Profiles',
                                        style: TextStyle(
                                            color: Color(0xff007bff),
                                            fontFamily: 'Helvetica_Bold',
                                            fontSize: width * 0.035)),
                                  ),
                                ),
                              ),
                              onTap: () => {
                                Navigator.of(context).pushNamed(
                                  CaregiverProfile.routeName,
                                )
                              },
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: width * 0.55,
                              child: Row(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xffe9ecef),
                                          border: Border.all(
                                              color: Color(0xff28306e),
                                              width: 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100))
                                          //more than 50% of width makes circle
                                          ),
                                      child: Icon(
                                        Icons.person,
                                        size: width * 0.06,
                                        color: Color(0xff495057),
                                      )), //CircleAva
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.03)),
                                  Text(
                                    "${careModel.agePreferences}",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica-Bold',
                                        fontSize: width * 0.04),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.06)),
                                  Text(
                                    "|",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica-Bold',
                                        fontSize: width * 0.04),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.06)),
                                  Text(
                                    "${careModel.CareType}",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: width * 0.04),
                                  ),
                                ],
                              ),
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
                                size: width * 0.06,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.03),
                            ),
                            InkWell(
                              child: Container(
                                padding: EdgeInsets.all(height * 0.01),
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  child: Container(
                                    padding: EdgeInsets.all(width * 0.02),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xff007bff),
                                        ),
                                        borderRadius: BorderRadius.circular(5)),
                                    alignment: Alignment.center,
                                    child: Text('View Profiles',
                                        style: TextStyle(
                                            color: Color(0xff007bff),
                                            fontFamily: 'Helvetica_Bold',
                                            fontSize: width * 0.03)),
                                  ),
                                ),
                              ),
                              onTap: () => {
                                Navigator.of(context).pushNamed(
                                  CaregiverProfile.routeName,
                                )
                              },
                            ),
                          ],
                        )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width * 0.4,
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
                                    size: width * 0.1,
                                    color: Color(0xff495057),
                                  )), //CircleAva
                              Padding(
                                  padding: EdgeInsets.only(left: width * 0.05)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${careModel.agePreferences}, 31",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica-Bold',
                                        fontSize: width * 0.04),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.06)),
                                  Text(
                                    "${careModel.CareType}",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: width * 0.04),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(height * 0.01),
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                              child: Row(
                            children: [
                              Icon(
                                Icons.whatsapp,
                                color: Color(0xff28a745),
                                size: width * 0.07,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: width * 0.03),
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
                                  size: width * 0.06,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: width * 0.03),
                              ),
                              Icon(
                                Icons.warning_rounded,
                                color: Colors.red,
                                size: width * 0.08,
                              ),
                            ],
                          )),
                        ),
                      ],
                    ),
              Padding(padding: EdgeInsets.only(top: height * 0.01)),
              MyBookingProvider.stateMyBooking != 'Current Booking'
                  ? MyBookingProvider.stateMyBooking != 'Previous Booking'
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${careModel.schedule_Shift}",
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helveticas',
                                  fontSize: width * 0.035),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: height * 0.01)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.date_range_outlined,
                                  size: width * 0.05,
                                  color: Colors.grey,
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.01)),
                                SizedBox(
                                  width: width * 0.75,
                                  child: EasyRichText(
                                    "${careModel.additionalServices} ${careModel.careRecipientsCount} ${careModel.careRecipientsDetails}",
                                    patternList: [
                                      EasyRichTextPattern(
                                        targetString:
                                            '${careModel.additionalServices}',
                                        style: TextStyle(
                                            color: Color(0xff28306e),
                                            fontFamily: 'Helveticas',
                                            fontSize: width * 0.03),
                                      ),
                                      EasyRichTextPattern(
                                        targetString:
                                            '${careModel.careRecipientsCount}',
                                        style: TextStyle(
                                            color: Color(0xff28306e),
                                            fontFamily: 'Helveticas_Bold',
                                            fontSize: width * 0.035),
                                      ),
                                      EasyRichTextPattern(
                                        targetString:
                                            '${careModel.careRecipientsDetails}',
                                        style: TextStyle(
                                            color: Color(0xff28306e),
                                            fontFamily: 'Helveticas',
                                            fontSize: width * 0.03),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.date_range_outlined,
                                      size: width * 0.05,
                                      color: Colors.grey,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: width * 0.01)),
                                    EasyRichText(
                                      "01 July 2022 to 2 Sep 2022",
                                      patternList: [
                                        EasyRichTextPattern(
                                          targetString: 'to',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helveticas',
                                              fontWeight: FontWeight.bold,
                                              fontSize: width * 0.035),
                                        ),
                                        EasyRichTextPattern(
                                          targetString: '01 July 2022',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helveticas',
                                              fontSize: width * 0.035),
                                        ),
                                        EasyRichTextPattern(
                                          targetString: 't2 Sep 2022o',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helveticas',
                                              fontSize: width * 0.035),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.06)),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      size: width * 0.05,
                                      color: Colors.grey,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: width * 0.01)),
                                    EasyRichText(
                                      "10 shifts done",
                                      patternList: [
                                        EasyRichTextPattern(
                                          targetString: '10',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helveticas',
                                              fontWeight: FontWeight.bold,
                                              fontSize: width * 0.035),
                                        ),
                                        EasyRichTextPattern(
                                          targetString: 'shifts done',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helveticas',
                                              fontSize: width * 0.035),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: height * 0.03)),
                            Row(
                              children: [
                                Icon(
                                  Icons.money,
                                  size: width * 0.05,
                                  color: Colors.grey,
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.01)),
                                EasyRichText(
                                  "Total of 350\$",
                                  patternList: [
                                    EasyRichTextPattern(
                                      targetString: '350',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helveticas',
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.035),
                                    ),
                                    EasyRichTextPattern(
                                      targetString: 'Total of',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helveticas',
                                          fontSize: width * 0.035),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: height * 0.1,
                          padding: EdgeInsets.all(width * 0.03),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                              //more than 50% of width makes circle
                              ),
                          child: Text(
                            "95\$ remaining",
                            style: TextStyle(
                                color: Color(0xff28a745),
                                fontFamily: 'Helveticas',
                                fontSize: width * 0.025),
                          ),
                        ),
                        Container(
                          height: height * 0.1,
                          padding: EdgeInsets.all(width * 0.025),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                              //more than 50% of width makes circle
                              ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "4 remaining shifts",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontFamily: 'Helveticas',
                                    fontSize: width * 0.025),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: height * 0.01)),
                              Text(
                                "out of 10",
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helveticas',
                                    fontSize: width * 0.025),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: height * 0.1,
                          padding: EdgeInsets.all(width * 0.025),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                              //more than 50% of width makes circle
                              ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Booking schedule",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontFamily: 'Helveticas',
                                    fontSize: width * 0.025),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: height * 0.01)),
                              Text(
                                "01 July - 01 Sep, 2022",
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helveticas',
                                    fontSize: width * 0.025),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
              Padding(padding: EdgeInsets.only(top: height * 0.01)),
              isRequest || isDatiel
                  ? Padding(padding: EdgeInsets.only(top: height * 0.01))
                  : isPending
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              SizedBox(
                                child: InkWell(
                                  child: Row(
                                    children: [
                                      IconButton(
                                        iconSize: width * 0.05,
                                        onPressed: () => {
                                          Navigator.of(context).pushNamed(
                                            BookingDetails.routeName,
                                          )
                                        },
                                        icon: Icon(
                                          Icons.arrow_forward_rounded,
                                          size: width * 0.07,
                                          color: Color(0xff28a745),
                                        ),
                                      ),
                                      Text(
                                        "BOOKING DETAILS",
                                        style: TextStyle(
                                            color: Color(0xff28a745),
                                            fontFamily: 'Helvetica-Bold',
                                            fontSize: width * 0.03),
                                      ),
                                    ],
                                  ),
                                  onTap: () => {
                                    Navigator.of(context).pushNamed(
                                      BookingDetails.routeName,
                                    )
                                  },
                                ),
                              ),
                              SizedBox(
                                child: InkWell(
                                  child: Row(
                                    children: [
                                      IconButton(
                                        iconSize: width * 0.05,
                                        onPressed: () => {
                                          Navigator.of(context).pushNamed(
                                            CaregiverProfile.routeName,
                                          )
                                        },
                                        icon: Icon(
                                          Icons.play_circle_outline_sharp,
                                          size: width * 0.07,
                                          color: Color(0xff28a745),
                                        ),
                                      ),
                                      Text(
                                        "CONTINUE PROCESS",
                                        style: TextStyle(
                                            color: Color(0xff28a745),
                                            fontFamily: 'Helvetica-Bold',
                                            fontSize: width * 0.03),
                                      ),
                                    ],
                                  ),
                                  onTap: () => {},
                                ),
                              )
                            ])
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: InkWell(
                                child: Row(
                                  children: [
                                    IconButton(
                                      iconSize: width * 0.05,
                                      onPressed: () => {
                                        Navigator.of(context).pushNamed(
                                          BookingDetails.routeName,
                                        )
                                      },
                                      icon: Icon(
                                        Icons.arrow_forward_rounded,
                                        size: width * 0.07,
                                        color: Color(0xff28a745),
                                      ),
                                    ),
                                    Text(
                                      "DETAILS",
                                      style: TextStyle(
                                          color: Color(0xff28a745),
                                          fontFamily: 'Helvetica-Bold',
                                          fontSize: width * 0.03),
                                    ),
                                  ],
                                ),
                                onTap: () => {
                                  Navigator.of(context).pushNamed(
                                    BookingDetails.routeName,
                                  )
                                },
                              ),
                            ),
                            SizedBox(
                              child: InkWell(
                                child: Row(
                                  children: [
                                    IconButton(
                                      iconSize: width * 0.05,
                                      onPressed: () => {
                                        Navigator.of(context).pushNamed(
                                          BookingRate.routeName,
                                        )
                                      },
                                      icon: Icon(
                                        Icons.star_rate_rounded,
                                        size: width * 0.07,
                                        color: Color(0xff28a745),
                                      ),
                                    ),
                                    Text(
                                      " RATEING",
                                      style: TextStyle(
                                          color: Color(0xff28a745),
                                          fontFamily: 'Helvetica-Bold',
                                          fontSize: width * 0.03),
                                    ),
                                  ],
                                ),
                                onTap: () => {
                                  Navigator.of(context).pushNamed(
                                    BookingRate.routeName,
                                  )
                                },
                              ),
                            ),
                            SizedBox(
                              child: InkWell(
                                child: Row(
                                  children: [
                                    IconButton(
                                      iconSize: width * 0.05,
                                      onPressed: () => {
                                        Navigator.of(context).pushNamed(
                                          CaregiverProfile.routeName,
                                        )
                                      },
                                      icon: Icon(
                                        Icons.refresh_rounded,
                                        size: width * 0.07,
                                        color: Color(0xff28a745),
                                      ),
                                    ),
                                    Text(
                                      "RENEW",
                                      style: TextStyle(
                                          color: Color(0xff28a745),
                                          fontFamily: 'Helvetica-Bold',
                                          fontSize: width * 0.03),
                                    ),
                                  ],
                                ),
                                onTap: () => {},
                              ),
                            ),
                          ],
                        )
            ],
          ),
        ),
      ),
    );
  }
}
