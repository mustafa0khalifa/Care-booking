import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/scheduleProvider.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/WhenYoyNeed/variable.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/budget.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/CategoriesProvider.dart';
import '../../../../providers/PostMyNeedsProvider/scheduleDateProvider.dart';
import '../../../../providers/PostMyNeedsProvider/scheduleProvider.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
import 'oneVisite.dart';
import 'wedget/daySh.dart';

class Schedule extends StatefulWidget {
  static const routeName = '/schedule-screen';

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
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
          "Regular",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          margin: EdgeInsets.all(deviceSize.width * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '4',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '5',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '6',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.1,
                      height: deviceSize.width * 0.1,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xff28306e),
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '7',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '8',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '9',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.06)),
                Text(
                  'Describe your schedule',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                          width: deviceSize.width * 0.25,
                          height: deviceSize.height * 0.17,
                          padding: EdgeInsets.all(deviceSize.height * 0.03),
                          decoration: BoxDecoration(
                              color: Color(0xff28306e),
                              border: Border.all(
                                  color: Color(0xff28306e), width: 3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))
                              //more than 50% of width makes circle
                              ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.refresh,
                                size: deviceSize.width * 0.07,
                                color: Colors.white,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.01)),
                              Text(
                                "Regular",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.035),
                              ),
                            ],
                          )),
                      onTap: () =>
                          {Navigator.of(context).pushNamed(Schedule.routeName)},
                    ),
                    InkWell(
                      child: Container(
                          width: deviceSize.width * 0.25,
                          height: deviceSize.height * 0.17,
                          padding: EdgeInsets.all(deviceSize.height * 0.03),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Color(0xff28306e), width: 3),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              )
                              //more than 50% of width makes circle
                              ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.man,
                                size: deviceSize.width * 0.07,
                                color: Color(0xff28306e),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.01)),
                              Text(
                                "One visit",
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.035),
                              ),
                            ],
                          )),
                      onTap: () => {
                        Navigator.of(context).pushNamed(OneVisite.routeName)
                      },
                    ),
                    InkWell(
                      child: Container(
                          width: deviceSize.width * 0.25,
                          height: deviceSize.height * 0.17,
                          padding: EdgeInsets.all(deviceSize.height * 0.03),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Color(0xff28306e), width: 3),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              )
                              //more than 50% of width makes circle
                              ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.date_range,
                                size: deviceSize.width * 0.07,
                                color: Color(0xff28306e),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.01)),
                              Text(
                                "Variable hours",
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.035),
                              ),
                            ],
                          )),
                      onTap: () =>
                          {Navigator.of(context).pushNamed(Variable.routeName)},
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
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
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.orange[100],
                        border: Border.all(color: Colors.orange),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(deviceSize.width * 0.03),
                    child: Column(
                      children: [
                        Text(
                          'Live-in care means having a fully trained caregiver living with you in your own home.',
                          style: TextStyle(
                            fontSize: deviceSize.width * 0.03,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff28306e),
                          ),
                        ),
                        Text(
                          'Your live-in caregiver will support you with your specific needs to keep you comfortable and independent at home.',
                          style: TextStyle(
                            fontSize: deviceSize.width * 0.03,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff28306e),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.01),
                ),
                Consumer<ScheduleProvider>(
                  builder: (_, foo, __) => ScheduleProvider.isLiveIn
                      ? Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(color: Colors.black87)),
                          child: Container(
                            padding: EdgeInsets.all(deviceSize.width * 0.03),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Consumer<ScheduleDateProvider>(
                                        builder: (_, foo, __) => InkWell(
                                              child: Container(
                                                width: deviceSize.width * 0.1,
                                                height: deviceSize.width * 0.1,
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.all(
                                                    deviceSize.width * 0.01),
                                                decoration: BoxDecoration(
                                                    color: ScheduleDateProvider
                                                            .clickDay[0]
                                                        ? Colors.grey
                                                        : Color.fromARGB(
                                                            255, 141, 150, 221),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                                child: Text(
                                                  'Mo',
                                                  style: TextStyle(
                                                      color:
                                                          ScheduleDateProvider
                                                                  .clickDay[0]
                                                              ? Color(
                                                                  0xff28306e)
                                                              : Colors.white,
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03),
                                                ),
                                              ),
                                              onTap: () =>
                                                  {foo.changeclickDayOk(0)},
                                            )),
                                    Consumer<ScheduleDateProvider>(
                                        builder: (_, foo, __) => InkWell(
                                              child: Container(
                                                width: deviceSize.width * 0.1,
                                                height: deviceSize.width * 0.1,
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.all(
                                                    deviceSize.width * 0.01),
                                                decoration: BoxDecoration(
                                                    color: ScheduleDateProvider
                                                            .clickDay[1]
                                                        ? Colors.grey
                                                        : Color.fromARGB(
                                                            255, 117, 126, 93),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                                child: Text(
                                                  'Tu',
                                                  style: TextStyle(
                                                      color:
                                                          ScheduleDateProvider
                                                                  .clickDay[1]
                                                              ? Color(
                                                                  0xff28306e)
                                                              : Colors.white,
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03),
                                                ),
                                              ),
                                              onTap: () =>
                                                  {foo.changeclickDayOk(1)},
                                            )),
                                    Consumer<ScheduleDateProvider>(
                                        builder: (_, foo, __) => InkWell(
                                              child: Container(
                                                width: deviceSize.width * 0.1,
                                                height: deviceSize.width * 0.1,
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.all(
                                                    deviceSize.width * 0.01),
                                                decoration: BoxDecoration(
                                                    color: ScheduleDateProvider
                                                            .clickDay[2]
                                                        ? Colors.grey
                                                        : Color.fromARGB(
                                                            255, 151, 44, 128),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                                child: Text(
                                                  'We',
                                                  style: TextStyle(
                                                      color:
                                                          ScheduleDateProvider
                                                                  .clickDay[2]
                                                              ? Color(
                                                                  0xff28306e)
                                                              : Colors.white,
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03),
                                                ),
                                              ),
                                              onTap: () =>
                                                  {foo.changeclickDayOk(2)},
                                            )),
                                    Consumer<ScheduleDateProvider>(
                                        builder: (_, foo, __) => InkWell(
                                              child: Container(
                                                width: deviceSize.width * 0.1,
                                                height: deviceSize.width * 0.1,
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.all(
                                                    deviceSize.width * 0.01),
                                                decoration: BoxDecoration(
                                                    color: ScheduleDateProvider
                                                            .clickDay[3]
                                                        ? Colors.grey
                                                        : Color.fromARGB(
                                                            255, 160, 31, 106),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                                child: Text(
                                                  'Th',
                                                  style: TextStyle(
                                                      color:
                                                          ScheduleDateProvider
                                                                  .clickDay[3]
                                                              ? Color(
                                                                  0xff28306e)
                                                              : Colors.white,
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03),
                                                ),
                                              ),
                                              onTap: () =>
                                                  {foo.changeclickDayOk(3)},
                                            )),
                                    Consumer<ScheduleDateProvider>(
                                        builder: (_, foo, __) => InkWell(
                                              child: Container(
                                                width: deviceSize.width * 0.1,
                                                height: deviceSize.width * 0.1,
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.all(
                                                    deviceSize.width * 0.01),
                                                decoration: BoxDecoration(
                                                    color: ScheduleDateProvider
                                                            .clickDay[4]
                                                        ? Colors.grey
                                                        : Color.fromARGB(
                                                            255, 104, 40, 110),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                                child: Text(
                                                  'Fr',
                                                  style: TextStyle(
                                                      color:
                                                          ScheduleDateProvider
                                                                  .clickDay[4]
                                                              ? Color(
                                                                  0xff28306e)
                                                              : Colors.white,
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03),
                                                ),
                                              ),
                                              onTap: () =>
                                                  {foo.changeclickDayOk(4)},
                                            )),
                                    Consumer<ScheduleDateProvider>(
                                        builder: (_, foo, __) => InkWell(
                                              child: Container(
                                                width: deviceSize.width * 0.1,
                                                height: deviceSize.width * 0.1,
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.all(
                                                    deviceSize.width * 0.01),
                                                decoration: BoxDecoration(
                                                    color: ScheduleDateProvider
                                                            .clickDay[5]
                                                        ? Colors.grey
                                                        : Color.fromARGB(
                                                            255, 92, 7, 117),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                                child: Text(
                                                  'Sa',
                                                  style: TextStyle(
                                                      color:
                                                          ScheduleDateProvider
                                                                  .clickDay[5]
                                                              ? Color(
                                                                  0xff28306e)
                                                              : Colors.white,
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03),
                                                ),
                                              ),
                                              onTap: () =>
                                                  {foo.changeclickDayOk(5)},
                                            )),
                                    Consumer<ScheduleDateProvider>(
                                        builder: (_, foo, __) => InkWell(
                                              child: Container(
                                                width: deviceSize.width * 0.1,
                                                height: deviceSize.width * 0.1,
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.all(
                                                    deviceSize.width * 0.01),
                                                decoration: BoxDecoration(
                                                    color: ScheduleDateProvider
                                                            .clickDay[6]
                                                        ? Colors.grey
                                                        : Color(0xff28306e),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                                child: Text(
                                                  'Su',
                                                  style: TextStyle(
                                                      color:
                                                          ScheduleDateProvider
                                                                  .clickDay[6]
                                                              ? Color(
                                                                  0xff28306e)
                                                              : Colors.white,
                                                      fontFamily: 'Helvetica',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.03),
                                                ),
                                              ),
                                              onTap: () =>
                                                  {foo.changeclickDayOk(6)},
                                            )),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.03),
                                ),
                                Consumer<ScheduleDateProvider>(
                                  builder: (_, foo, __) =>
                                      ScheduleDateProvider.clickDay[0]
                                          ? DaySh(
                                              day: 'Monday',
                                              height: deviceSize.height,
                                              width: deviceSize.width,
                                              index: 0,
                                            )
                                          : SizedBox(),
                                ),
                                Consumer<ScheduleDateProvider>(
                                  builder: (_, foo, __) =>
                                      ScheduleDateProvider.clickDay[1]
                                          ? DaySh(
                                              day: 'Tuesday',
                                              height: deviceSize.height,
                                              width: deviceSize.width,
                                              index: 1,
                                            )
                                          : SizedBox(),
                                ),
                                Consumer<ScheduleDateProvider>(
                                  builder: (_, foo, __) =>
                                      ScheduleDateProvider.clickDay[2]
                                          ? DaySh(
                                              day: 'Wednesday',
                                              height: deviceSize.height,
                                              width: deviceSize.width,
                                              index: 2,
                                            )
                                          : SizedBox(),
                                ),
                                Consumer<ScheduleDateProvider>(
                                  builder: (_, foo, __) =>
                                      ScheduleDateProvider.clickDay[3]
                                          ? DaySh(
                                              day: 'Thursday',
                                              height: deviceSize.height,
                                              width: deviceSize.width,
                                              index: 3,
                                            )
                                          : SizedBox(),
                                ),
                                Consumer<ScheduleDateProvider>(
                                  builder: (_, foo, __) =>
                                      ScheduleDateProvider.clickDay[4]
                                          ? DaySh(
                                              day: 'Friday',
                                              height: deviceSize.height,
                                              width: deviceSize.width,
                                              index: 4,
                                            )
                                          : SizedBox(),
                                ),
                                Consumer<ScheduleDateProvider>(
                                  builder: (_, foo, __) =>
                                      ScheduleDateProvider.clickDay[5]
                                          ? DaySh(
                                              day: 'Saturday',
                                              height: deviceSize.height,
                                              width: deviceSize.width,
                                              index: 5,
                                            )
                                          : SizedBox(),
                                ),
                                Consumer<ScheduleDateProvider>(
                                  builder: (_, foo, __) =>
                                      ScheduleDateProvider.clickDay[6]
                                          ? DaySh(
                                              day: 'Sunday',
                                              height: deviceSize.height,
                                              width: deviceSize.width,
                                              index: 6,
                                            )
                                          : SizedBox(),
                                ),
                              ],
                            ),
                          ))
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
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.orange[100],
                        border: Border.all(color: Colors.orange),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(deviceSize.width * 0.03),
                    child: Text(
                      'when booking for longer periods, you get a discount on company fees, and you will be able to get more offers from interested caregivers.',
                      style: TextStyle(
                        fontSize: deviceSize.width * 0.03,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff28306e),
                      ),
                    ),
                  ),
                ),
                Consumer<CategoriesProvider>(
                  builder: (_, foo, __) => Container(
                    margin: EdgeInsets.all(deviceSize.height * 0.05),
                    alignment: Alignment.bottomRight,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors
                                  .orangeAccent //elevated btton background color
                              ),
                          onPressed: () => {
                            /*Navigator.of(context).pushNamed(
                                CareCategory.routeName,
                              ),*/
                            Navigator.of(context).pop()
                          },
                          child: Text("Back"),
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(left: deviceSize.width * 0.2)),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors
                                  .greenAccent //elevated btton background color
                              ),
                          onPressed: () => {
                            /*Navigator.of(context).pushNamed(
                                CareCategory.routeName,
                              ),*/
                            Navigator.of(context).pushNamed(Budget.routeName),
                          },
                          child: Text("Next"),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

/*


 Container(
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
                     
                     */
