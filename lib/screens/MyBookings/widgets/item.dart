import 'dart:ffi';

import 'package:flutter/material.dart';

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
      elevation: 5.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.black87)),
      child: Container(
        margin: EdgeInsets.all(width * 0.03),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: width * 0.42,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${careModel.CareType}',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.only(top: height * 0.2)),
                  Text(
                    '${careModel.caregiverWeight}',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.only(top: height * 0.2)),
                  Text(
                    '${careModel.genderPreferences}',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.only(top: height * 0.2)),
                  Text(
                    '${careModel.categoriesDetails}',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.only(top: height * 0.2)),
                  Text(
                    '${careModel.additionalServices}',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.only(top: height * 0.2)),
                  Text(
                    '${careModel.schedule_Shift}',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.only(top: height * 0.2)),
                  Text(
                    '${careModel.price} USD',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.only(top: height * 0.2)),
                ],
              ),
            ),
            SizedBox(
              width: width * 0.48,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${careModel.agePreferences}',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.only(top: height * 0.2)),
                  Text(
                    '${careModel.certificationsPreferences}',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.only(top: height * 0.2)),
                  Text(
                    '${careModel.languagesPreferences}',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.only(top: height * 0.2)),
                  Text(
                    '${careModel.careRecipientsCount}',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.only(top: height * 0.2)),
                  Text(
                    '${careModel.careRecipientsDetails}',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.only(top: height * 0.4)),
                  isRequest || isDatiel
                      ? Padding(padding: EdgeInsets.only(top: height * 0.6))
                      : SizedBox(
                          width: width * 0.5,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                !isPending
                                    ? IconButton(
                                        onPressed: () => {
                                          Navigator.of(context).pushNamed(
                                            BookingRate.routeName,
                                          )
                                        },
                                        icon: Icon(
                                          Icons.star,
                                          size: 25,
                                        ),
                                      )
                                    : SizedBox(
                                        width: 0,
                                      ),
                                !isPending
                                    ? Padding(
                                        padding:
                                            EdgeInsets.only(left: width * 0.04))
                                    : SizedBox(
                                        width: 0,
                                      ),
                                IconButton(
                                  onPressed: () => {
                                    Navigator.of(context).pushNamed(
                                      BookingDetails.routeName,
                                    )
                                  },
                                  icon: Icon(
                                    Icons.info,
                                    size: 25,
                                  ),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.04)),
                                !isPending
                                    ? IconButton(
                                        onPressed: () => {
                                          Navigator.of(context).pushNamed(
                                            BookingDetails.routeName,
                                          )
                                        },
                                        icon: Icon(
                                          Icons.repeat,
                                          size: 25,
                                        ),
                                      )
                                    : IconButton(
                                        onPressed: () => {
                                          Navigator.of(context).pushNamed(
                                            BookingDetails.routeName,
                                          )
                                        },
                                        icon: Icon(
                                          Icons.edit_road,
                                          size: 25,
                                        ),
                                      ),
                              ]),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
