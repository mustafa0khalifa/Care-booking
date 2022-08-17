import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/myCareRequestSummary.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/careRecipientsProvider.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
import '../Categories/widgets/reviewCaterorie.dart';
import 'careRecipients3.dart';

class CareRecipients2 extends StatefulWidget {
  static const routeName = '/careRecipients2-screen';

  @override
  _CareRecipientsAeaState createState() => _CareRecipientsAeaState();
}

class _CareRecipientsAeaState extends State<CareRecipients2> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    var consumer = Consumer<CareRecipientsProvider>(
      builder: (_, foo, __) => FlutterSwitch(
        width: deviceSize.width * 0.11,
        height: deviceSize.height * 0.025,
        value: CareRecipientsProvider.isPregant,
        activeColor: Colors.green,
        borderRadius: 30.0,
        showOnOff: false,
        onToggle: (val) {
          foo.changePregant();
        },
      ),
    );
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
          "Care Recipients",
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
          child: Column(
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
                    width: deviceSize.width * 0.1,
                    height: deviceSize.width * 0.1,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xff28306e),
                        borderRadius: BorderRadius.circular(100)),
                    child: Text(
                      '8',
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
                      '9',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica',
                          fontSize: deviceSize.width * 0.04),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.06)),
              Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black87)),
                child: Container(
                  margin: EdgeInsets.all(deviceSize.width * 0.03),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.03)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'I am Pregnant',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.045),
                          ),
                          consumer,
                        ],
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.03)),
                      Text(
                        'Would you like to share with us your due date?',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.045),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.03)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: deviceSize.height * 0.05,
                            width: deviceSize.width * 0.6,
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
                                        color: Color.fromARGB(
                                            255, 255, 255, 255))),
                              ),
                              //autofocus: ,
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.date_range_outlined,
                                size: deviceSize.width * 0.07,
                              ))
                        ],
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.03)),
                    ],
                  ),
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
                        padding: EdgeInsets.only(left: deviceSize.width * 0.2)),
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
                            .pushNamed(MyCareRequestSummary.routeName),
                      },
                      child: Text("Next"),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
