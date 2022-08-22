import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/CareRecipients/mainRecipients.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/WhenYoyNeed/buildRequest.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/WhenYoyNeed/schedule.dart';
import 'package:provider/provider.dart';

import '../../../providers/PostMyNeedsProvider/CategoriesProvider.dart';
import '../../../providers/PostMyNeedsProvider/caregiverPreferencesProvider.dart';
import '../../BookingsDashboard/bookingsDashboard.dart';

class CaregiverPreferences extends StatefulWidget {
  static const routeName = '/caregiverPreferences-screen';

  @override
  _CaregiverPreferencesState createState() => _CaregiverPreferencesState();
}

class _CaregiverPreferencesState extends State<CaregiverPreferences> {
  String dropdownvalue = 'service1';
  var items = ['service1', 'service2', 'service3'];

  String dropdownvalue2 = 'service2';
  var items2 = ['service1', 'service2', 'service3'];
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
          "Caregiver Preferences",
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
                      width: deviceSize.width * 0.1,
                      height: deviceSize.width * 0.1,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xff28306e),
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '6',
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
                Text(
                  'Are you looking for a caregiver from a specific age range? (select that applies)',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                SizedBox(
                  child: Card(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        side: BorderSide(color: Color(0xffD3CFC8))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Consumer<CaregiverPreferencesProvider>(
                              builder: (_, foo, __) => Checkbox(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                activeColor: Colors.blue,
                                side: BorderSide(
                                    width: 1, color: Color(0xffD3CFC8)),
                                value: CaregiverPreferencesProvider.up24Check,
                                onChanged: (val) {
                                  foo.changeup24Check();
                                },
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.33,
                              child: Text(
                                "Up to 24",
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.035),
                              ),
                            ),
                            Consumer<CaregiverPreferencesProvider>(
                              builder: (_, foo, __) => Checkbox(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                activeColor: Colors.blue,
                                side: BorderSide(
                                    width: 1, color: Color(0xffD3CFC8)),
                                value: CaregiverPreferencesProvider.Check24,
                                onChanged: (val) {
                                  foo.changeCheck24();
                                },
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.33,
                              child: Text(
                                "24 - 35",
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.035),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Consumer<CaregiverPreferencesProvider>(
                              builder: (_, foo, __) => Checkbox(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                activeColor: Colors.blue,
                                side: BorderSide(
                                    width: 1, color: Color(0xffD3CFC8)),
                                value: CaregiverPreferencesProvider.Check35,
                                onChanged: (val) {
                                  foo.changeCheck35();
                                },
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.33,
                              child: Text(
                                "35 - 50",
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.035),
                              ),
                            ),
                            Consumer<CaregiverPreferencesProvider>(
                              builder: (_, foo, __) => Checkbox(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                activeColor: Colors.blue,
                                side: BorderSide(
                                    width: 1, color: Color(0xffD3CFC8)),
                                value: CaregiverPreferencesProvider.up50Check,
                                onChanged: (val) {
                                  foo.changeup50Check();
                                },
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.33,
                              child: Text(
                                "50 and above",
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.035),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Are you looking for a caregiver with specific certifications? (Optional)',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                DropdownButton(
                    value: dropdownvalue,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04),
                          ));
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        dropdownvalue = val as String;
                      });
                    }),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Text(
                  'Are you looking for a caregiver who speaks a specific language? (Optional)',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                DropdownButton(
                    value: dropdownvalue2,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: items2.map((String items) {
                      return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04),
                          ));
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        dropdownvalue2 = val as String;
                      });
                    }),
                Consumer<CategoriesProvider>(
                  builder: (_, foo, __) => Container(
                    margin: EdgeInsets.all(deviceSize.height * 0.03),
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
                            Navigator.of(context).pushNamed(Schedule.routeName),
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
