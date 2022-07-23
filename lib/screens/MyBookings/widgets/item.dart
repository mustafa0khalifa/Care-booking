import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../../models/pendingBookingsModel.dart';
import 'bookingDetails.dart';
import 'bookingRate.dart';

class ItemPending extends StatelessWidget {
  var width;
  var height;
  bool isDatiel;
  PendingBookingsModel careModel;
  bool isPending;
  ItemPending({
    required this.width,
    required this.height,
    required this.careModel,
    required this.isPending,
    required this.isDatiel,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.black87)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: width * 0.48,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${careModel.CareType}',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                Text(
                  '${careModel.caregiverWeight}',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                Text(
                  '${careModel.genderPreferences}',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                Text(
                  '${careModel.categoriesDetails}',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                Text(
                  '${careModel.additionalServices}',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                Text(
                  '${careModel.schedule_Shift}',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                Text(
                  '${careModel.price} USD',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                Padding(padding: EdgeInsets.only(top: height * 0.2)),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(left: width * 0.04)),
          SizedBox(
            width: width * 0.48,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: height * 0.2)),
                Text(
                  '${careModel.agePreferences}',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                Text(
                  '${careModel.certificationsPreferences}',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                Text(
                  '${careModel.languagesPreferences}',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                Text(
                  '${careModel.careRecipientsCount}',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                Text(
                  '${careModel.careRecipientsDetails}',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                Padding(padding: EdgeInsets.only(top: height * 0.2)),
                isDatiel
                    ? SizedBox(
                        width: 0,
                      )
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
                                  padding: EdgeInsets.only(left: width * 0.04)),
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
    );
  }
}
