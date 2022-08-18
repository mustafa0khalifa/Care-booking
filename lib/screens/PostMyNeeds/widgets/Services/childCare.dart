import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/childCareProvider.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
import '../../../../providers/PostMyNeedsProvider/buildCategoriesProvider.dart';
import '../Categories/widgets/buildCaterorie.dart';
import '../caregiverPreferences.dart';

class ChildCare extends StatefulWidget {
  static const routeName = '/childCare-screen';
  ChildCareProvider postProvider = ChildCareProvider();

  @override
  _ChildCareState createState() => _ChildCareState();
}

class _ChildCareState extends State<ChildCare> {
  bool childCare = true;
  bool elderlyCare = false;
  bool advancedCare = false;
  bool labCare = false;

  bool infant1 = true;
  bool infant2 = false;
  bool infant3 = false;
  bool infant4 = false;

  bool toddler1 = true;
  bool toddler2 = false;
  bool toddler3 = false;
  bool toddler4 = false;

  bool presch1 = true;
  bool presch2 = false;
  bool presch3 = false;
  bool presch4 = false;

  bool primsch1 = true;
  bool primsch2 = false;
  bool primsch3 = false;
  bool primsch4 = false;
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
          "Child Care",
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
                    padding: EdgeInsets.only(top: deviceSize.height * 0.06)),
                Text(
                  'Specify age groups and your specifc needs',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica_Bold',
                      fontWeight: FontWeight.bold,
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Card(
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Color(0xffD3CFC8))),
                  child: Container(
                    padding: EdgeInsets.all(deviceSize.width * 0.03),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.6,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.4,
                                    child: EasyRichText(
                                      "Newborn\n\nAge 0 to 3 month",
                                      patternList: [
                                        EasyRichTextPattern(
                                          targetString: 'Newborn',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica',
                                              fontSize:
                                                  deviceSize.width * 0.045),
                                        ),
                                        EasyRichTextPattern(
                                          targetString: 'Age 0 to 3 month',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica',
                                              fontSize:
                                                  deviceSize.width * 0.035),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: deviceSize.width * 0.03)),
                                  Consumer<ChildCareProvider>(
                                    builder: (_, foo, __) => ChildCareProvider
                                                .numberOfChildrenNewborn >
                                            0
                                        ? IconButton(
                                            onPressed: () => {
                                              foo.changeshowNewborn(),
                                            },
                                            icon: Icon(
                                              ChildCareProvider.showNewborn
                                                  ? Icons
                                                      .keyboard_arrow_up_sharp
                                                  : Icons
                                                      .keyboard_arrow_down_sharp,
                                              size: deviceSize.width * 0.07,
                                            ),
                                          )
                                        : SizedBox(),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Consumer<ChildCareProvider>(
                                  builder: (_, foo, __) => IconButton(
                                    onPressed: () => {
                                      if (ChildCareProvider
                                              .numberOfChildrenNewborn ==
                                          0)
                                        ChildCareProvider.showNewborn = false,
                                      foo.changeNumberOfChildrenNewborn(false),
                                      foo.calculateNumberOfChildren(),
                                    },
                                    icon: Icon(
                                      Icons.remove_circle_outline_rounded,
                                      size: deviceSize.width * 0.07,
                                    ),
                                  ),
                                ),
                                Consumer<ChildCareProvider>(
                                  builder: (_, foo, __) => Text(
                                    '${ChildCareProvider.numberOfChildrenNewborn}',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.045),
                                  ),
                                ),
                                Consumer<ChildCareProvider>(
                                  builder: (_, foo, __) => IconButton(
                                    onPressed: () => {
                                      ChildCareProvider.showNewborn = true,
                                      foo.changeNumberOfChildrenNewborn(true),
                                      foo.calculateNumberOfChildren(),
                                    },
                                    icon: Icon(
                                      Icons.add_circle_outline_outlined,
                                      size: deviceSize.width * 0.07,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                                top: deviceSize.height * 0.005)),
                        Consumer<ChildCareProvider>(
                            builder: (_, foo, __) => ChildCareProvider
                                            .numberOfChildrenNewborn >
                                        0 &&
                                    ChildCareProvider.showNewborn
                                ? Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: deviceSize.height * 0.1,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: childCare
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: childCare
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          child: ListTile(
                                            title: Text(
                                              "Basic Newborn Care",
                                              style: TextStyle(
                                                  color: !childCare
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              'Holistic care including baby hygiene, bedtime routine, feeding, safety and supervision',
                                              style: TextStyle(
                                                  color: !childCare
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.man,
                                              size: deviceSize.width * 0.1,
                                              color: !childCare
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                childCare = !childCare;
                                              })
                                            },
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    deviceSize.height * 0.005)),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: elderlyCare
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: elderlyCare
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          height: deviceSize.height * 0.1,
                                          child: ListTile(
                                            title: Text(
                                              "Premature Newborn Care ",
                                              style: TextStyle(
                                                  color: !elderlyCare
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              'Registered nurses with NICU experience to help you transition home safely ',
                                              style: TextStyle(
                                                  color: !elderlyCare
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.man,
                                              size: deviceSize.width * 0.1,
                                              color: !elderlyCare
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                elderlyCare = !elderlyCare;
                                              })
                                            },
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    deviceSize.height * 0.005)),
                                        Container(
                                          height: deviceSize.height * 0.1,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: advancedCare
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: advancedCare
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          child: ListTile(
                                            title: Text(
                                              "Twin Newborn Care ",
                                              style: TextStyle(
                                                  color: !advancedCare
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              'Twin and multiples care and assistance in managing a synchronized routine.',
                                              style: TextStyle(
                                                  color: !advancedCare
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.manage_accounts_outlined,
                                              size: deviceSize.width * 0.1,
                                              color: !advancedCare
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                advancedCare = !advancedCare;
                                              })
                                            },
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    deviceSize.height * 0.005)),
                                        Container(
                                          height: deviceSize.height * 0.1,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: labCare
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: labCare
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          child: ListTile(
                                            title: Text(
                                              "Special Services ",
                                              style: TextStyle(
                                                  color: !labCare
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              'Sleep training, maternity education and care, specialized care for babies born',
                                              style: TextStyle(
                                                  color: !labCare
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.thermostat,
                                              size: deviceSize.width * 0.1,
                                              color: !labCare
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                labCare = !labCare;
                                              })
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : SizedBox()),
                        Divider(
                          thickness: 1,
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(top: deviceSize.height * 0.01)),
                        Row(
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.6,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.4,
                                    child: EasyRichText(
                                      "Infant\n\nAge 3 to 12 months",
                                      patternList: [
                                        EasyRichTextPattern(
                                          targetString: 'Infant',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontSize:
                                                  deviceSize.width * 0.045),
                                        ),
                                        EasyRichTextPattern(
                                          targetString: 'Age 3 to 12 months',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica',
                                              fontSize:
                                                  deviceSize.width * 0.035),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: deviceSize.width * 0.03)),
                                  Consumer<ChildCareProvider>(
                                    builder: (_, foo, __) =>
                                        ChildCareProvider.numberOfInfant > 0
                                            ? IconButton(
                                                onPressed: () => {
                                                  foo.changeshowinfant(),
                                                },
                                                icon: Icon(
                                                  ChildCareProvider.showinfant
                                                      ? Icons
                                                          .keyboard_arrow_up_sharp
                                                      : Icons
                                                          .keyboard_arrow_down_sharp,
                                                  size: deviceSize.width * 0.07,
                                                ),
                                              )
                                            : SizedBox(),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Consumer<ChildCareProvider>(
                                  builder: (_, foo, __) => IconButton(
                                    onPressed: () => {
                                      if (ChildCareProvider.numberOfInfant == 0)
                                        ChildCareProvider.showinfant = false,
                                      foo.changeNumberOfInfant(false),
                                      foo.calculateNumberOfChildren(),
                                    },
                                    icon: Icon(
                                      Icons.remove_circle_outline,
                                      size: deviceSize.width * 0.07,
                                    ),
                                  ),
                                ),
                                Consumer<ChildCareProvider>(
                                  builder: (_, foo, __) => Text(
                                    '${ChildCareProvider.numberOfInfant}',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.04),
                                  ),
                                ),
                                Consumer<ChildCareProvider>(
                                  builder: (_, foo, __) => IconButton(
                                    onPressed: () => {
                                      ChildCareProvider.showinfant = true,
                                      foo.changeNumberOfInfant(true),
                                      foo.calculateNumberOfChildren(),
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
                        Padding(
                            padding: EdgeInsets.only(
                                top: deviceSize.height * 0.005)),
                        Consumer<ChildCareProvider>(
                            builder: (_, foo, __) => ChildCareProvider
                                            .numberOfInfant >
                                        0 &&
                                    ChildCareProvider.showinfant
                                ? Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: deviceSize.height * 0.1,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: infant1
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: infant1
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          child: ListTile(
                                            title: Text(
                                              "Basic Infant Care ",
                                              style: TextStyle(
                                                  color: !infant1
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              'Holistic care including infant hygiene, bedtime routine, feeding, safety, supervision, solid food introduction and sensory play',
                                              style: TextStyle(
                                                  color: !infant1
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.man,
                                              size: deviceSize.width * 0.1,
                                              color: !infant1
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                infant1 = !infant1;
                                              })
                                            },
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    deviceSize.height * 0.005)),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: infant2
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: infant2
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          height: deviceSize.height * 0.1,
                                          child: ListTile(
                                            title: Text(
                                              "Premature Infant Care ",
                                              style: TextStyle(
                                                  color: !infant2
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              'Registered nurses with NICU experience to provide specialized premature care',
                                              style: TextStyle(
                                                  color: !infant2
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.man,
                                              size: deviceSize.width * 0.1,
                                              color: !infant2
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                infant2 = !infant2;
                                              })
                                            },
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    deviceSize.height * 0.005)),
                                        Container(
                                          height: deviceSize.height * 0.1,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: infant3
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: infant3
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          child: ListTile(
                                            title: Text(
                                              "Twin Infant Care ",
                                              style: TextStyle(
                                                  color: !infant3
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              'Twin and multiples care and assistance in managing a synchronized routine. ',
                                              style: TextStyle(
                                                  color: !infant3
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.manage_accounts_outlined,
                                              size: deviceSize.width * 0.1,
                                              color: !infant3
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                infant3 = !infant3;
                                              })
                                            },
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    deviceSize.height * 0.005)),
                                        Container(
                                          height: deviceSize.height * 0.1,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: infant4
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: infant4
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          child: ListTile(
                                            title: Text(
                                              "Special Services",
                                              style: TextStyle(
                                                  color: !infant4
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              'Sleep training, Weaning support, Infant feed training ',
                                              style: TextStyle(
                                                  color: !infant4
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.thermostat,
                                              size: deviceSize.width * 0.1,
                                              color: !infant4
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                infant4 = !infant4;
                                              })
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : SizedBox()),
                        Divider(
                          thickness: 1,
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(top: deviceSize.height * 0.01)),
                        Row(
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.6,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.4,
                                    child: EasyRichText(
                                      "Toddler\n\nAge 1 to 3 years",
                                      patternList: [
                                        EasyRichTextPattern(
                                          targetString: 'Toddler',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontSize:
                                                  deviceSize.width * 0.045),
                                        ),
                                        EasyRichTextPattern(
                                          targetString: 'Age 1 to 3 years',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica',
                                              fontSize:
                                                  deviceSize.width * 0.035),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: deviceSize.width * 0.03)),
                                  Consumer<ChildCareProvider>(
                                    builder: (_, foo, __) =>
                                        ChildCareProvider.numberOfToddler > 0
                                            ? IconButton(
                                                onPressed: () => {
                                                  foo.changeshowtoddler(),
                                                },
                                                icon: Icon(
                                                  ChildCareProvider.showtoddler
                                                      ? Icons
                                                          .keyboard_arrow_up_sharp
                                                      : Icons
                                                          .keyboard_arrow_down_sharp,
                                                  size: deviceSize.width * 0.07,
                                                ),
                                              )
                                            : SizedBox(),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Consumer<ChildCareProvider>(
                                  builder: (_, foo, __) => IconButton(
                                    onPressed: () => {
                                      if (ChildCareProvider.numberOfToddler ==
                                          0)
                                        ChildCareProvider.showtoddler = false,
                                      foo.changeNumberOfToddler(false),
                                      foo.calculateNumberOfChildren(),
                                    },
                                    icon: Icon(Icons.remove_circle_outline,
                                        size: deviceSize.width * 0.07),
                                  ),
                                ),
                                Consumer<ChildCareProvider>(
                                  builder: (_, foo, __) => Text(
                                    '${ChildCareProvider.numberOfToddler}',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.04),
                                  ),
                                ),
                                Consumer<ChildCareProvider>(
                                  builder: (_, foo, __) => IconButton(
                                    onPressed: () => {
                                      ChildCareProvider.showtoddler = true,
                                      foo.changeNumberOfToddler(true),
                                      foo.calculateNumberOfChildren(),
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
                        Padding(
                            padding: EdgeInsets.only(
                                top: deviceSize.height * 0.005)),
                        Consumer<ChildCareProvider>(
                            builder: (_, foo, __) => ChildCareProvider
                                            .numberOfToddler >
                                        0 &&
                                    ChildCareProvider.showtoddler
                                ? Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: deviceSize.height * 0.1,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: toddler1
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: toddler1
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          child: ListTile(
                                            title: Text(
                                              "Basic Toddler  Care ",
                                              style: TextStyle(
                                                  color: !toddler1
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              'This includes hygiene, meals, bedtime routine, safety and interactive play time',
                                              style: TextStyle(
                                                  color: !toddler1
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.man,
                                              size: deviceSize.width * 0.1,
                                              color: !toddler1
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                toddler1 = !toddler1;
                                              })
                                            },
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    deviceSize.height * 0.005)),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: toddler2
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: toddler2
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          height: deviceSize.height * 0.1,
                                          child: ListTile(
                                            title: Text(
                                              "Educational Play",
                                              style: TextStyle(
                                                  color: !toddler2
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              'Age-tailored activities focused on stimulating toddlers and improving their development skills while having fun',
                                              style: TextStyle(
                                                  color: !toddler2
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.man,
                                              size: deviceSize.width * 0.1,
                                              color: !toddler2
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                toddler2 = !toddler2;
                                              })
                                            },
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    deviceSize.height * 0.005)),
                                        Container(
                                          height: deviceSize.height * 0.1,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: toddler3
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: toddler3
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          child: ListTile(
                                            title: Text(
                                              "Special Services",
                                              style: TextStyle(
                                                  color: !toddler3
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              'Potty training, language skills building, sick day nanny care, special education…etc.',
                                              style: TextStyle(
                                                  color: !toddler3
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.manage_accounts_outlined,
                                              size: deviceSize.width * 0.1,
                                              color: !toddler3
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                toddler3 = !toddler3;
                                              })
                                            },
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    deviceSize.height * 0.005)),
                                        Container(
                                          height: deviceSize.height * 0.1,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: toddler4
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: toddler4
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          child: ListTile(
                                            title: Text(
                                              "Language skills building ",
                                              style: TextStyle(
                                                  color: !toddler4
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              '',
                                              style: TextStyle(
                                                  color: !toddler4
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.thermostat,
                                              size: deviceSize.width * 0.1,
                                              color: !toddler4
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                toddler4 = !toddler4;
                                              })
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : SizedBox()),
                        Divider(
                          thickness: 1,
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(top: deviceSize.height * 0.01)),
                        Row(
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.6,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.4,
                                    child: EasyRichText(
                                      "Preschooler\n\nAge 3 to 5 years",
                                      patternList: [
                                        EasyRichTextPattern(
                                          targetString: 'Preschooler',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontSize:
                                                  deviceSize.width * 0.045),
                                        ),
                                        EasyRichTextPattern(
                                          targetString: 'Age 3 to 5 years',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica',
                                              fontSize:
                                                  deviceSize.width * 0.035),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: deviceSize.width * 0.03)),
                                  Consumer<ChildCareProvider>(
                                    builder: (_, foo, __) =>
                                        ChildCareProvider.numberOfPreschooler >
                                                0
                                            ? IconButton(
                                                onPressed: () => {
                                                  foo.changeshowpresch(),
                                                },
                                                icon: Icon(
                                                  ChildCareProvider.showpresch
                                                      ? Icons
                                                          .keyboard_arrow_up_sharp
                                                      : Icons
                                                          .keyboard_arrow_down_sharp,
                                                  size: deviceSize.width * 0.07,
                                                ),
                                              )
                                            : SizedBox(),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Consumer<ChildCareProvider>(
                                  builder: (_, foo, __) => IconButton(
                                    onPressed: () => {
                                      if (ChildCareProvider
                                              .numberOfPreschooler ==
                                          0)
                                        ChildCareProvider.showpresch = false,
                                      foo.changeNumberOfPreschooler(false),
                                      foo.calculateNumberOfChildren(),
                                    },
                                    icon: Icon(Icons.remove_circle_outline,
                                        size: deviceSize.width * 0.07),
                                  ),
                                ),
                                Consumer<ChildCareProvider>(
                                  builder: (_, foo, __) => Text(
                                    '${ChildCareProvider.numberOfPreschooler}',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.04),
                                  ),
                                ),
                                Consumer<ChildCareProvider>(
                                  builder: (_, foo, __) => IconButton(
                                    onPressed: () => {
                                      ChildCareProvider.showpresch = true,
                                      foo.changeNumberOfPreschooler(true),
                                      foo.calculateNumberOfChildren(),
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
                        Padding(
                            padding: EdgeInsets.only(
                                top: deviceSize.height * 0.005)),
                        Consumer<ChildCareProvider>(
                            builder: (_, foo, __) => ChildCareProvider
                                            .numberOfPreschooler >
                                        0 &&
                                    ChildCareProvider.showpresch
                                ? Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: deviceSize.height * 0.1,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: presch1
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: presch1
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          child: ListTile(
                                            title: Text(
                                              "Basic Preschooler Care ",
                                              style: TextStyle(
                                                  color: !presch1
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              'This includes hygiene, meals, bedtime routine, safety and interactive play time',
                                              style: TextStyle(
                                                  color: !presch1
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.man,
                                              size: deviceSize.width * 0.1,
                                              color: !presch1
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                presch1 = !presch1;
                                              })
                                            },
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    deviceSize.height * 0.005)),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: presch2
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: presch2
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          height: deviceSize.height * 0.1,
                                          child: ListTile(
                                            title: Text(
                                              "Educational Play",
                                              style: TextStyle(
                                                  color: !presch2
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              'Age-tailored activities focused on stimulating toddlers and improving their development skills while having fun',
                                              style: TextStyle(
                                                  color: !presch2
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.man,
                                              size: deviceSize.width * 0.1,
                                              color: !presch2
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                presch2 = !presch2;
                                              })
                                            },
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    deviceSize.height * 0.005)),
                                        Container(
                                          height: deviceSize.height * 0.1,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: presch3
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: presch3
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          child: ListTile(
                                            title: Text(
                                              "Special Services",
                                              style: TextStyle(
                                                  color: !presch3
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              ' Language skills building, sick day nanny care, special education…etc.',
                                              style: TextStyle(
                                                  color: !presch3
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.manage_accounts_outlined,
                                              size: deviceSize.width * 0.1,
                                              color: !presch3
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                presch3 = !presch3;
                                              })
                                            },
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    deviceSize.height * 0.005)),
                                        Container(
                                          height: deviceSize.height * 0.1,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: presch4
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: presch4
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          child: ListTile(
                                            title: Text(
                                              "Language skills building ",
                                              style: TextStyle(
                                                  color: !presch4
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              '',
                                              style: TextStyle(
                                                  color: !presch4
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.thermostat,
                                              size: deviceSize.width * 0.1,
                                              color: !presch4
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                presch4 = !presch4;
                                              })
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : SizedBox()),
                        Divider(
                          thickness: 1,
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(top: deviceSize.height * 0.01)),
                        Row(
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.6,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.4,
                                    child: EasyRichText(
                                      "Primary Schooler\n\nAge 5 to 12 years",
                                      patternList: [
                                        EasyRichTextPattern(
                                          targetString: 'Primary Schooler',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontSize:
                                                  deviceSize.width * 0.045),
                                        ),
                                        EasyRichTextPattern(
                                          targetString: 'Age 5 to 12 years',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica',
                                              fontSize:
                                                  deviceSize.width * 0.035),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: deviceSize.width * 0.03)),
                                  Consumer<ChildCareProvider>(
                                    builder: (_, foo, __) => ChildCareProvider
                                                .numberOfPrimarySchooler >
                                            0
                                        ? IconButton(
                                            onPressed: () => {
                                              foo.changeshowprimsch(),
                                            },
                                            icon: Icon(
                                              ChildCareProvider.showprimsch
                                                  ? Icons
                                                      .keyboard_arrow_up_sharp
                                                  : Icons
                                                      .keyboard_arrow_down_sharp,
                                              size: deviceSize.width * 0.07,
                                            ),
                                          )
                                        : SizedBox(),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Consumer<ChildCareProvider>(
                                  builder: (_, foo, __) => IconButton(
                                    onPressed: () => {
                                      if (ChildCareProvider
                                              .numberOfPrimarySchooler ==
                                          0)
                                        ChildCareProvider.showprimsch = false,
                                      foo.changeNumberOfPrimarySchooler(false),
                                      foo.calculateNumberOfChildren(),
                                    },
                                    icon: Icon(Icons.remove_circle_outline,
                                        size: deviceSize.width * 0.07),
                                  ),
                                ),
                                Consumer<ChildCareProvider>(
                                  builder: (_, foo, __) => Text(
                                    '${ChildCareProvider.numberOfPrimarySchooler}',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.04),
                                  ),
                                ),
                                Consumer<ChildCareProvider>(
                                  builder: (_, foo, __) => IconButton(
                                    onPressed: () => {
                                      ChildCareProvider.showprimsch = true,
                                      foo.changeNumberOfPrimarySchooler(true),
                                      foo.calculateNumberOfChildren(),
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
                        Padding(
                            padding: EdgeInsets.only(
                                top: deviceSize.height * 0.005)),
                        Consumer<ChildCareProvider>(
                            builder: (_, foo, __) => ChildCareProvider
                                            .numberOfPrimarySchooler >
                                        0 &&
                                    ChildCareProvider.showprimsch
                                ? Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: deviceSize.height * 0.1,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: primsch1
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: primsch1
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          child: ListTile(
                                            title: Text(
                                              "Basic Primary schooler Care ",
                                              style: TextStyle(
                                                  color: !primsch1
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              'This includes hygiene, meals, bedtime routine, safety and interactive play time',
                                              style: TextStyle(
                                                  color: !primsch1
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.man,
                                              size: deviceSize.width * 0.1,
                                              color: !primsch1
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                primsch1 = !primsch1;
                                              })
                                            },
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    deviceSize.height * 0.005)),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: primsch2
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: primsch2
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          height: deviceSize.height * 0.1,
                                          child: ListTile(
                                            title: Text(
                                              "Educational Play",
                                              style: TextStyle(
                                                  color: !primsch2
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              'Age-tailored activities focused on stimulating kids and improving their development skills while having fun',
                                              style: TextStyle(
                                                  color: !primsch2
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.man,
                                              size: deviceSize.width * 0.1,
                                              color: !primsch2
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                primsch2 = !primsch2;
                                              })
                                            },
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    deviceSize.height * 0.005)),
                                        Container(
                                          height: deviceSize.height * 0.1,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: primsch3
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: primsch3
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          child: ListTile(
                                            title: Text(
                                              "Special Services ",
                                              style: TextStyle(
                                                  color: !primsch3
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              'Language skills building, sick day nanny care, special education…etc.',
                                              style: TextStyle(
                                                  color: !primsch3
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.manage_accounts_outlined,
                                              size: deviceSize.width * 0.1,
                                              color: !primsch3
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                primsch3 = !primsch3;
                                              })
                                            },
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    deviceSize.height * 0.005)),
                                        Container(
                                          height: deviceSize.height * 0.1,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: primsch4
                                                    ? Color(0xff28306e)
                                                    : Color(0xffD3CFC8),
                                              ),
                                              color: primsch4
                                                  ? Color(0xff28306e)
                                                  : Color(0xffe9ecef),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))
                                              //more than 50% of width makes circle
                                              ),
                                          child: ListTile(
                                            title: Text(
                                              "Language skills building ",
                                              style: TextStyle(
                                                  color: !primsch4
                                                      ? Color(0xff28306e)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.035),
                                            ),
                                            subtitle: Text(
                                              '',
                                              style: TextStyle(
                                                  color: !primsch4
                                                      ? Color(0xff495057)
                                                      : Colors.white,
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.025),
                                            ),
                                            leading: Icon(
                                              Icons.thermostat,
                                              size: deviceSize.width * 0.1,
                                              color: !primsch4
                                                  ? Color(0xff495057)
                                                  : Colors.white,
                                            ),
                                            onTap: () => {
                                              setState(() {
                                                primsch4 = !primsch4;
                                              })
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : SizedBox()),
                        Divider(
                          thickness: 1,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  padding: EdgeInsets.all(deviceSize.height * 0.03),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color(0xffD3CFC8),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Total number of children to be cared for',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.035),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(left: deviceSize.width * 0.03)),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(deviceSize.width * 0.01),
                        decoration: BoxDecoration(
                            color: Color(0xff28306e),
                            border:
                                Border.all(color: Color(0xff28306e), width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                            //more than 50% of width makes circle
                            ),
                        child: Consumer<ChildCareProvider>(
                          builder: (_, foo, __) => Text(
                            '${ChildCareProvider.numberOfChildren}',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Helvetica_Bold',
                                fontWeight: FontWeight.bold,
                                fontSize: deviceSize.width * 0.04),
                          ),
                        ),
                      )
                    ],
                  ),
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
                    title: Text(
                      'Note',
                      style: TextStyle(
                        fontSize: deviceSize.width * 0.035,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff28306e),
                      ),
                    ),
                    subtitle: Text(
                      'In case the requested care schedule varies for your children, you need to create separate care requests for each child. In such case, each care request will indicate 1 child. ',
                      style: TextStyle(
                        fontSize: deviceSize.width * 0.025,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff28306e),
                      ),
                    ),
                    leading: Icon(
                      Icons.note,
                      size: deviceSize.width * 0.07,
                      color: Color(0xff28306e),
                    ),
                    onTap: () => {},
                  ),
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
