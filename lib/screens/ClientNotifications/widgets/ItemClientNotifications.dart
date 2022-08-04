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
                fontFamily: 'Helvetica',
                fontSize: 20),
          ),
          subtitle: Text(
            '${this.content}',
            style: TextStyle(
                color: Color(0xff28306e),
                fontFamily: 'Helvetica',
                fontSize: 16),
          ),
          trailing: Text(
            '${this.date}',
            style: TextStyle(
                color: Color(0xff28306e),
                fontFamily: 'Helvetica',
                fontSize: 16),
          ),
        ));
  }
}
