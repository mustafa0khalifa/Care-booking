import 'package:flutter/material.dart';

import '../../../models/pendingBookingsModel.dart';
import 'bookingDetails.dart';
import 'bookingRate.dart';

class ItemDetiel extends StatelessWidget {
  var width;
  var height;
  bool isDatiel;
  bool isRequest;
  PendingBookingsModel careModel;
  bool isPending;
  ItemDetiel({
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
              SizedBox(
                child: Text(
                  '${careModel.CareType}',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica_Blod',
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.04),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: height * 0.05)),
              SizedBox(
                child: Text(
                  "preferable caregiver details:",
                  style: TextStyle(
                      color: Color(0xffD3CFC8),
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.04),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: height * 0.05)),
              Container(
                padding: EdgeInsets.all(0.2 * height),
                color: Color.fromARGB(255, 241, 240, 240),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          child: Text(
                            'Age: ',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.04),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '${careModel.agePreferences}',
                            style: TextStyle(
                                color: Color.fromARGB(255, 136, 135, 135),
                                fontFamily: 'Helvetica',
                                fontSize: width * 0.03),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: height * 0.1)),
                    Row(
                      children: [
                        SizedBox(
                          child: Text(
                            'Maximum distance: ',
                            maxLines: 2,
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.04),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '${careModel.caregiverWeight}',
                            maxLines: 2,
                            style: TextStyle(
                                color: Color.fromARGB(255, 136, 135, 135),
                                fontFamily: 'Helvetica',
                                fontSize: width * 0.03),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: height * 0.1)),
                    Row(
                      children: [
                        SizedBox(
                          child: Text(
                            'Gender: ',
                            maxLines: 2,
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.04),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '${careModel.genderPreferences}',
                            maxLines: 2,
                            style: TextStyle(
                                color: Color.fromARGB(255, 136, 135, 135),
                                fontFamily: 'Helvetica',
                                fontSize: width * 0.03),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: height * 0.1)),
                    Row(
                      children: [
                        SizedBox(
                          child: Text(
                            'Gender: ',
                            maxLines: 2,
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.04),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '${careModel.languagesPreferences}',
                            maxLines: 2,
                            style: TextStyle(
                                color: Color.fromARGB(255, 136, 135, 135),
                                fontFamily: 'Helvetica',
                                fontSize: width * 0.03),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: height * 0.1)),
                    Column(
                      children: [
                        SizedBox(
                          width: width * 0.9,
                          child: Text(
                            'Sub categries & Services & Count: ',
                            maxLines: 2,
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.04),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.9,
                          child: Text(
                            '${careModel.categoriesDetails}',
                            maxLines: 2,
                            style: TextStyle(
                                color: Color.fromARGB(255, 136, 135, 135),
                                fontFamily: 'Helvetica',
                                fontSize: width * 0.03),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: height * 0.1)),
                    Column(
                      children: [
                        SizedBox(
                          width: width * 0.9,
                          child: Text(
                            'Additional Services: ',
                            maxLines: 2,
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.04),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.9,
                          child: Text(
                            '${careModel.careRecipientsDetails}',
                            maxLines: 2,
                            style: TextStyle(
                                color: Color.fromARGB(255, 136, 135, 135),
                                fontFamily: 'Helvetica',
                                fontSize: width * 0.03),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: height * 0.1)),
                    Column(
                      children: [
                        SizedBox(
                          width: width * 0.9,
                          child: Text(
                            'Schedule: ',
                            maxLines: 2,
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.04),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.9,
                          child: Text(
                            '${careModel.schedule_Shift}',
                            maxLines: 2,
                            style: TextStyle(
                                color: Color.fromARGB(255, 136, 135, 135),
                                fontFamily: 'Helvetica',
                                fontSize: width * 0.03),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: height * 0.1)),
                    Row(
                      children: [
                        SizedBox(
                          child: Text(
                            'Budget: ',
                            maxLines: 2,
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.04),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '${careModel.price}\$ per hour',
                            maxLines: 2,
                            style: TextStyle(
                                color: Color.fromARGB(255, 136, 135, 135),
                                fontFamily: 'Helvetica',
                                fontSize: width * 0.03),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: height * 0.1)),
                  ],
                ),
              ),
              isRequest || isDatiel
                  ? Padding(padding: EdgeInsets.only(top: height * 0.01))
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
      ),
    );
  }
}
