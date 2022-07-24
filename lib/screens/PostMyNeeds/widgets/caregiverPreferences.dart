import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/PostMyNeedsProvider/caregiverPreferencesProvider.dart';
import 'NavBar.dart';
import 'budget.dart';

class CaregiverPreferences extends StatefulWidget {
  static const routeName = '/caregiverPreferences-screen';

  @override
  _CaregiverPreferencesState createState() => _CaregiverPreferencesState();
}

class _CaregiverPreferencesState extends State<CaregiverPreferences> {
  String dropdownvalue = '-- Multi Selection --';
  var items = ['-- Multi Selection --'];
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavBar(),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.05 * deviceSize.height),
          margin: EdgeInsets.all(deviceSize.width * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Are you looking for a caregiver from a specific age range? (select that applies)',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                SizedBox(
                  height: deviceSize.height * 0.35,
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black87)),
                    child: ListView(
                      children: [
                        Consumer<CaregiverPreferencesProvider>(
                          builder: (_, foo, __) => ListTile(
                              title: Text("Up to 24"),
                              leading: Radio(
                                  activeColor: Colors.greenAccent,
                                  value: 'Up to 24',
                                  groupValue:
                                      CaregiverPreferencesProvider.ageRange,
                                  onChanged: (value) {
                                    foo.changeAgeRange(value.toString());
                                  })),
                        ),
                        Consumer<CaregiverPreferencesProvider>(
                          builder: (_, foo, __) => ListTile(
                              title: Text("24 - 35"),
                              leading: Radio(
                                  activeColor: Colors.greenAccent,
                                  value: '24 - 35',
                                  groupValue:
                                      CaregiverPreferencesProvider.ageRange,
                                  onChanged: (value) {
                                    foo.changeAgeRange(value.toString());
                                  })),
                        ),
                        Consumer<CaregiverPreferencesProvider>(
                          builder: (_, foo, __) => ListTile(
                              title: Text("35 - 50"),
                              leading: Radio(
                                  activeColor: Colors.greenAccent,
                                  value: '35 - 50',
                                  groupValue:
                                      CaregiverPreferencesProvider.ageRange,
                                  onChanged: (value) {
                                    foo.changeAgeRange(value.toString());
                                  })),
                        ),
                        Consumer<CaregiverPreferencesProvider>(
                          builder: (_, foo, __) => ListTile(
                              title: Text("50 and above"),
                              leading: Radio(
                                  activeColor: Colors.greenAccent,
                                  value: '50 and above',
                                  groupValue:
                                      CaregiverPreferencesProvider.ageRange,
                                  onChanged: (value) {
                                    foo.changeAgeRange(value.toString());
                                  })),
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
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                DropdownButton(
                    value: dropdownvalue,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(value: items, child: Text(items));
                    }).toList(),
                    onChanged: (val) {}),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Are you looking for a caregiver who speaks a specific language? (Optional)',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                DropdownButton(
                    value: dropdownvalue,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(value: items, child: Text(items));
                    }).toList(),
                    onChanged: (val) {}),
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
                    onPressed: () {
                      Navigator.of(context).pushNamed(Budget.routeName);
                    },
                    child: Text("Next"),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
