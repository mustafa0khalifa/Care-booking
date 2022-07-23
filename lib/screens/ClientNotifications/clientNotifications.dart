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
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
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
