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
                Container(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      color: Colors.blue,
                      width: deviceSize.width * 0.35,
                      height: deviceSize.height * 0.04,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                SizedBox(
                  child: Text('Date',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica_Bold',
                          fontSize: deviceSize.width * 0.045)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
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
                            color: Color(0xffced4da), width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xffced4da), width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Color(0xffced4da))),
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
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: deviceSize.height * 0.05,
                      width: deviceSize.width * 0.33,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: null,
                        style: TextStyle(
                          fontSize: deviceSize.width * 0.03,
                          color: Color(0xff495057),
                          fontFamily: 'Helvetica',
                        ),
                        decoration: InputDecoration(
                          hintText: 'From',
                          fillColor: Color(0xffe9ecef),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffced4da), width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffced4da), width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Color(0xffced4da))),
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
                              Icons.more_time_sharp,
                              size: deviceSize.width * 0.07,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.05)),
                    SizedBox(
                      height: deviceSize.height * 0.05,
                      width: deviceSize.width * 0.33,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: null,
                        style: TextStyle(
                          fontSize: deviceSize.width * 0.03,
                          color: Color(0xff495057),
                          fontFamily: 'Helvetica',
                        ),
                        decoration: InputDecoration(
                          hintText: 'To',
                          fillColor: Color(0xffe9ecef),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffced4da), width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffced4da), width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Color(0xffced4da))),
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
                              Icons.more_time_sharp,
                              size: deviceSize.width * 0.07,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                SizedBox(
                  child: Text('Date',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica_Bold',
                          fontSize: deviceSize.width * 0.045)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
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
                            color: Color(0xffced4da), width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xffced4da), width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Color(0xffced4da))),
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
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: deviceSize.height * 0.05,
                      width: deviceSize.width * 0.33,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: null,
                        style: TextStyle(
                          fontSize: deviceSize.width * 0.03,
                          color: Color(0xff495057),
                          fontFamily: 'Helvetica',
                        ),
                        decoration: InputDecoration(
                          hintText: 'From',
                          fillColor: Color(0xffe9ecef),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffced4da), width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffced4da), width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Color(0xffced4da))),
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
                              Icons.more_time_sharp,
                              size: deviceSize.width * 0.07,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.05)),
                    SizedBox(
                      height: deviceSize.height * 0.05,
                      width: deviceSize.width * 0.33,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: null,
                        style: TextStyle(
                          fontSize: deviceSize.width * 0.03,
                          color: Color(0xff495057),
                          fontFamily: 'Helvetica',
                        ),
                        decoration: InputDecoration(
                          hintText: 'To',
                          fillColor: Color(0xffe9ecef),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffced4da), width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffced4da), width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Color(0xffced4da))),
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
                              Icons.more_time_sharp,
                              size: deviceSize.width * 0.07,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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
