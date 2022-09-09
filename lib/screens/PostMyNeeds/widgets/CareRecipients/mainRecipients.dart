import 'package:flutter/material.dart';

import '../../../BookingsDashboard/bookingsDashboard.dart';
import 'careRecipients3.dart';

class MainRecipients extends StatefulWidget {
  static const routeName = '/mainRecipients-screen';

  @override
  _MainRecipientsState createState() => _MainRecipientsState();
}

class _MainRecipientsState extends State<MainRecipients> {
  bool liste1 = false;
  bool liste2 = false;
  bool liste3 = false;
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
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Select the 2 care recipients for this booking',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: deviceSize.height * 0.1,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: liste1
                                  ? Color(0xff28306e)
                                  : Color(0xffD3CFC8),
                            ),
                            color:
                                liste1 ? Color(0xff28306e) : Color(0xffe9ecef),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                            //more than 50% of width makes circle
                            ),
                        child: ListTile(
                          title: Text(
                            "Hadi",
                            style: TextStyle(
                                color:
                                    !liste1 ? Color(0xff28306e) : Colors.white,
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.035),
                          ),
                          subtitle: Text(
                            '3 years',
                            style: TextStyle(
                                color:
                                    !liste1 ? Color(0xff495057) : Colors.white,
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.025),
                          ),
                          leading: Icon(
                            Icons.child_friendly_outlined,
                            size: deviceSize.width * 0.1,
                            color: !liste1 ? Color(0xff495057) : Colors.white,
                          ),
                          onTap: () => {
                            setState(() {
                              liste1 = !liste1;
                            })
                          },
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.005)),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: liste2
                                  ? Color(0xff28306e)
                                  : Color(0xffD3CFC8),
                            ),
                            color:
                                liste2 ? Color(0xff28306e) : Color(0xffe9ecef),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                            //more than 50% of width makes circle
                            ),
                        height: deviceSize.height * 0.1,
                        child: ListTile(
                          title: Text(
                            "Hadi",
                            style: TextStyle(
                                color:
                                    !liste2 ? Color(0xff28306e) : Colors.white,
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.035),
                          ),
                          subtitle: Text(
                            '5 years',
                            style: TextStyle(
                                color:
                                    !liste2 ? Color(0xff495057) : Colors.white,
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.025),
                          ),
                          leading: Icon(
                            Icons.child_care_rounded,
                            size: deviceSize.width * 0.1,
                            color: !liste2 ? Color(0xff495057) : Colors.white,
                          ),
                          onTap: () => {
                            setState(() {
                              liste2 = !liste2;
                            })
                          },
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.005)),
                      Container(
                        height: deviceSize.height * 0.1,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: liste3
                                  ? Color(0xff28306e)
                                  : Color(0xffD3CFC8),
                            ),
                            color:
                                liste3 ? Color(0xff28306e) : Color(0xffe9ecef),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                            //more than 50% of width makes circle
                            ),
                        child: ListTile(
                          title: Text(
                            "Um Ayman",
                            style: TextStyle(
                                color:
                                    !liste3 ? Color(0xff28306e) : Colors.white,
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.035),
                          ),
                          subtitle: Text(
                            '66 years',
                            style: TextStyle(
                                color:
                                    !liste3 ? Color(0xff495057) : Colors.white,
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.025),
                          ),
                          leading: Icon(
                            Icons.person,
                            size: deviceSize.width * 0.1,
                            color: !liste3 ? Color(0xff495057) : Colors.white,
                          ),
                          onTap: () => {
                            setState(() {
                              liste3 = !liste3;
                            })
                          },
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.005)),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: deviceSize.width * 0.1,
                    child: Container(
                        padding: EdgeInsets.all(deviceSize.width * 0.02),
                        decoration: BoxDecoration(
                            color: Color(0xff3ab284),
                            borderRadius: BorderRadius.circular(5)),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.add,
                          size: deviceSize.width * 0.06,
                          color: Colors.white,
                        )),
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
                        child: Text(
                          "Back",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Helvetica',
                              fontWeight: FontWeight.w500,
                              fontSize: deviceSize.width * 0.035),
                        ),
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
                              .pushNamed(CareRecipients3.routeName),
                        },
                        child: Text(
                          "Next",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Helvetica',
                              fontWeight: FontWeight.w500,
                              fontSize: deviceSize.width * 0.035),
                        ),
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
