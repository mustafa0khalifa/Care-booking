import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/BookingsDashboard/bookingsDashboard.dart';

class ReviewCaterorie extends StatefulWidget {
  static const routeName = '/reviewCaterorie-screen';

  @override
  _ReviewCaterorieState createState() => _ReviewCaterorieState();
}

class _ReviewCaterorieState extends State<ReviewCaterorie> {
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
          "Review & submit",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
        height: deviceSize.height,
        width: deviceSize.width,
        margin: EdgeInsets.all(deviceSize.height * 0.03),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(
                              0xff28306e), //elevated btton background color
                        ),
                        onPressed: () => {print('ok')},
                        child: Text('Care Category',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04)),
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.03)),
                    Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.black87)),
                        child: Container(
                          margin: EdgeInsets.all(deviceSize.height * 0.01),
                          padding: EdgeInsets.only(
                              left: deviceSize.width * 0.01,
                              right: deviceSize.width * 0.01),
                          child: SizedBox(
                            child: Text('Chile Care',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04)),
                          ),
                        )),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(
                              0xff28306e), //elevated btton background color
                        ),
                        onPressed: () => {print('ok')},
                        child: Text('Location',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04)),
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.03)),
                    Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.black87)),
                        child: Container(
                          margin: EdgeInsets.all(deviceSize.height * 0.01),
                          padding: EdgeInsets.only(
                              left: deviceSize.width * 0.01,
                              right: deviceSize.width * 0.01),
                          child: SizedBox(
                            child: Text('Lebanon - Beirut',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04)),
                          ),
                        )),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(
                              0xff28306e), //elevated btton background color
                        ),
                        onPressed: () => {print('ok')},
                        child: Text('Gender',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04)),
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.03)),
                    Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.black87)),
                        child: Container(
                          margin: EdgeInsets.all(deviceSize.height * 0.01),
                          padding: EdgeInsets.only(
                              left: deviceSize.width * 0.01,
                              right: deviceSize.width * 0.01),
                          child: SizedBox(
                            child: Text('Male',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04)),
                          ),
                        )),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(
                              0xff28306e), //elevated btton background color
                        ),
                        onPressed: () => {print('ok')},
                        child: Text('Age',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04)),
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.03)),
                    Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.black87)),
                        child: Container(
                          margin: EdgeInsets.all(deviceSize.height * 0.01),
                          padding: EdgeInsets.only(
                              left: deviceSize.width * 0.01,
                              right: deviceSize.width * 0.01),
                          child: SizedBox(
                            width: deviceSize.width * 0.35,
                            child: Text('between 20 and 30 years old"',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04)),
                          ),
                        )),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(
                              0xff28306e), //elevated btton background color
                        ),
                        onPressed: () => {print('ok')},
                        child: Text('Services',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04)),
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.03)),
                    Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.black87)),
                        child: Container(
                          margin: EdgeInsets.all(deviceSize.height * 0.01),
                          padding: EdgeInsets.only(
                              left: deviceSize.width * 0.01,
                              right: deviceSize.width * 0.01),
                          child: SizedBox(
                            child: Text('Toddler (1-3 years)',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04)),
                          ),
                        )),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(
                              0xff28306e), //elevated btton background color
                        ),
                        onPressed: () => {print('ok')},
                        child: Text('Preferences',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04)),
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.03)),
                    Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.black87)),
                        child: Container(
                          margin: EdgeInsets.all(deviceSize.height * 0.01),
                          padding: EdgeInsets.only(
                              left: deviceSize.width * 0.01,
                              right: deviceSize.width * 0.01),
                          child: SizedBox(
                            child: Text('Up to 24',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04)),
                          ),
                        )),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(
                              0xff28306e), //elevated btton background color
                        ),
                        onPressed: () => {print('ok')},
                        child: Text('Schedule',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04)),
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.03)),
                    Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.black87)),
                        child: Container(
                          margin: EdgeInsets.all(deviceSize.height * 0.01),
                          padding: EdgeInsets.only(
                              left: deviceSize.width * 0.01,
                              right: deviceSize.width * 0.01),
                          child: SizedBox(
                            width: deviceSize.width * 0.35,
                            child: Text('Every Monday from 5:00 AM to 8:00 AM',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04)),
                          ),
                        )),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(
                              0xff28306e), //elevated btton background color
                        ),
                        onPressed: () => {print('ok')},
                        child: Text('additionalInformation',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04)),
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.03)),
                    Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.black87)),
                        child: Container(
                            margin: EdgeInsets.all(deviceSize.height * 0.01),
                            padding: EdgeInsets.only(
                                left: deviceSize.width * 0.01,
                                right: deviceSize.width * 0.01),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Text('Non-smoker',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04)),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: deviceSize.height * 0.03)),
                                SizedBox(
                                  child: Text('Has a car',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04)),
                                ),
                              ],
                            ))),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  margin: EdgeInsets.all(deviceSize.height * 0.05),
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Colors.greenAccent //elevated btton background color
                        ),
                    onPressed: () => {
                      /*Navigator.of(context).pushNamed(
                            MyCareRequestSammury.routeName,
                          ),*/
                      Navigator.of(context).pushNamed(
                        BookingsDashboard.routeName,
                      ),
                    },
                    child: Text("Submit"),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
