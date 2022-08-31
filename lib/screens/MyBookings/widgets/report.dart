//

import 'package:flutter/material.dart';

import '../../../providers/myBookingProvider.dart';

class Report extends StatefulWidget {
  static const routeName = '/report-screen';

  MyBookingProvider myBook = MyBookingProvider();

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  String dropdownvalue = 'I did not feel safe';
  List<String> items = [
    'I did not feel safe',
    'This person has contacted me before from a difer',
    'This person is fake',
    'Other'
  ];
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Report Caregiver",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.all(
            deviceSize.width * 0.03,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: deviceSize.width * 0.9,
                  child: Text(
                    "You are reporting Jane, for the following reasons",
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: deviceSize.width * 0.04),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.03),
                ),
                SizedBox(
                  width: deviceSize.width * 0.9,
                  child: Text(
                    "Note that we will exclude Jane's profle from any upcoming booking request you post",
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: deviceSize.width * 0.04),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.03),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Text(
                        'Reason',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.03)),
                    DropdownButton(
                        value: dropdownvalue,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: deviceSize.width * 0.04,
                        ),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.03),
                              ));
                        }).toList(),
                        onChanged: (val) {
                          setState(() {
                            dropdownvalue = val as String;
                          });
                        }),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.03),
                ),
                SizedBox(
                  child: Text(
                    "Write your Review",
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.bold,
                        fontSize: deviceSize.width * 0.04),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.03),
                ),
                TextField(
                  textAlign: TextAlign.start,
                  expands: false,
                  maxLines: 10,
                  style: TextStyle(
                    fontSize: deviceSize.width * 0.03,
                    color: Color(0xff495057),
                    fontFamily: 'Helvetica',
                  ),
                  decoration: InputDecoration(
                    hintText: 'Your Rivew',
                    fillColor: Color(0xffe9ecef),
                    filled: true,
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width,
                        maxHeight: MediaQuery.of(context).size.height),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                  ), //autofocus: ,
                ),
                Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.03),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: deviceSize.width * 0.1,
                      right: deviceSize.width * 0.1),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: deviceSize.width * 0.2,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 240, 220,
                                  105) //elevated btton background color
                              ),
                          onPressed: () {
                            // ignore: avoid_print
                            print("Tap Post");
                            Navigator.of(context).pop();
                          },
                          child: Text("Cancel"),
                        ),
                      ),
                      SizedBox(
                        width: deviceSize.width * 0.2,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors
                                  .greenAccent //elevated btton background color
                              ),
                          onPressed: () {
                            // ignore: avoid_print
                            print("Tap Post");
                            Navigator.of(context).pop();
                          },
                          child: Text("Post"),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
