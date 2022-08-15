import 'package:flutter/material.dart';
import 'package:flutter_application_10000/models/testModel.dart';

import 'widgets/ItemClientNotifications.dart';

class ClientNotifications extends StatefulWidget {
  static const routeName = '/clientNotifications-screen';

  @override
  _ClientNotificationsState createState() => _ClientNotificationsState();
}

class _ClientNotificationsState extends State<ClientNotifications> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Notification",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.01 * deviceSize.height),
          margin: EdgeInsets.all(deviceSize.height * 0.03),
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return itemClientNotifications(
                height: deviceSize.height,
                width: deviceSize.width,
                date: '12 : 05',
                subject: 'completes profile ',
                content: 'caregiver completes your profile ',
              );
            },
          )),
    );
  }
}
