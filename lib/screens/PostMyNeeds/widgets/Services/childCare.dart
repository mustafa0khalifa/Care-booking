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
                      child: EasyRichText(
                        "Newborn\n\nAge 0 to 3 month",
                        patternList: [
                          EasyRichTextPattern(
                            targetString: 'Newborn',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica_Bold',
                                fontSize: deviceSize.width * 0.045),
                          ),
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
                    Row(
                      children: [
                        Consumer<ChildCareProvider>(
                          builder: (_, foo, __) => IconButton(
                            onPressed: () => {
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
                Divider(
                  thickness: 1,
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Container(
                  height: deviceSize.height * 0.1,
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black87)),
                    child: ListTile(
                      title: Text(
                        "Basic Newborn Care",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                      subtitle: Text(
                        'Feed, sleep train, bathe, and interact with the baby',
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.035),
                      ),
                      leading: Icon(
                        Icons.man,
                        size: deviceSize.width * 0.1,
                      ),
                      onTap: () => {},
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Container(
                  height: deviceSize.height * 0.1,
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black87)),
                    child: ListTile(
                      title: Text(
                        "Premature Newborn Care",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                      subtitle: Text(
                        'Feed, bathe, change diapers, thermal measurement',
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.035),
                      ),
                      leading: Icon(
                        Icons.add_box_outlined,
                        size: deviceSize.width * 0.1,
                      ),
                      onTap: () => {},
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Container(
                  height: deviceSize.height * 0.1,
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black87)),
                    child: ListTile(
                      title: Text(
                        "Sleep training ",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                      subtitle: Text(
                        'Bedtime routine, sing, be patient',
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.035),
                      ),
                      leading: Icon(
                        Icons.self_improvement_sharp,
                        size: deviceSize.width * 0.1,
                      ),
                      onTap: () => {},
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Container(
                  height: deviceSize.height * 0.1,
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black87)),
                    child: ListTile(
                      title: Text(
                        "Specialized care for congenital conditions",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                      leading: Icon(
                        Icons.thermostat,
                        size: deviceSize.width * 0.1,
                      ),
                      onTap: () => {},
                    ),
                  ),
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
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: Colors.black87)),
                  child: Container(
                    padding: EdgeInsets.all(deviceSize.height * 0.03),
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
                                fontSize: deviceSize.width * 0.045),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: Colors.black87)),
                  child: Padding(
                      padding: EdgeInsets.all(deviceSize.height * 0.03),
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
                      )),
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
