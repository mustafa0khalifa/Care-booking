import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/CaregiverProfile/caregiverProfile.dart';

import '../../../models/pendingBookingsModel.dart';
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: width * 0.6,
                    child: Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Color(0xffe9ecef),
                            radius: width * 0.03,
                            child: Icon(
                              Icons.person,
                              size: width * 0.06,
                              color: Color(0xff495057),
                            )), //CircleAva
                        Padding(padding: EdgeInsets.only(left: width * 0.03)),
                        Text(
                          "${careModel.agePreferences}",
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica-Bold',
                              fontSize: width * 0.04),
                        ),
                        Padding(padding: EdgeInsets.only(left: width * 0.06)),
                        Text(
                          "|",
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica-Bold',
                              fontSize: width * 0.04),
                        ),
                        Padding(padding: EdgeInsets.only(left: width * 0.06)),
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
                              color: Color(0xff007bff),
                              borderRadius: BorderRadius.circular(5)),
                          alignment: Alignment.center,
                          child: Text('View Profiles',
                              style: TextStyle(
                                  color: Colors.white,
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
              ),
              Padding(padding: EdgeInsets.only(top: height * 0.01)),
              Text(
                "${careModel.schedule_Shift}",
                style: TextStyle(
                    color: Color(0xff28306e),
                    fontFamily: 'Helveticas',
                    fontSize: width * 0.035),
              ),
              Padding(padding: EdgeInsets.only(top: height * 0.01)),
              Row(
                children: [
                  IconButton(
                    onPressed: () => {null},
                    icon: Icon(
                      Icons.date_range_outlined,
                      size: width * 0.07,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.75,
                    child: EasyRichText(
                      "${careModel.additionalServices} ${careModel.careRecipientsCount} ${careModel.careRecipientsDetails}",
                      patternList: [
                        EasyRichTextPattern(
                          targetString: '${careModel.additionalServices}',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helveticas',
                              fontSize: width * 0.03),
                        ),
                        EasyRichTextPattern(
                          targetString: '${careModel.careRecipientsCount}',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helveticas_Bold',
                              fontSize: width * 0.035),
                        ),
                        EasyRichTextPattern(
                          targetString: '${careModel.careRecipientsDetails}',
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
              Padding(padding: EdgeInsets.only(top: height * 0.01)),
              isRequest || isDatiel
                  ? Padding(padding: EdgeInsets.only(top: height * 0.01))
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
                              onTap: () => {
                                Navigator.of(context).pushNamed(
                                  CaregiverProfile.routeName,
                                )
                              },
                            ),
                          )
                        ]),
              !isPending
                  ? SizedBox(
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
                              " RATEING BOOKING",
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
                    )
                  : SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
