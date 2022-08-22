import 'package:flutter/material.dart';

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
          padding: EdgeInsets.all(0.03 * deviceSize.width),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Container(
                      width: deviceSize.width * 0.2,
                      padding: EdgeInsets.all(deviceSize.width * 0.02),
                      decoration: BoxDecoration(
                          color: Color(0xff28306e),
                          borderRadius: BorderRadius.circular(15)),
                      alignment: Alignment.center,
                      child: Text('All',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Helvetica_Bold',
                              fontSize: deviceSize.width * 0.04)),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: deviceSize.width * 0.06)),
                  SizedBox(
                    child: Container(
                      width: deviceSize.width * 0.2,
                      padding: EdgeInsets.all(deviceSize.width * 0.02),
                      decoration: BoxDecoration(
                          color: Color(0xffD3CFC8),
                          borderRadius: BorderRadius.circular(15)),
                      alignment: Alignment.center,
                      child: Text('Unread',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica_Bold',
                              fontSize: deviceSize.width * 0.04)),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: deviceSize.width * 0.06)),
                  SizedBox(
                    child: Container(
                      width: deviceSize.width * 0.2,
                      padding: EdgeInsets.all(deviceSize.width * 0.02),
                      decoration: BoxDecoration(
                          color: Color(0xffD3CFC8),
                          borderRadius: BorderRadius.circular(15)),
                      alignment: Alignment.center,
                      child: Text('Read',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica_Bold',
                              fontSize: deviceSize.width * 0.04)),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              SizedBox(
                height: deviceSize.height * 0.77,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return itemClientNotifications(
                      index: index,
                      height: deviceSize.height,
                      width: deviceSize.width,
                      date: 'sint 10 mins ago',
                      subject: 'Sumaya is on her way',
                      content:
                          'she will arrive at 11:30 AM\nView booking details',
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}
