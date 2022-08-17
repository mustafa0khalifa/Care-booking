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
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                child: EasyRichText(
                                  "Newborn",
                                  patternList: [
                                    EasyRichTextPattern(
                                      targetString: 'Newborn',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.045),
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
                                              ? Icons.keyboard_arrow_up_sharp
                                              : Icons.keyboard_arrow_down_sharp,
                                          size: deviceSize.width * 0.07,
                                        ),
                                      )
                                    : SizedBox(),
                              ),
                            ],
                          ),
                          Consumer<ChildCareProvider>(
                            builder: (_, foo, __) =>
                                ChildCareProvider.numberOfChildrenNewborn == 0
                                    ? SizedBox(
                                        height: deviceSize.height * 0.01,
                                      )
                                    : SizedBox(),
                          ),
                          SizedBox(
                            child: EasyRichText(
                              "Age 0 to 3 month",
                              patternList: [
                                EasyRichTextPattern(
                                  targetString: 'Age 0 to 3 month',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.035),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Consumer<ChildCareProvider>(
                          builder: (_, foo, __) => IconButton(
                            onPressed: () => {
                              if (ChildCareProvider.numberOfChildrenNewborn ==
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
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
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
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))
                                      //more than 50% of width makes circle
                                      ),
                                  child: ListTile(
                                    title: Text(
                                      "Child Care",
                                      style: TextStyle(
                                          color: !childCare
                                              ? Color(0xff28306e)
                                              : Colors.white,
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                    subtitle: Text(
                                      '(Newborn, toddler, preschooler, etc.)',
                                      style: TextStyle(
                                          color: !childCare
                                              ? Color(0xff495057)
                                              : Colors.white,
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.03),
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
                                        top: deviceSize.height * 0.005)),
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
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))
                                      //more than 50% of width makes circle
                                      ),
                                  height: deviceSize.height * 0.1,
                                  child: ListTile(
                                    title: Text(
                                      "Elderly Care ",
                                      style: TextStyle(
                                          color: !elderlyCare
                                              ? Color(0xff28306e)
                                              : Colors.white,
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                    subtitle: Text(
                                      '(Companionship, personal care, meal prep)',
                                      style: TextStyle(
                                          color: !elderlyCare
                                              ? Color(0xff495057)
                                              : Colors.white,
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.03),
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
                                        top: deviceSize.height * 0.005)),
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
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))
                                      //more than 50% of width makes circle
                                      ),
                                  child: ListTile(
                                    title: Text(
                                      "Advanced Nursing Care ",
                                      style: TextStyle(
                                          color: !advancedCare
                                              ? Color(0xff28306e)
                                              : Colors.white,
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                    subtitle: Text(
                                      '(by registered nurses: Injections, wound care, etc.)',
                                      style: TextStyle(
                                          color: !advancedCare
                                              ? Color(0xff495057)
                                              : Colors.white,
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.03),
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
                                        top: deviceSize.height * 0.005)),
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
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))
                                      //more than 50% of width makes circle
                                      ),
                                  child: ListTile(
                                    title: Text(
                                      "Laboratory Services",
                                      style: TextStyle(
                                          color: !labCare
                                              ? Color(0xff28306e)
                                              : Colors.white,
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                    subtitle: Text(
                                      '(PCR, blood analysis, etc.)',
                                      style: TextStyle(
                                          color: !labCare
                                              ? Color(0xff495057)
                                              : Colors.white,
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.03),
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
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.6,
                      child: EasyRichText(
                        "Infant\n\nAge 3 to 12 months",
                        patternList: [
                          EasyRichTextPattern(
                            targetString: 'Infant',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica_Bold',
                                fontSize: deviceSize.width * 0.045),
                          ),
                          EasyRichTextPattern(
                            targetString: 'Age 3 to 12 months',
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
                        Consumer<ChildCareProvider>(
                          builder: (_, foo, __) => IconButton(
                            onPressed: () => {
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
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Divider(
                  thickness: 1,
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.6,
                      child: EasyRichText(
                        "Toddler\n\nAge 1 to 3 years",
                        patternList: [
                          EasyRichTextPattern(
                            targetString: 'Toddler',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica_Bold',
                                fontSize: deviceSize.width * 0.045),
                          ),
                          EasyRichTextPattern(
                            targetString: 'Age 1 to 3 years',
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
                        Consumer<ChildCareProvider>(
                          builder: (_, foo, __) => IconButton(
                            onPressed: () => {
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
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Divider(
                  thickness: 1,
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.6,
                      child: EasyRichText(
                        "Preschooler\n\nAge 3 to 5 years",
                        patternList: [
                          EasyRichTextPattern(
                            targetString: 'Preschooler',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica_Bold',
                                fontSize: deviceSize.width * 0.045),
                          ),
                          EasyRichTextPattern(
                            targetString: 'Age 3 to 5 years',
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
                        Consumer<ChildCareProvider>(
                          builder: (_, foo, __) => IconButton(
                            onPressed: () => {
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
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Divider(
                  thickness: 1,
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.6,
                      child: EasyRichText(
                        "Primary Schooler\n\nAge 5 to 12 years",
                        patternList: [
                          EasyRichTextPattern(
                            targetString: 'Primary Schooler',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica_Bold',
                                fontSize: deviceSize.width * 0.045),
                          ),
                          EasyRichTextPattern(
                            targetString: 'Age 5 to 12 years',
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
                        Consumer<ChildCareProvider>(
                          builder: (_, foo, __) => IconButton(
                            onPressed: () => {
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
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Divider(
                  thickness: 1,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total number of children to be cared for',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.035),
                      ),
                      Consumer<ChildCareProvider>(
                        builder: (_, foo, __) => Text(
                          '${ChildCareProvider.numberOfChildren}',
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica_Bold',
                              fontSize: deviceSize.width * 0.04),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  padding: EdgeInsets.all(deviceSize.width * 0.03),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color(0xffD3CFC8),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Note',
                        style: TextStyle(
                          fontSize: deviceSize.width * 0.045,
                          fontFamily: 'Helvetica_Bold',
                          color: Color(0xff28306e),
                        ),
                      ),
                      Text(
                        'In case the requested care schedule varies for your children, you need to create separate care requests for each child. In such case, each care request will indicate 1 child. ',
                        style: TextStyle(
                          fontSize: deviceSize.width * 0.03,
                          fontFamily: 'Helvetica',
                          color: Color(0xff28306e),
                        ),
                      ),
                    ],
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
