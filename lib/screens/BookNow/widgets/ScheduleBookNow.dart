import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/scheduleProvider.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../../BookingsDashboard/bookingsDashboard.dart';
import 'WhereYouNeedBookNow.dart';

class ScheduleBookNow extends StatefulWidget {
  static const routeName = '/scheduleBookNow-screen';

  @override
  _ScheduleStateBookNow createState() => _ScheduleStateBookNow();
}

class _ScheduleStateBookNow extends State<ScheduleBookNow> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: Color(0xff28306e),
            ),
            onPressed: () {
              Navigator.pushAndRemoveUntil<void>(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => BookingsDashboard()),
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Schedule",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.05 * deviceSize.height),
          margin: EdgeInsets.all(deviceSize.width * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Describe your schedule',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                SizedBox(
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black87)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Consumer<ScheduleProvider>(
                          builder: (_, foo, __) => ListTile(
                              title: Text(
                                "Regular",
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
                              ),
                              leading: Radio(
                                  activeColor: Colors.greenAccent,
                                  value: 'Regular',
                                  groupValue: ScheduleProvider.groupValueRadio,
                                  onChanged: (value) {
                                    foo.changeGroubRadio(value as String);
                                  })),
                        ),
                        Consumer<ScheduleProvider>(
                          builder: (_, foo, __) => ListTile(
                              title: Text(
                                "One-visit",
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
                              ),
                              leading: Radio(
                                  activeColor: Colors.greenAccent,
                                  value: 'One-visit',
                                  groupValue: ScheduleProvider.groupValueRadio,
                                  onChanged: (value) {
                                    foo.changeGroubRadio(value as String);
                                  })),
                        ),
                        Consumer<ScheduleProvider>(
                          builder: (_, foo, __) => ListTile(
                              title: Text(
                                "Variable hours",
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
                              ),
                              leading: Radio(
                                  activeColor: Colors.greenAccent,
                                  value: 'Variable hours',
                                  groupValue: ScheduleProvider.groupValueRadio,
                                  onChanged: (value) {
                                    foo.changeGroubRadio(value as String);
                                  })),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Text(
                        'Do you like to have a live-in caregiver?',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Consumer<ScheduleProvider>(
                      builder: (_, foo, __) => FlutterSwitch(
                        width: deviceSize.width * 0.11,
                        height: deviceSize.height * 0.025,
                        value: ScheduleProvider.isLiveIn,
                        activeColor: Colors.green,
                        borderRadius: 30.0,
                        showOnOff: false,
                        onToggle: (val) {
                          foo.changeisLiveIn();
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.01),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: deviceSize.height * 0.03,
                      right: deviceSize.height * 0.03),
                  child: Column(
                    children: [
                      Text(
                        'Live-in care means having a fully trained caregiver living with you in your own home.',
                        style: TextStyle(
                            fontSize: deviceSize.width * 0.03,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 21, 128, 62)),
                      ),
                      Text(
                        'Your live-in caregiver will support you with your specific needs to keep you comfortable and independent at home.',
                        style: TextStyle(
                            fontSize: deviceSize.width * 0.03,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 21, 128, 62)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.01),
                ),
                Consumer<ScheduleProvider>(
                  builder: (_, foo, __) => ScheduleProvider.isLiveIn
                      ? Container(
                          child: SizedBox(
                            height: deviceSize.height * 0.4,
                            child: Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: BorderSide(color: Colors.black87)),
                              child: ListView(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: deviceSize.width * 0.18,
                                                height:
                                                    deviceSize.height * 0.07,
                                                child:
                                                    Consumer<ScheduleProvider>(
                                                  builder: (_, foo, __) =>
                                                      CheckboxListTile(
                                                    activeColor: Colors.green,
                                                    value: ScheduleProvider
                                                        .mondayChecbox,
                                                    onChanged: (val) {
                                                      foo.changemondayChecbox();
                                                    },
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: Text(
                                                  'Monday',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: deviceSize.width * 0.03),
                                            child: SizedBox(
                                              width: deviceSize.width * 0.35,
                                              child: EasyRichText(
                                                "Click here to add more shifts in a day",
                                                patternList: [
                                                  EasyRichTextPattern(
                                                    targetString:
                                                        'Click here to add more shifts in a day',
                                                    style: TextStyle(
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.02,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Colors.blue),
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () {
                                                            // ignore: avoid_print
                                                            print(
                                                                "Tap Sign up");
                                                          },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('From',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03)),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: TextField(
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 11),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.grey)),
                                                  ),
                                                ),
                                              ),
                                              Text('To',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03)),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: TextField(
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 11),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.grey)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: deviceSize.width * 0.18,
                                                height:
                                                    deviceSize.height * 0.07,
                                                child:
                                                    Consumer<ScheduleProvider>(
                                                  builder: (_, foo, __) =>
                                                      CheckboxListTile(
                                                    activeColor: Colors.green,
                                                    value: ScheduleProvider
                                                        .tuesdayChecbox,
                                                    onChanged: (val) {
                                                      foo.changetuesdayChecbox();
                                                    },
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: Text('Tuesday',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.03)),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: deviceSize.width * 0.03),
                                            child: SizedBox(
                                              width: deviceSize.width * 0.35,
                                              child: EasyRichText(
                                                "Click here to add more shifts in a day",
                                                patternList: [
                                                  EasyRichTextPattern(
                                                    targetString:
                                                        'Click here to add more shifts in a day',
                                                    style: TextStyle(
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.02,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Colors.blue),
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () {
                                                            // ignore: avoid_print
                                                            print(
                                                                "Tap Sign up");
                                                          },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('From',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03)),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: TextField(
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 11),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.grey)),
                                                  ),
                                                ),
                                              ),
                                              Text('To',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03)),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: TextField(
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 11),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.grey)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: deviceSize.width * 0.18,
                                                height:
                                                    deviceSize.height * 0.07,
                                                child:
                                                    Consumer<ScheduleProvider>(
                                                  builder: (_, foo, __) =>
                                                      CheckboxListTile(
                                                    activeColor: Colors.green,
                                                    value: ScheduleProvider
                                                        .wednesdayChecbox,
                                                    onChanged: (val) {
                                                      foo.changewednesdayChecbox();
                                                    },
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: Text('Wednesday',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.03)),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: deviceSize.width * 0.03),
                                            child: SizedBox(
                                              width: deviceSize.width * 0.35,
                                              child: EasyRichText(
                                                "Click here to add more shifts in a day",
                                                patternList: [
                                                  EasyRichTextPattern(
                                                    targetString:
                                                        'Click here to add more shifts in a day',
                                                    style: TextStyle(
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.02,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Colors.blue),
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () {
                                                            // ignore: avoid_print
                                                            print(
                                                                "Tap Sign up");
                                                          },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('From',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03)),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: TextField(
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 11),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.grey)),
                                                  ),
                                                ),
                                              ),
                                              Text('To',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03)),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: TextField(
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 11),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.grey)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: deviceSize.width * 0.18,
                                                height:
                                                    deviceSize.height * 0.07,
                                                child:
                                                    Consumer<ScheduleProvider>(
                                                  builder: (_, foo, __) =>
                                                      CheckboxListTile(
                                                    activeColor: Colors.green,
                                                    value: ScheduleProvider
                                                        .thursdayChecbox,
                                                    onChanged: (val) {
                                                      foo.changethursdayChecbox();
                                                    },
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: Text('Thursday',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.03)),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: deviceSize.width * 0.03),
                                            child: SizedBox(
                                              width: deviceSize.width * 0.35,
                                              child: EasyRichText(
                                                "Click here to add more shifts in a day",
                                                patternList: [
                                                  EasyRichTextPattern(
                                                    targetString:
                                                        'Click here to add more shifts in a day',
                                                    style: TextStyle(
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.02,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Colors.blue),
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () {
                                                            // ignore: avoid_print
                                                            print(
                                                                "Tap Sign up");
                                                          },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('From',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03)),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: TextField(
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 11),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.grey)),
                                                  ),
                                                ),
                                              ),
                                              Text('To',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03)),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: TextField(
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 11),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.grey)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: deviceSize.width * 0.18,
                                                height:
                                                    deviceSize.height * 0.07,
                                                child:
                                                    Consumer<ScheduleProvider>(
                                                  builder: (_, foo, __) =>
                                                      CheckboxListTile(
                                                    activeColor: Colors.green,
                                                    value: ScheduleProvider
                                                        .fridayChecbox,
                                                    onChanged: (val) {
                                                      foo.changefridayChecbox();
                                                    },
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: Text('Friday',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.03)),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: deviceSize.width * 0.03),
                                            child: SizedBox(
                                              width: deviceSize.width * 0.35,
                                              child: EasyRichText(
                                                "Click here to add more shifts in a day",
                                                patternList: [
                                                  EasyRichTextPattern(
                                                    targetString:
                                                        'Click here to add more shifts in a day',
                                                    style: TextStyle(
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.02,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Colors.blue),
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () {
                                                            // ignore: avoid_print
                                                            print(
                                                                "Tap Sign up");
                                                          },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('From',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03)),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: TextField(
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 11),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.grey)),
                                                  ),
                                                ),
                                              ),
                                              Text('To',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03)),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: TextField(
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 11),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.grey)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: deviceSize.width * 0.18,
                                                height:
                                                    deviceSize.height * 0.07,
                                                child:
                                                    Consumer<ScheduleProvider>(
                                                  builder: (_, foo, __) =>
                                                      CheckboxListTile(
                                                    activeColor: Colors.green,
                                                    value: ScheduleProvider
                                                        .saturdayChecbox,
                                                    onChanged: (val) {
                                                      foo.changesaturdayChecbox();
                                                    },
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: Text('Saturday',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.03)),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: deviceSize.width * 0.03),
                                            child: SizedBox(
                                              width: deviceSize.width * 0.35,
                                              child: EasyRichText(
                                                "Click here to add more shifts in a day",
                                                patternList: [
                                                  EasyRichTextPattern(
                                                    targetString:
                                                        'Click here to add more shifts in a day',
                                                    style: TextStyle(
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.02,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Colors.blue),
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () {
                                                            // ignore: avoid_print
                                                            print(
                                                                "Tap Sign up");
                                                          },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('From',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03)),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: TextField(
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 11),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.grey)),
                                                  ),
                                                ),
                                              ),
                                              Text('To',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03)),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: TextField(
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 11),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.grey)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: deviceSize.width * 0.18,
                                                height:
                                                    deviceSize.height * 0.07,
                                                child:
                                                    Consumer<ScheduleProvider>(
                                                  builder: (_, foo, __) =>
                                                      CheckboxListTile(
                                                    activeColor: Colors.green,
                                                    value: ScheduleProvider
                                                        .sundayChecbox,
                                                    onChanged: (val) {
                                                      foo.changesundayChecbox();
                                                    },
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: Text('Sunday',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.03)),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: deviceSize.width * 0.03),
                                            child: SizedBox(
                                              width: deviceSize.width * 0.35,
                                              child: EasyRichText(
                                                "Click here to add more shifts in a day",
                                                patternList: [
                                                  EasyRichTextPattern(
                                                    targetString:
                                                        'Click here to add more shifts in a day',
                                                    style: TextStyle(
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.02,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Colors.blue),
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () {
                                                            // ignore: avoid_print
                                                            print(
                                                                "Tap Sign up");
                                                          },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('From',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03)),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: TextField(
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 11),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.grey)),
                                                  ),
                                                ),
                                              ),
                                              Text('To',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03)),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: TextField(
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 11),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.grey)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(
                                        deviceSize.height * 0.01),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child: Text('Start Date',
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize:
                                                    deviceSize.width * 0.03)),
                                      ),
                                      SizedBox(
                                        width: deviceSize.width * 0.3,
                                        child: TextField(
                                          style: TextStyle(
                                              color: Colors.blue.shade900,
                                              fontSize: 11),
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey)),
                                              hintText: '/ / /',
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 11)),
                                        ),
                                      ),
                                      Icon(Icons.date_range_sharp)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: deviceSize.width * 0.18,
                                        height: deviceSize.height * 0.07,
                                        child: Consumer<ScheduleProvider>(
                                          builder: (_, foo, __) =>
                                              CheckboxListTile(
                                            activeColor: Colors.green,
                                            value: ScheduleProvider
                                                .flexibleToStartChecbox,
                                            onChanged: (val) {
                                              foo.changeflexibleToStartChecboxChecbox();
                                            },
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        child: Text(
                                            'Are you flexible to start on this date?',
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize:
                                                    deviceSize.width * 0.03)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.01),
                        ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Text(
                          'Do you want this schedule to end at a specific date?',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.045)),
                    ),
                    Consumer<ScheduleProvider>(
                      builder: (_, foo, __) => FlutterSwitch(
                        width: deviceSize.width * 0.11,
                        height: deviceSize.height * 0.025,
                        value: ScheduleProvider.isEndSpecificDate,
                        activeColor: Colors.green,
                        borderRadius: 30.0,
                        showOnOff: false,
                        onToggle: (val) {
                          foo.changeisEndSpecificDate();
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.01),
                ),
                Consumer<ScheduleProvider>(
                  builder: (_, foo, __) => ScheduleProvider.isEndSpecificDate
                      ? Container(
                          child: SizedBox(
                            child: Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: BorderSide(color: Colors.black87)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    child: Text('End Date',
                                        style: TextStyle(
                                            color: Color(0xff28306e),
                                            fontFamily: 'Helvetica',
                                            fontSize: deviceSize.width * 0.03)),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.3,
                                    child: TextField(
                                      style: TextStyle(
                                          color: Colors.blue.shade900,
                                          fontSize: 11),
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                          hintText: '/ / /',
                                          hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 11)),
                                    ),
                                  ),
                                  Icon(Icons.date_range_sharp)
                                ],
                              ),
                            ),
                          ),
                        )
                      : Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.01),
                        ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Text('Do you expect to renew this booking?',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.045)),
                    ),
                    Consumer<ScheduleProvider>(
                      builder: (_, foo, __) => FlutterSwitch(
                        width: deviceSize.width * 0.11,
                        height: deviceSize.height * 0.025,
                        value: ScheduleProvider.isRenewBooking,
                        activeColor: Colors.green,
                        borderRadius: 30.0,
                        showOnOff: false,
                        onToggle: (val) {
                          foo.changeisRenewBookings();
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.01),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: deviceSize.height * 0.03,
                      right: deviceSize.height * 0.03),
                  child: Text(
                    'when booking for longer periods, you get a discount on company fees, and you will be able to get more offers from interested caregivers.',
                    style: TextStyle(
                        fontSize: deviceSize.width * 0.03,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 21, 128, 62)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(deviceSize.height * 0.05),
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Color(0xff28306e) //elevated btton background color
                        ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(WhereYouNeedBookNow.routeName);
                    },
                    child: Text("Next"),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
