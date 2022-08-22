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
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
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
                          height: deviceSize.height * 0.1,
                          padding: EdgeInsets.all(deviceSize.width * 0.01),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xff28306e),
                              border: Border.all(
                                  color: Color(0xff28306e), width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                              //more than 50% of width makes circle
                              ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                    fontSize: deviceSize.width * 0.03),
                              ),
                            ],
                          )),
                      onTap: () =>
                          {Navigator.of(context).pushNamed(Schedule.routeName)},
                    ),
                    InkWell(
                      child: Container(
                          width: deviceSize.width * 0.25,
                          height: deviceSize.height * 0.1,
                          padding: EdgeInsets.all(deviceSize.width * 0.01),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Color(0xffD3CFC8), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              )
                              //more than 50% of width makes circle
                              ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                    fontSize: deviceSize.width * 0.03),
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
                          height: deviceSize.height * 0.1,
                          padding: EdgeInsets.all(deviceSize.width * 0.01),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Color(0xffD3CFC8), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              )
                              //more than 50% of width makes circle
                              ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                    fontSize: deviceSize.width * 0.03),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.75,
                      child: Text(
                        'Do you like to have a live-in caregiver?',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Consumer<ScheduleProvider>(
                        builder: (_, foo, __) => Switch.adaptive(
                            value: ScheduleProvider.isLiveIn,
                            onChanged: (newValue) {
                              foo.changeisLiveIn();
                            })),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.orange[100],
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.note,
                          size: deviceSize.width * 0.06,
                          color: Color(0xff28306e),
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(left: deviceSize.width * 0.01)),
                        Text(
                          'Note',
                          style: TextStyle(
                            fontSize: deviceSize.width * 0.035,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff28306e),
                          ),
                        ),
                      ],
                    ),
                    subtitle: Text(
                      'Live-in care means having a fully trained caregiver living with you in your own home.\nYour live-in caregiver will support you with your specific needs to keep you comfortable and independent at home.',
                      style: TextStyle(
                        fontSize: deviceSize.width * 0.025,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff28306e),
                      ),
                    ),
                    onTap: () => {},
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Consumer<ScheduleProvider>(
                  builder: (_, foo, __) => ScheduleProvider.isLiveIn
                      ? Container(
                          padding: EdgeInsets.all(deviceSize.width * 0.02),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xffD3CFC8), width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                              //more than 50% of width makes circle
                              ),
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
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  border: Border.all(
                                                    color: Color(0xff28306e),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Text(
                                                'M',
                                                style: TextStyle(
                                                    color: !ScheduleDateProvider
                                                            .clickDay[0]
                                                        ? Color(0xff28306e)
                                                        : Colors.white,
                                                    fontFamily:
                                                        'Helvetica_Bold',
                                                    fontSize: deviceSize.width *
                                                        0.035),
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
                                                      ? Color.fromARGB(
                                                          255, 117, 126, 93)
                                                      : Colors.white,
                                                  border: Border.all(
                                                    color: Color.fromARGB(
                                                        255, 117, 126, 93),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Text(
                                                'T',
                                                style: TextStyle(
                                                    color: !ScheduleDateProvider
                                                            .clickDay[1]
                                                        ? Color.fromARGB(
                                                            255, 117, 126, 93)
                                                        : Colors.white,
                                                    fontFamily:
                                                        'Helvetica_Bold',
                                                    fontSize: deviceSize.width *
                                                        0.035),
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
                                                      ? Color.fromARGB(
                                                          255, 151, 44, 128)
                                                      : Colors.white,
                                                  border: Border.all(
                                                    color: Color.fromARGB(
                                                        255, 151, 44, 128),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Text(
                                                'W',
                                                style: TextStyle(
                                                    color: !ScheduleDateProvider
                                                            .clickDay[2]
                                                        ? Color.fromARGB(
                                                            255, 151, 44, 128)
                                                        : Colors.white,
                                                    fontFamily:
                                                        'Helvetica_Bold',
                                                    fontSize: deviceSize.width *
                                                        0.035),
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
                                                      ? Color.fromARGB(
                                                          255, 160, 31, 106)
                                                      : Colors.white,
                                                  border: Border.all(
                                                    color: Color.fromARGB(
                                                        255, 160, 31, 106),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Text(
                                                'T',
                                                style: TextStyle(
                                                    color: !ScheduleDateProvider
                                                            .clickDay[3]
                                                        ? Color.fromARGB(
                                                            255, 160, 31, 106)
                                                        : Colors.white,
                                                    fontFamily:
                                                        'Helvetica_Bold',
                                                    fontSize: deviceSize.width *
                                                        0.035),
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
                                                      ? Color.fromARGB(
                                                          255, 104, 40, 110)
                                                      : Colors.white,
                                                  border: Border.all(
                                                    color: Color.fromARGB(
                                                        255, 104, 40, 110),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Text(
                                                'F',
                                                style: TextStyle(
                                                    color: !ScheduleDateProvider
                                                            .clickDay[4]
                                                        ? Color.fromARGB(
                                                            255, 104, 40, 110)
                                                        : Colors.white,
                                                    fontFamily:
                                                        'Helvetica_Bold',
                                                    fontSize: deviceSize.width *
                                                        0.035),
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
                                                      ? Color.fromARGB(
                                                          255, 92, 7, 117)
                                                      : Colors.white,
                                                  border: Border.all(
                                                    color: Color.fromARGB(
                                                        255, 92, 7, 117),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Text(
                                                'S',
                                                style: TextStyle(
                                                    color: !ScheduleDateProvider
                                                            .clickDay[5]
                                                        ? Color.fromARGB(
                                                            255, 92, 7, 117)
                                                        : Colors.white,
                                                    fontFamily:
                                                        'Helvetica_bold',
                                                    fontSize: deviceSize.width *
                                                        0.035),
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
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  border: Border.all(
                                                    color: Color(0xff28306e),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Text(
                                                'S',
                                                style: TextStyle(
                                                    color: !ScheduleDateProvider
                                                            .clickDay[6]
                                                        ? Color(0xff28306e)
                                                        : Colors.white,
                                                    fontFamily:
                                                        'Helvetica_bold',
                                                    fontSize: deviceSize.width *
                                                        0.035),
                                              ),
                                            ),
                                            onTap: () =>
                                                {foo.changeclickDayOk(6)},
                                          )),
                                ],
                              ),
                              Consumer<ScheduleDateProvider>(
                                builder: (_, foo, __) =>
                                    ScheduleDateProvider.clickDay.contains(true)
                                        ? Padding(
                                            padding: EdgeInsets.only(
                                                top: deviceSize.height * 0.03),
                                          )
                                        : SizedBox(),
                              ),
                              Consumer<ScheduleDateProvider>(
                                builder: (_, foo, __) => ScheduleDateProvider
                                        .clickDay[0]
                                    ? DaySh(
                                        day: 'Monday',
                                        height: deviceSize.height,
                                        width: deviceSize.width,
                                        index: 0,
                                        color:
                                            Color.fromARGB(255, 141, 150, 221),
                                      )
                                    : SizedBox(),
                              ),
                              Consumer<ScheduleDateProvider>(
                                builder: (_, foo, __) => ScheduleDateProvider
                                        .clickDay[1]
                                    ? DaySh(
                                        day: 'Tuesday',
                                        height: deviceSize.height,
                                        width: deviceSize.width,
                                        index: 1,
                                        color:
                                            Color.fromARGB(255, 117, 126, 93),
                                      )
                                    : SizedBox(),
                              ),
                              Consumer<ScheduleDateProvider>(
                                builder: (_, foo, __) => ScheduleDateProvider
                                        .clickDay[2]
                                    ? DaySh(
                                        day: 'Wednesday',
                                        height: deviceSize.height,
                                        width: deviceSize.width,
                                        index: 2,
                                        color:
                                            Color.fromARGB(255, 151, 44, 128),
                                      )
                                    : SizedBox(),
                              ),
                              Consumer<ScheduleDateProvider>(
                                builder: (_, foo, __) => ScheduleDateProvider
                                        .clickDay[3]
                                    ? DaySh(
                                        day: 'Thursday',
                                        height: deviceSize.height,
                                        width: deviceSize.width,
                                        index: 3,
                                        color:
                                            Color.fromARGB(255, 160, 31, 106),
                                      )
                                    : SizedBox(),
                              ),
                              Consumer<ScheduleDateProvider>(
                                builder: (_, foo, __) => ScheduleDateProvider
                                        .clickDay[4]
                                    ? DaySh(
                                        day: 'Friday',
                                        height: deviceSize.height,
                                        width: deviceSize.width,
                                        index: 4,
                                        color:
                                            Color.fromARGB(255, 104, 40, 110),
                                      )
                                    : SizedBox(),
                              ),
                              Consumer<ScheduleDateProvider>(
                                builder: (_, foo, __) => ScheduleDateProvider
                                        .clickDay[5]
                                    ? DaySh(
                                        day: 'Saturday',
                                        height: deviceSize.height,
                                        width: deviceSize.width,
                                        index: 5,
                                        color: Color.fromARGB(255, 92, 7, 117),
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
                                            color: Color(0xff28306e),
                                          )
                                        : SizedBox(),
                              ),
                            ],
                          ),
                        )
                      : Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.01),
                        ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.02)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.75,
                      child: Text(
                          'Do you want this schedule to end at a specific date?',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.045)),
                    ),
                    Consumer<ScheduleProvider>(
                        builder: (_, foo, __) => Switch.adaptive(
                            value: ScheduleProvider.isEndSpecificDate,
                            onChanged: (newValue) {
                              foo.changeisEndSpecificDate();
                            })),
                  ],
                ),
                Consumer<ScheduleProvider>(
                    builder: (_, foo, __) => ScheduleProvider.isEndSpecificDate
                        ? Container(
                            padding: EdgeInsets.all(deviceSize.width * 0.01),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Text('End Date',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica_Bold',
                                          fontSize: deviceSize.width * 0.035)),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: deviceSize.height * 0.005)),
                                SizedBox(
                                  height: deviceSize.height * 0.05,
                                  width: deviceSize.width * 0.8,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: null,
                                    style: TextStyle(
                                      fontSize: deviceSize.width * 0.03,
                                      color: Color(0xff495057),
                                      fontFamily: 'Helvetica',
                                    ),
                                    decoration: InputDecoration(
                                      hintText: '08 / 17 / 2022',
                                      fillColor: Color(0xffe9ecef),
                                      filled: true,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xffced4da),
                                            width: 1.0),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xffced4da),
                                            width: 1.0),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide: BorderSide(
                                              color: Color(0xffced4da))),
                                      suffixIcon: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffe9ecef),
                                            border: Border.all(
                                              color: Color(0xffced4da),
                                            ),
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(5),
                                                bottomRight: Radius.circular(5))
                                            //more than 50% of width makes circle
                                            ),
                                        child: Icon(
                                          color: Color(0xff495057),
                                          Icons.date_range_outlined,
                                          size: deviceSize.width * 0.07,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : SizedBox()),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.75,
                      child: Text('Do you expect to renew this booking?',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.045)),
                    ),
                    Consumer<ScheduleProvider>(
                        builder: (_, foo, __) => Switch.adaptive(
                            value: ScheduleProvider.isRenewBooking,
                            onChanged: (newValue) {
                              foo.changeisRenewBookings();
                            })),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.orange[100],
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.note,
                          size: deviceSize.width * 0.06,
                          color: Color(0xff28306e),
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(left: deviceSize.width * 0.01)),
                        Text(
                          'Note',
                          style: TextStyle(
                            fontSize: deviceSize.width * 0.035,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff28306e),
                          ),
                        ),
                      ],
                    ),
                    subtitle: Text(
                      'when booking for longer periods, you get a discount on company fees, and you will be able to get more offers from interested caregivers.',
                      style: TextStyle(
                        fontSize: deviceSize.width * 0.025,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff28306e),
                      ),
                    ),
                    onTap: () => {},
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
