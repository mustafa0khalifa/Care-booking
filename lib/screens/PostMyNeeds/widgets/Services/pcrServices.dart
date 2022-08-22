import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/buildCategoriesProvider.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/pcrServicesProvider.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
import '../Categories/widgets/buildCaterorie.dart';
import '../caregiverPreferences.dart';

class PcrServices extends StatefulWidget {
  static const routeName = '/_pcrServicesState-screen';
  String groupValueRadio = 'val1';

  @override
  _PcrServicesState createState() => _PcrServicesState();
}

class _PcrServicesState extends State<PcrServices> {
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
          "Pcr Services",
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
                      width: deviceSize.width * 0.1,
                      height: deviceSize.width * 0.1,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xff28306e),
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '5',
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
                      'The lab test fee does NOT cover the lab fee and only covers the technician fee ',
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
                Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.63,
                      child: EasyRichText(
                        "How many people will get the test?",
                        patternList: [
                          EasyRichTextPattern(
                            targetString: 'How many people will get the test?',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica_Bold',
                                fontSize: deviceSize.width * 0.04),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Consumer<PcrServicesProvider>(
                          builder: (_, foo, __) => IconButton(
                            onPressed: () => {
                              foo.changeNumberOfPeopleTest(false),
                            },
                            icon: Icon(Icons.remove_circle_outline,
                                size: deviceSize.width * 0.07),
                          ),
                        ),
                        Consumer<PcrServicesProvider>(
                          builder: (_, foo, __) => Text(
                            '${PcrServicesProvider.numberOfPeopleTest}',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04),
                          ),
                        ),
                        Consumer<PcrServicesProvider>(
                          builder: (_, foo, __) => IconButton(
                            onPressed: () => {
                              foo.changeNumberOfPeopleTest(true),
                            },
                            icon: Icon(
                              Icons.add_circle_outline_outlined,
                              size: deviceSize.width * 0.07,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Text(
                  'What type of services do you need?',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Text(
                  'COVID-19 testing',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.width * 0.03),
                  child: Row(
                    children: [
                      SizedBox(
                        width: deviceSize.width * 0.6,
                        child: EasyRichText(
                          "Standard PCR\n\nResult within 12 to 48 hours",
                          patternList: [
                            EasyRichTextPattern(
                              targetString: 'Standard PCR',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica_Bold',
                                  fontSize: deviceSize.width * 0.04),
                            ),
                            EasyRichTextPattern(
                              targetString: 'Result within 12 to 48 hours',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Consumer<PcrServicesProvider>(
                            builder: (_, foo, __) => IconButton(
                              onPressed: () => {
                                foo.changeNumberOfnumberOfsPCR(false),
                              },
                              icon: Icon(Icons.remove_circle_outline,
                                  size: deviceSize.width * 0.07),
                            ),
                          ),
                          Consumer<PcrServicesProvider>(
                            builder: (_, foo, __) => Text(
                              '${PcrServicesProvider.numberOfsPCR}',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.04),
                            ),
                          ),
                          Consumer<PcrServicesProvider>(
                            builder: (_, foo, __) => IconButton(
                              onPressed: () => {
                                foo.changeNumberOfnumberOfsPCR(true),
                              },
                              icon: Icon(
                                Icons.add_circle_outline_outlined,
                                size: deviceSize.width * 0.07,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.width * 0.03),
                  child: Row(
                    children: [
                      SizedBox(
                        width: deviceSize.width * 0.6,
                        child: EasyRichText(
                          "Fast PCR\n\nResult within 6 to 8 hours",
                          patternList: [
                            EasyRichTextPattern(
                              targetString: 'Fast PCR',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica_Bold',
                                  fontSize: deviceSize.width * 0.04),
                            ),
                            EasyRichTextPattern(
                              targetString: 'Result within 6 to 8 hours',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Consumer<PcrServicesProvider>(
                            builder: (_, foo, __) => IconButton(
                              onPressed: () => {
                                foo.changeNumberOfnumberOffPCR(false),
                              },
                              icon: Icon(Icons.remove_circle_outline,
                                  size: deviceSize.width * 0.07),
                            ),
                          ),
                          Consumer<PcrServicesProvider>(
                            builder: (_, foo, __) => Text(
                              '${PcrServicesProvider.numberOffPCR}',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.04),
                            ),
                          ),
                          Consumer<PcrServicesProvider>(
                            builder: (_, foo, __) => IconButton(
                              onPressed: () => {
                                foo.changeNumberOfnumberOffPCR(true),
                              },
                              icon: Icon(
                                Icons.add_circle_outline_outlined,
                                size: deviceSize.width * 0.07,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.width * 0.03),
                  child: Row(
                    children: [
                      SizedBox(
                        width: deviceSize.width * 0.6,
                        child: EasyRichText(
                          "Rapid PCR\n\nResult within 30 mins",
                          patternList: [
                            EasyRichTextPattern(
                              targetString: 'Rapid PCR',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica_Bold',
                                  fontSize: deviceSize.width * 0.04),
                            ),
                            EasyRichTextPattern(
                              targetString: 'Result within 30 mins',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Consumer<PcrServicesProvider>(
                            builder: (_, foo, __) => IconButton(
                              onPressed: () => {
                                foo.changeNumberOfnumberOfrPCR(false),
                              },
                              icon: Icon(Icons.remove_circle_outline,
                                  size: deviceSize.width * 0.07),
                            ),
                          ),
                          Consumer<PcrServicesProvider>(
                            builder: (_, foo, __) => Text(
                              '${PcrServicesProvider.numberOfrPCR}',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.04),
                            ),
                          ),
                          Consumer<PcrServicesProvider>(
                            builder: (_, foo, __) => IconButton(
                              onPressed: () => {
                                foo.changeNumberOfnumberOfrPCR(true),
                              },
                              icon: Icon(
                                Icons.add_circle_outline_outlined,
                                size: deviceSize.width * 0.07,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.width * 0.03),
                  child: Row(
                    children: [
                      SizedBox(
                        width: deviceSize.width * 0.6,
                        child: EasyRichText(
                          "Immunity Test",
                          patternList: [
                            EasyRichTextPattern(
                              targetString: 'Immunity Test',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica_Bold',
                                  fontSize: deviceSize.width * 0.04),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Consumer<PcrServicesProvider>(
                            builder: (_, foo, __) => IconButton(
                              onPressed: () => {
                                foo.changeNumberOfnumberOftest(false),
                              },
                              icon: Icon(Icons.remove_circle_outline,
                                  size: deviceSize.width * 0.07),
                            ),
                          ),
                          Consumer<PcrServicesProvider>(
                            builder: (_, foo, __) => Text(
                              '${PcrServicesProvider.numberOftest}',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.04),
                            ),
                          ),
                          Consumer<PcrServicesProvider>(
                            builder: (_, foo, __) => IconButton(
                              onPressed: () => {
                                foo.changeNumberOfnumberOftest(true),
                              },
                              icon: Icon(
                                Icons.add_circle_outline_outlined,
                                size: deviceSize.width * 0.07,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.63,
                      child: EasyRichText(
                        "Blood testing",
                        patternList: [
                          EasyRichTextPattern(
                            targetString: 'Blood testing',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica_Bold',
                                fontSize: deviceSize.width * 0.04),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Consumer<PcrServicesProvider>(
                          builder: (_, foo, __) => IconButton(
                            onPressed: () => {
                              foo.changeNumberOfBloodTesting(false),
                            },
                            icon: Icon(Icons.remove_circle_outline,
                                size: deviceSize.width * 0.07),
                          ),
                        ),
                        Consumer<PcrServicesProvider>(
                          builder: (_, foo, __) => Text(
                            '${PcrServicesProvider.numberOfBloodTesting}',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04),
                          ),
                        ),
                        Consumer<PcrServicesProvider>(
                          builder: (_, foo, __) => IconButton(
                            onPressed: () => {
                              foo.changeNumberOfBloodTesting(true),
                            },
                            icon: Icon(
                              Icons.add_circle_outline_outlined,
                              size: deviceSize.width * 0.07,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.63,
                      child: EasyRichText(
                        "Other Lab Work Ups",
                        patternList: [
                          EasyRichTextPattern(
                            targetString: 'Other Lab Work Ups',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica_Bold',
                                fontSize: deviceSize.width * 0.04),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Consumer<PcrServicesProvider>(
                          builder: (_, foo, __) => IconButton(
                            onPressed: () => {
                              foo.changeNumberOfOtherLab(false),
                            },
                            icon: Icon(Icons.remove_circle_outline,
                                size: deviceSize.width * 0.07),
                          ),
                        ),
                        Consumer<PcrServicesProvider>(
                          builder: (_, foo, __) => Text(
                            '${PcrServicesProvider.numberOfOtherLab}',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04),
                          ),
                        ),
                        Consumer<PcrServicesProvider>(
                          builder: (_, foo, __) => IconButton(
                            onPressed: () => {
                              foo.changeNumberOfOtherLab(true),
                            },
                            icon: Icon(
                              Icons.add_circle_outline_outlined,
                              size: deviceSize.width * 0.07,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                TextField(
                  style: TextStyle(
                    fontSize: deviceSize.width * 0.03,
                    color: Color(0xff495057),
                    fontFamily: 'Helvetica',
                  ),
                  decoration: InputDecoration(
                    hintText:
                        'Indicate here if any equipment or special instructions are needed',
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
                  ), //autofocus: ,
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.3,
                      child: Text(
                        'Prescrptions',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.045),
                      ),
                    ),
                    IconButton(onPressed: null, icon: Icon(Icons.attach_file)),
                  ],
                ),
                Consumer<BuildCategoriesProvider>(
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
                            Navigator.of(context)
                                .pushNamed(CaregiverPreferences.routeName),
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
