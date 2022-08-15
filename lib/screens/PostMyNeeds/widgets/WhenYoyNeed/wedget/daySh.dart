import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/scheduleDateProvider.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/PostMyNeedsProvider/scheduleProvider.dart';

class DaySh extends StatefulWidget {
  var width;
  var height;
  var day;
  var index;
  DaySh({
    required this.width,
    required this.height,
    required this.day,
    required this.index,
  });

  @override
  State<StatefulWidget> createState() {
    return DayState();
  }
}

class DayState extends State<DaySh> {
  @override
  Widget build(BuildContext context) {
    Widget _addRemoveButton(int index) {
      return Consumer<ScheduleDateProvider>(
          builder: (_, foo, __) => IconButton(
              iconSize: widget.width * 0.1,
              onPressed: () => {
                    foo.removeShInDay(widget.index),
                  },
              icon: Icon(
                Icons.remove_circle_outline,
                color: Colors.red,
                size: widget.width * 0.07,
              )));
    }

    List<Widget> _getFriends() {
      List<Widget> friendsTextFieldsList = [];
      for (int i = 0; i < ScheduleDateProvider.numShInDay[widget.index]; i++) {
        friendsTextFieldsList.add(Column(
          children: [
            SizedBox(
              width: widget.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: widget.width * 0.3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('From',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: widget.width * 0.035)),
                        Padding(
                            padding:
                                EdgeInsets.only(top: widget.height * 0.01)),
                        SizedBox(
                          height: widget.height * 0.05,
                          width: widget.width * 0.3,
                          child: TextField(
                            style: TextStyle(
                                color: Colors.blue.shade900, fontSize: 11),
                            decoration: InputDecoration(
                              suffixIcon: Container(
                                color: Colors.grey,
                                child: Icon(
                                  Icons.more_time_sharp,
                                  size: widget.width * 0.07,
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
                  ),
                  Padding(padding: EdgeInsets.only(left: widget.width * 0.05)),
                  SizedBox(
                    width: widget.width * 0.3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('To',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: widget.width * 0.035)),
                        Padding(
                            padding:
                                EdgeInsets.only(top: widget.height * 0.01)),
                        SizedBox(
                          height: widget.height * 0.05,
                          width: widget.width * 0.3,
                          child: TextField(
                            style: TextStyle(
                                color: Colors.blue.shade900, fontSize: 11),
                            decoration: InputDecoration(
                              suffixIcon: Container(
                                color: Colors.grey,
                                child: Icon(
                                  Icons.more_time_sharp,
                                  size: widget.width * 0.07,
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
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: widget.width * 0.05),
                      child: _addRemoveButton(i))
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: widget.height * 0.01)),
          ],
        ));
      }
      return friendsTextFieldsList;
    }

    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.black87)),
      child: Container(
        margin: EdgeInsets.only(left: widget.width * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Text(
                    '${widget.day}',
                    maxLines: 2,
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.bold,
                        fontSize: widget.width * 0.035),
                  ),
                ),
                Consumer<ScheduleDateProvider>(
                  builder: (_, foo, __) => IconButton(
                      onPressed: () => {foo.changeclickShDay(widget.index)},
                      icon: !ScheduleDateProvider.clickSh[widget.index]
                          ? Icon(
                              Icons.arrow_downward,
                              color: Color(0xff28306e),
                            )
                          : Icon(
                              Icons.arrow_upward,
                              color: Color(0xff28306e),
                            )),
                )
              ],
            ),
            Consumer<ScheduleDateProvider>(
                builder: (_, foo, __) => ScheduleDateProvider
                        .clickSh[widget.index]
                    ? Column(
                        children: [
                          Padding(
                              padding:
                                  EdgeInsets.only(top: widget.height * 0.01)),
                          SizedBox(
                            width: widget.width * 0.8,
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
                                            fontSize: widget.width * 0.035)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: widget.height * 0.01)),
                                    SizedBox(
                                      height: widget.height * 0.05,
                                      width: widget.width * 0.35,
                                      child: TextField(
                                        style: TextStyle(
                                            color: Colors.blue.shade900,
                                            fontSize: 11),
                                        decoration: InputDecoration(
                                          suffixIcon: Container(
                                            color: Colors.grey,
                                            child: Icon(
                                              Icons.more_time_sharp,
                                              size: widget.width * 0.07,
                                            ),
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: widget.width * 0.1)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('To',
                                        style: TextStyle(
                                            color: Color(0xff28306e),
                                            fontFamily: 'Helvetica',
                                            fontSize: widget.width * 0.035)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: widget.height * 0.01)),
                                    SizedBox(
                                      height: widget.height * 0.05,
                                      width: widget.width * 0.35,
                                      child: TextField(
                                        style: TextStyle(
                                            color: Colors.blue.shade900,
                                            fontSize: 11),
                                        decoration: InputDecoration(
                                          suffixIcon: Container(
                                            color: Colors.grey,
                                            child: Icon(
                                              Icons.more_time_sharp,
                                              size: widget.width * 0.07,
                                            ),
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                              padding:
                                  EdgeInsets.only(top: widget.height * 0.01)),
                          ..._getFriends(),
                          Container(
                            alignment: Alignment.bottomRight,
                            padding: EdgeInsets.only(
                                left: widget.width * 0.03,
                                right: widget.width * 0.03),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors
                                          .red //elevated btton background color
                                      ),
                                  onPressed: () => {
                                    foo.removeAllShInDay(widget.index),
                                    foo.changeclickDayNo(widget.index)
                                  },
                                  child: Text(
                                    "Remove Shifts",
                                    style: TextStyle(
                                        fontFamily: 'Helvetica',
                                        fontSize: widget.width * 0.025),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: widget.width * 0.2)),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors
                                          .greenAccent //elevated btton background color
                                      ),
                                  onPressed: () =>
                                      {foo.addShInDay(widget.index)},
                                  child: Text("Add Shift"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : SizedBox()),
          ],
        ),
      ),
    );
  }
}
