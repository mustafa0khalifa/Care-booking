import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/automaticMatchingOption.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/caregiverPreferences.dart';
import '../../BookingsDashboard/bookingsDashboard.dart';
import 'NavBar.dart';

class MyCareRequestSummary extends StatefulWidget {
  static const routeName = '/myCareRequestSummary-screen';

  @override
  _MyCareRequestSummaryState createState() => _MyCareRequestSummaryState();
}

class _MyCareRequestSummaryState extends State<MyCareRequestSummary> {
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
          "Requst Summary",
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '7',
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
                        '8',
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
                        '9',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.06)),
                Text(
                  'Our last questions :)',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Title',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                SizedBox(
                  child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.grey)),
                      child: Container(
                        margin: EdgeInsets.all(deviceSize.width * 0.03),
                        child: Text(
                          'Needed a {gender/null} {a caregiver/Qualification/Qualification 1 or a Qualification 2..} to provide {Care Category} for {age}-year-old {gender} and {age}-year-old {gender} in {location} {starting/on} {xx/xx/xxxx} at {xx:xx AM/PM}',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.035),
                        ),
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Text(
                  'Feel free to add any additional information about your care needs',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                SizedBox(
                  height: deviceSize.height * 0.05,
                  width: deviceSize.width * 0.8,
                  child: TextField(
                    style: TextStyle(
                      fontSize: deviceSize.width * 0.03,
                      color: Colors.blue,
                      fontFamily: 'Helvetica',
                    ),
                    decoration: InputDecoration(
                      hintText: '',
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xff28306e), width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255))),
                    ),
                    //autofocus: ,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
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
                          Navigator.of(context)
                              .pushNamed(AutomaticMatchingOption.routeName),
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
