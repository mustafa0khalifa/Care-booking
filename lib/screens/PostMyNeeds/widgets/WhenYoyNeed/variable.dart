import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/WhenYoyNeed/oneVisite.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/WhenYoyNeed/schedule.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/additionalServicesProvider.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
import '../budget.dart';

class Variable extends StatefulWidget {
  static const routeName = '/variable-screen';

  @override
  _VariableState createState() => _VariableState();
}

class _VariableState extends State<Variable> {
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
          "Variable hours",
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
                              color: Colors.white,
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
                                color: Color(0xff28306e),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.01)),
                              Text(
                                "Regular",
                                style: TextStyle(
                                    color: Color(0xff28306e),
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
                              Icon(Icons.man,
                                  size: deviceSize.width * 0.07,
                                  color: Color(0xff28306e)),
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
                              color: Color(0xff28306e),
                              border: Border.all(color: Colors.white, width: 3),
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
                                color: Colors.white,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.01)),
                              Text(
                                "Variable hours",
                                style: TextStyle(
                                    color: Colors.white,
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
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Divider(
                  thickness: 1,
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  alignment: Alignment.topRight,
                  child: Container(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        color: Colors.blue,
                        width: deviceSize.width * 0.35,
                        height: deviceSize.height * 0.05,
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              size: deviceSize.width * 0.07,
                              color: Colors.white,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors
                                      .blue //elevated btton background color
                                  ),
                              onPressed: () => {
                                /*Navigator.of(context).pushNamed(
                              CareGaverPreference.routeName,
                            ),*/
                              },
                              child: Text("add a shift"),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  child: Text('Date',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica_Bold',
                          fontSize: deviceSize.width * 0.05)),
                ),
                Container(
                  child: SizedBox(
                    width: deviceSize.width * 0.8,
                    height: deviceSize.height * 0.05,
                    child: TextField(
                      minLines: 1,
                      style:
                          TextStyle(color: Colors.blue.shade900, fontSize: 11),
                      decoration: InputDecoration(
                          suffixIcon: Container(
                              color: Colors.grey,
                              child: IconButton(
                                onPressed: () => {},
                                icon: Icon(
                                  Icons.date_range_outlined,
                                  size: deviceSize.width * 0.07,
                                ),
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.grey)),
                          hintText: '08 / 15 / 2022',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 11)),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('From',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.035)),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.01)),
                          SizedBox(
                            height: deviceSize.height * 0.05,
                            width: deviceSize.width * 0.35,
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.blue.shade900, fontSize: 11),
                              decoration: InputDecoration(
                                suffixIcon: Container(
                                  color: Colors.grey,
                                  child: Icon(
                                    Icons.more_time_sharp,
                                    size: deviceSize.width * 0.07,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.grey)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(left: deviceSize.width * 0.1)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('To',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.035)),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.01)),
                          SizedBox(
                            height: deviceSize.height * 0.05,
                            width: deviceSize.width * 0.35,
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.blue.shade900, fontSize: 11),
                              decoration: InputDecoration(
                                suffixIcon: Container(
                                  color: Colors.grey,
                                  child: Icon(
                                    Icons.more_time_sharp,
                                    size: deviceSize.width * 0.07,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.grey)),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  child: Text('Date',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica_Bold',
                          fontSize: deviceSize.width * 0.05)),
                ),
                Container(
                  child: SizedBox(
                    width: deviceSize.width * 0.8,
                    height: deviceSize.height * 0.05,
                    child: TextField(
                      minLines: 1,
                      style:
                          TextStyle(color: Colors.blue.shade900, fontSize: 11),
                      decoration: InputDecoration(
                          suffixIcon: Container(
                              color: Colors.grey,
                              child: IconButton(
                                onPressed: () => {},
                                icon: Icon(
                                  Icons.date_range_outlined,
                                  size: deviceSize.width * 0.07,
                                ),
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.grey)),
                          hintText: '08 / 15 / 2022',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 11)),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  width: deviceSize.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('From',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.035)),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.01)),
                          SizedBox(
                            height: deviceSize.height * 0.05,
                            width: deviceSize.width * 0.35,
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.blue.shade900, fontSize: 11),
                              decoration: InputDecoration(
                                suffixIcon: Container(
                                  color: Colors.grey,
                                  child: Icon(
                                    Icons.more_time_sharp,
                                    size: deviceSize.width * 0.07,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.grey)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(left: deviceSize.width * 0.1)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('To',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.035)),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.01)),
                          SizedBox(
                            height: deviceSize.height * 0.05,
                            width: deviceSize.width * 0.35,
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.blue.shade900, fontSize: 11),
                              decoration: InputDecoration(
                                suffixIcon: Container(
                                  color: Colors.grey,
                                  child: Icon(
                                    Icons.more_time_sharp,
                                    size: deviceSize.width * 0.07,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.grey)),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
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
              ],
            ),
          )),
    );
  }
}
