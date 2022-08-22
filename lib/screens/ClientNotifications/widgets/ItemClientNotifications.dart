import 'package:date_format/date_format.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../../../models/favoriteCaregiversModel.dart';

class itemClientNotifications extends StatelessWidget {
  var width;
  var height;
  var index;
  String date;
  String subject;
  String content;
  itemClientNotifications({
    required this.width,
    required this.index,
    required this.height,
    required this.date,
    required this.subject,
    required this.content,
  });
  @override
  Widget build(BuildContext context) {
    return index % 2 == 0
        ? Container(
            padding: EdgeInsets.only(top: height * 0.005),
            //height: height * 0.12,
            decoration: BoxDecoration(
                color: index == 0 ? Color(0xff28306e) : Colors.white,
                border: Border.all(color: Color(0xffD3CFC8), width: 1),
                borderRadius: BorderRadius.all(Radius.circular(5))
                //more than 50% of width makes circle
                ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Icon(
                    Icons.location_on,
                    size: width * 0.06,
                    color: index != 0 ? Colors.grey : Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: width * 0.03)),
                SizedBox(
                  width: width * 0.55,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sumaya checked-in',
                        style: TextStyle(
                            color:
                                index != 0 ? Color(0xff28306e) : Colors.white,
                            fontFamily: 'Helvetica_Bold',
                            fontSize: width * 0.04),
                      ),
                      Padding(padding: EdgeInsets.only(top: height * 0.005)),
                      Text(
                        'Sumaya just checked-in at your place at 11:35 AM',
                        style: TextStyle(
                            color:
                                index != 0 ? Color(0xff28306e) : Colors.white,
                            fontFamily: 'Helvetica',
                            fontSize: width * 0.03),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: width * 0.03)),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 0.1 * width,
                      right: 0.02 * width,
                      bottom: 0.02 * width,
                    ),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '${this.date}',
                      style: TextStyle(
                          color: index != 0 ? Color(0xff28306e) : Colors.white,
                          fontFamily: 'Helvetica',
                          fontStyle: FontStyle.italic,
                          fontSize: width * 0.03),
                    ),
                  ),
                ),
              ],
            ),
          )
        : Container(
            padding: EdgeInsets.only(top: height * 0.005),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xffD3CFC8), width: 1),
                borderRadius: BorderRadius.all(Radius.circular(5))
                //more than 50% of width makes circle
                ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.car_crash_outlined,
                  size: width * 0.06,
                  color: Colors.grey,
                ),
                Padding(padding: EdgeInsets.only(left: width * 0.03)),
                SizedBox(
                  width: width * 0.55,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${this.subject}',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica_Bold',
                            fontSize: width * 0.04),
                      ),
                      Padding(padding: EdgeInsets.only(top: height * 0.005)),
                      Text(
                        '${this.content}',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: width * 0.03),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: width * 0.03)),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 0.1 * width,
                      right: 0.02 * width,
                      bottom: 0.02 * width,
                    ),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '${this.date}',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica',
                          fontStyle: FontStyle.italic,
                          fontSize: width * 0.03),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
