import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/budgetProvider.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../../../providers/PostMyNeedsProvider/caregiverPreferencesProvider.dart';
import 'NavBar.dart';
import 'CareRecipients/careRecipients.dart';

class Budget extends StatefulWidget {
  static const routeName = '/budget-screen';

  @override
  _BudgetState createState() => _BudgetState();
}

class _BudgetState extends State<Budget> {
  String dropdownvalue = 'USD';
  var items = ['USD'];
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
                SizedBox(
                  height: deviceSize.height * 0.2,
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black87)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.35,
                              child: Text(
                                'Total number of days of booking',
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
                              ),
                            ),
                            Text(
                              '8',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.35,
                              child: Text(
                                'Total number of shifts',
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
                              ),
                            ),
                            Text(
                              '12',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.35,
                              child: Text(
                                'Total number of hours requested',
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
                              ),
                            ),
                            Text(
                              '24',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'I dont have a specific budget',
                      style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),
                    ),
                    Consumer<BudgetProvider>(
                      builder: (_, foo, __) => FlutterSwitch(
                        width: deviceSize.width * 0.11,
                        height: deviceSize.height * 0.025,
                        value: BudgetProvider.specificBudget,
                        activeColor: Colors.green,
                        borderRadius: 30.0,
                        showOnOff: false,
                        onToggle: (val) {
                          foo.changeSpecificBudget();
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Currency',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000)),
                    ),
                    DropdownButton(
                        value: dropdownvalue,
                        icon: Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                              value: items, child: Text(items));
                        }).toList(),
                        onChanged: (val) {}),
                    SizedBox(
                      width: deviceSize.width * 0.5,
                      child: Text(
                        'You cannot change currency to LL since the start date is more than 2 months from now.',
                        style: TextStyle(
                            fontSize: 11.0,
                            fontWeight: FontWeight.w300,
                            color: Color.fromARGB(255, 148, 14, 14)),
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Budget',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000)),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.7,
                      child: TextField(
                        style: TextStyle(
                            color: Colors.blue.shade900, fontSize: 11),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.7,
                      child: Text(
                        'BudgCaregivers in your area charge an average of 521941 LBP - 809363 LBP for this bookinget',
                        style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.8,
                          child: Consumer<BudgetProvider>(
                            builder: (_, foo, __) => Slider(
                                value: BudgetProvider.valueSlider,
                                min: 10.0,
                                max: 100.0,
                                divisions: 10,
                                activeColor: Colors.green,
                                inactiveColor: Colors.orange,
                                label: '${BudgetProvider.valueSlider}',
                                onChanged: (double newValue) {
                                  foo.changeValueSlider(newValue);
                                },
                                semanticFormatterCallback: (double newValue) {
                                  return '${newValue.round()} dollars';
                                }),
                          ),
                        ),
                        Consumer<BudgetProvider>(
                          builder: (_, foo, __) => Text(
                            '${BudgetProvider.valueSlider}',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.7,
                      child: Text(
                        'You have a very high chance of finding a caregiver with this budget',
                        style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.7,
                      child: Text(
                        'There are 127 caregivers in your area who might accept this budget',
                        style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.02)),
                Text(
                  'Detailed Booking Dates',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                SizedBox(
                  height: deviceSize.height * 0.3,
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black87)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BookingDate(context, 'Monday 11/04/2022', '1:00 PM',
                            '2:00 PM', '21 USD'),
                        BookingDate(context, 'TuesDay 12/04/2022', '1:00 PM',
                            '2:00 PM', '21 USD'),
                        BookingDate(context, 'Monday 18/04/2022', '1:00 PM',
                            '2:00 PM', '21 USD'),
                        BookingDate(context, 'TuesDay 19/04/2022', '1:00 PM',
                            '2:00 PM', '21 USD'),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Container(
                  margin: EdgeInsets.all(deviceSize.height * 0.05),
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Colors.greenAccent //elevated btton background color
                        ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(CareRecipients.routeName);
                    },
                    child: Text("Next"),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget BookingDate(
      context, String val1, String val2, String val3, String val4) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          child: Text(
            '${val1}',
            style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w300,
                color: Color(0xff000000)),
          ),
        ),
        SizedBox(
          child: Text(
            '${val2}',
            style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w300,
                color: Color(0xff000000)),
          ),
        ),
        SizedBox(
          child: Text(
            '${val3}',
            style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000)),
          ),
        ),
        SizedBox(
          child: Text(
            '${val4}',
            style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w300,
                color: Color(0xff000000)),
          ),
        ),
      ],
    );
  }
}
