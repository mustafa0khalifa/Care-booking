import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../../../models/favoriteCaregiversModel.dart';

class itemClientNotifications extends StatelessWidget {
  var width;
  var height;
  String date;
  String subject;
  String content;
  itemClientNotifications({
    required this.width,
    required this.height,
    required this.date,
    required this.subject,
    required this.content,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: Colors.black87)),
        child: ListTile(
          title: Text(
            '${this.subject}',
            style: TextStyle(
                color: Color(0xff28306e),
                fontFamily: 'Helvetica_Bold',
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          contentPadding: EdgeInsets.all(5),
          subtitle: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              '${this.content}',
              style: TextStyle(
                  color: Color(0xff28306e),
                  fontFamily: 'Helvetica',
                  fontSize: 16),
            ),
          ),
          trailing: Container(
            decoration: BoxDecoration(
                color: Color(0xff28306e),
                borderRadius: BorderRadius.all(Radius.circular(10))
                //more than 50% of width makes circle
                ),
            padding: EdgeInsets.all(0.01 * height),
            child: Text(
              '${this.date}',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Helvetica', fontSize: 16),
            ),
          ),
        ));
  }
}
