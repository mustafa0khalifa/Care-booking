import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/BrowseCaregiversProvider.dart';
import 'package:provider/provider.dart';

import '../browseCaregivers.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  String groupValueRadio = 'all';
  String dropdownvalue = '8 hours';
  var items = [
    '8 hours',
    '1 hours',
    '2 hours',
    '3 hours',
    '3 hours',
    '5 hours'
  ];
  String dropdownvalue2 = 'USD';
  var items2 = ['USD', 'LBP'];

  String dropdownvalue3 = 'Nursing';
  var items3 = ['Nursing'];

  String dropdownvalue4 = 'Chaild Care';
  var items4 = ['Chaild Care'];

  String dropdownvalue5 = 'Nothing';
  var items5 = ['Nothing', 'Italian', 'Swedish'];

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
        height: deviceSize.height,
        width: deviceSize.width,
        padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
        child: Container(
          margin: EdgeInsets.all(deviceSize.height * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.6,
                      child: Text(
                        maxLines: 2,
                        "My Location:  Location Name/ Position",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                    IconButton(
                        onPressed: null,
                        icon: Icon(Icons.location_city_outlined))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.black87)),
                  child: Container(
                    margin: EdgeInsets.all(deviceSize.height * 0.01),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Text(
                              maxLines: 2,
                              "Filter by",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.005 * deviceSize.height),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Text(
                              maxLines: 2,
                              "Use this option to exclude caregivers who are booked on a certain date or show caregivers whose bookings end prior to this date, in case they are currently booked.",
                              style: TextStyle(
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 22, 116, 14)),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.03 * deviceSize.height),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Text(
                              maxLines: 2,
                              "Gender",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0.005 * deviceSize.height),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => ListTile(
                                      title: Text("All"),
                                      leading: Radio(
                                          activeColor: Colors.greenAccent,
                                          value: 'all',
                                          groupValue:
                                              BrowseCaregiversProvider.groubVal,
                                          onChanged: (value) {
                                            foo.changeGroubVal(value as String);
                                          })),
                                ),
                                Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => ListTile(
                                      title: Text("Male"),
                                      leading: Radio(
                                          activeColor: Colors.greenAccent,
                                          value: 'male',
                                          groupValue:
                                              BrowseCaregiversProvider.groubVal,
                                          onChanged: (value) {
                                            foo.changeGroubVal(value as String);
                                          })),
                                ),
                                Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => ListTile(
                                      title: Text("Female"),
                                      leading: Radio(
                                          activeColor: Colors.greenAccent,
                                          value: 'female',
                                          groupValue:
                                              BrowseCaregiversProvider.groubVal,
                                          onChanged: (value) {
                                            foo.changeGroubVal(value as String);
                                          })),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.03 * deviceSize.height),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: deviceSize.width * 0.3,
                                child: Text(
                                  maxLines: 2,
                                  "Distance",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              SizedBox(
                                width: deviceSize.width * 0.1913,
                                child: Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => CheckboxListTile(
                                    activeColor: Colors.green,
                                    value: BrowseCaregiversProvider.distance,
                                    onChanged: (val) {
                                      foo.changeDistance();
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(0.005 * deviceSize.height),
                            child: SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Consumer<BrowseCaregiversProvider>(
                                builder: (_, foo, __) => Slider(
                                    value: BrowseCaregiversProvider.valueSlider,
                                    min: 10.0,
                                    max: 100.0,
                                    divisions: 10,
                                    activeColor: Colors.green,
                                    inactiveColor: Colors.orange,
                                    label:
                                        '${BrowseCaregiversProvider.valueSlider}',
                                    onChanged: (double newValue) {
                                      foo.changeValueSlider(newValue);
                                    },
                                    semanticFormatterCallback:
                                        (double newValue) {
                                      return '${newValue.round()} dollars';
                                    }),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Center(
                              child: Consumer<BrowseCaregiversProvider>(
                                builder: (_, foo, __) => Text(
                                  maxLines: 2,
                                  "${BrowseCaregiversProvider.valueSlider}",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.03 * deviceSize.height),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Text(
                              maxLines: 2,
                              "Care Required *",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0.005 * deviceSize.height),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => ListTile(
                                      title: Text("Child Care"),
                                      leading: Radio(
                                          activeColor: Colors.greenAccent,
                                          value: 'child',
                                          groupValue:
                                              BrowseCaregiversProvider.groubVal,
                                          onChanged: (value) {
                                            foo.changeGroubVal(value as String);
                                          })),
                                ),
                                Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => ListTile(
                                      title: Text("Elderly Care"),
                                      leading: Radio(
                                          activeColor: Colors.greenAccent,
                                          value: 'elderly',
                                          groupValue:
                                              BrowseCaregiversProvider.groubVal,
                                          onChanged: (value) {
                                            foo.changeGroubVal(value as String);
                                          })),
                                ),
                                Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => ListTile(
                                      title: Text("Advanced Nursing Care"),
                                      leading: Radio(
                                          activeColor: Colors.greenAccent,
                                          value: 'advanced',
                                          groupValue:
                                              BrowseCaregiversProvider.groubVal,
                                          onChanged: (value) {
                                            foo.changeGroubVal(value as String);
                                          })),
                                ),
                                Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => ListTile(
                                      title: Text("Lab / PCR Services"),
                                      leading: Radio(
                                          activeColor: Colors.greenAccent,
                                          value: 'lab',
                                          groupValue:
                                              BrowseCaregiversProvider.groubVal,
                                          onChanged: (value) {
                                            foo.changeGroubVal(value as String);
                                          })),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.03 * deviceSize.height),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: deviceSize.width * 0.3,
                                child: Text(
                                  maxLines: 2,
                                  "Payment Rate",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              SizedBox(
                                width: deviceSize.width * 0.1913,
                                child: Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => CheckboxListTile(
                                    activeColor: Colors.green,
                                    value: BrowseCaregiversProvider.paymentRate,
                                    onChanged: (val) {
                                      foo.changePaymentRate();
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(0.005 * deviceSize.height),
                            child: SizedBox(
                                width: deviceSize.width * 0.8,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(
                                          width: deviceSize.width * 0.35,
                                          child: Text(
                                            'Hours / Day',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff000000)),
                                          ),
                                        ),
                                        DropdownButton(
                                            value: dropdownvalue,
                                            icon:
                                                Icon(Icons.keyboard_arrow_down),
                                            items: items.map((String items) {
                                              return DropdownMenuItem(
                                                  value: items,
                                                  child: Text(items));
                                            }).toList(),
                                            onChanged: (val) {
                                              setState(() {
                                                dropdownvalue = val as String;
                                              });
                                            }),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(
                                          width: deviceSize.width * 0.35,
                                          child: Text(
                                            'Currency',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff000000)),
                                          ),
                                        ),
                                        DropdownButton(
                                            value: dropdownvalue2,
                                            icon:
                                                Icon(Icons.keyboard_arrow_down),
                                            items: items2.map((String items) {
                                              return DropdownMenuItem(
                                                  value: items,
                                                  child: Text(items));
                                            }).toList(),
                                            onChanged: (val) {
                                              setState(() {
                                                dropdownvalue2 = val as String;
                                              });
                                            }),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(
                                          0.005 * deviceSize.height),
                                      child: SizedBox(
                                        width: deviceSize.width * 0.8,
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Slider(
                                              value: BrowseCaregiversProvider
                                                  .valueSlider2,
                                              min: 10.0,
                                              max: 100.0,
                                              divisions: 10,
                                              activeColor: Colors.green,
                                              inactiveColor: Colors.orange,
                                              label:
                                                  '${BrowseCaregiversProvider.valueSlider2}',
                                              onChanged: (double newValue) {
                                                foo.changeValueSlider2(
                                                    newValue);
                                              },
                                              semanticFormatterCallback:
                                                  (double newValue) {
                                                return '${newValue.round()} dollars';
                                              }),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.8,
                                      child: Center(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Text(
                                            maxLines: 2,
                                            "${BrowseCaregiversProvider.valueSlider2}",
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.03 * deviceSize.height),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: deviceSize.width * 0.3,
                                child: Text(
                                  'Age',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff000000)),
                                ),
                              ),
                              SizedBox(
                                width: deviceSize.width * 0.18,
                                height: deviceSize.height * 0.07,
                                child: Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => CheckboxListTile(
                                    activeColor: Colors.green,
                                    value: BrowseCaregiversProvider.age,
                                    onChanged: (val) {
                                      foo.changeAge();
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(0.005 * deviceSize.height),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  child: Consumer<BrowseCaregiversProvider>(
                                    builder: (_, foo, __) => Text(
                                      'Between',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Consumer<BrowseCaregiversProvider>(
                                    builder: (_, foo, __) => Text(
                                      '${BrowseCaregiversProvider.numAge1}',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    child: Column(
                                  children: [
                                    Consumer<BrowseCaregiversProvider>(
                                      builder: (_, foo, __) => IconButton(
                                        onPressed: () => {
                                          foo.changeNumberOfAge1(false),
                                        },
                                        icon: Icon(Icons.arrow_upward_rounded),
                                      ),
                                    ),
                                    Consumer<BrowseCaregiversProvider>(
                                      builder: (_, foo, __) => IconButton(
                                        onPressed: () => {
                                          foo.changeNumberOfAge1(true),
                                        },
                                        icon:
                                            Icon(Icons.arrow_downward_rounded),
                                      ),
                                    ),
                                  ],
                                )),
                                SizedBox(
                                  child: Consumer<BrowseCaregiversProvider>(
                                    builder: (_, foo, __) => Text(
                                      'and',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Consumer<BrowseCaregiversProvider>(
                                    builder: (_, foo, __) => Text(
                                      '${BrowseCaregiversProvider.numAge2}',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    child: Column(
                                  children: [
                                    Consumer<BrowseCaregiversProvider>(
                                      builder: (_, foo, __) => IconButton(
                                        onPressed: () => {
                                          foo.changeNumberOfAge2(false),
                                        },
                                        icon: Icon(Icons.arrow_upward_rounded),
                                      ),
                                    ),
                                    Consumer<BrowseCaregiversProvider>(
                                      builder: (_, foo, __) => IconButton(
                                        onPressed: () => {
                                          foo.changeNumberOfAge2(true),
                                        },
                                        icon:
                                            Icon(Icons.arrow_downward_rounded),
                                      ),
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.03 * deviceSize.height),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Text(
                              maxLines: 2,
                              "Services Required",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                          Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.black87)),
                            child: Container(
                              margin: EdgeInsets.all(deviceSize.width * 0.01),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: deviceSize.width * 0.1913,
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) =>
                                              CheckboxListTile(
                                            activeColor: Colors.green,
                                            value: BrowseCaregiversProvider
                                                .newpornCheck,
                                            onChanged: (val) {
                                              foo.changenewpornCheck();
                                            },
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: deviceSize.width * 0.3,
                                        child: Text(
                                          maxLines: 2,
                                          "Newborn (0 - 3 month)",
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w400,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 0.03 * deviceSize.height),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width:
                                                    deviceSize.width * 0.1913,
                                                child: Consumer<
                                                    BrowseCaregiversProvider>(
                                                  builder: (_, foo, __) =>
                                                      CheckboxListTile(
                                                    activeColor: Colors.green,
                                                    value:
                                                        BrowseCaregiversProvider
                                                            .basicCareCheck,
                                                    onChanged: (val) {
                                                      foo.changebasicCareCheck();
                                                    },
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: deviceSize.width * 0.3,
                                                child: Text(
                                                  maxLines: 2,
                                                  "Basic Care",
                                                  style: TextStyle(
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color.fromARGB(
                                                          255, 0, 0, 0)),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width:
                                                    deviceSize.width * 0.1913,
                                                child: Consumer<
                                                    BrowseCaregiversProvider>(
                                                  builder: (_, foo, __) =>
                                                      CheckboxListTile(
                                                    activeColor: Colors.green,
                                                    value:
                                                        BrowseCaregiversProvider
                                                            .service2Check,
                                                    onChanged: (val) {
                                                      foo.changeservice2Check();
                                                    },
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: deviceSize.width * 0.3,
                                                child: Text(
                                                  maxLines: 2,
                                                  "Service 2",
                                                  style: TextStyle(
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color.fromARGB(
                                                          255, 0, 0, 0)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: deviceSize.width * 0.1913,
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) =>
                                              CheckboxListTile(
                                            activeColor: Colors.green,
                                            value: BrowseCaregiversProvider
                                                .infantCheck,
                                            onChanged: (val) {
                                              foo.changeinfantCheck();
                                            },
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: deviceSize.width * 0.3,
                                        child: Text(
                                          maxLines: 2,
                                          "Infant (3 - 12 months)",
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w400,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: deviceSize.width * 0.1913,
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) =>
                                              CheckboxListTile(
                                            activeColor: Colors.green,
                                            value: BrowseCaregiversProvider
                                                .toddlerCheck,
                                            onChanged: (val) {
                                              foo.changetoddlerCheck();
                                            },
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: deviceSize.width * 0.3,
                                        child: Text(
                                          maxLines: 2,
                                          "Toddler (1 - 3 years)",
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w400,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: deviceSize.width * 0.1913,
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) =>
                                              CheckboxListTile(
                                            activeColor: Colors.green,
                                            value: BrowseCaregiversProvider
                                                .preschoolerCheck,
                                            onChanged: (val) {
                                              foo.changepreschoolerCheck();
                                            },
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: deviceSize.width * 0.3,
                                        child: Text(
                                          maxLines: 2,
                                          "Preschooler (3 - 5 years)",
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w400,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: deviceSize.width * 0.1913,
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) =>
                                              CheckboxListTile(
                                            activeColor: Colors.green,
                                            value: BrowseCaregiversProvider
                                                .primaryschoolerCheck,
                                            onChanged: (val) {
                                              foo.changeprimaryschoolerCheck();
                                            },
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: deviceSize.width * 0.3,
                                        child: Text(
                                          maxLines: 2,
                                          "Primary Schooler (5 - 12 years)",
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w400,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.03 * deviceSize.height),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Text(
                              maxLines: 2,
                              "Caregiver Type / Quallifications",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0.005 * deviceSize.height),
                            child: Container(
                              margin: EdgeInsets.all(deviceSize.width * 0.01),
                              child: DropdownButton(
                                  value: dropdownvalue3,
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  items: items3.map((String items) {
                                    return DropdownMenuItem(
                                        value: items, child: Text(items));
                                  }).toList(),
                                  onChanged: (val) {
                                    setState(() {
                                      dropdownvalue3 = val as String;
                                    });
                                  }),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: deviceSize.width * 0.1913,
                                child: Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => CheckboxListTile(
                                    activeColor: Colors.green,
                                    value: BrowseCaregiversProvider
                                        .registeredNurseCheck,
                                    onChanged: (val) {
                                      foo.changeregisteredNurseCheck();
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceSize.width * 0.3,
                                child: Text(
                                  maxLines: 2,
                                  "Registered nurse",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: deviceSize.width * 0.1913,
                                child: Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => CheckboxListTile(
                                    activeColor: Colors.green,
                                    value: BrowseCaregiversProvider
                                        .practicalNurseCheck,
                                    onChanged: (val) {
                                      foo.changepracticalNurseCheck();
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceSize.width * 0.3,
                                child: Text(
                                  maxLines: 2,
                                  "Practical nurse",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.03 * deviceSize.height),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: deviceSize.width * 0.3,
                                child: Text(
                                  maxLines: 2,
                                  "Years of Experience",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              SizedBox(
                                width: deviceSize.width * 0.1913,
                                child: Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => CheckboxListTile(
                                    activeColor: Colors.green,
                                    value: BrowseCaregiversProvider
                                        .yearsOfExperienceCheck,
                                    onChanged: (val) {
                                      foo.changeyearsOfExperienceCheck();
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: deviceSize.height * 0.03),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  child: Consumer<BrowseCaregiversProvider>(
                                    builder: (_, foo, __) => Text(
                                      'More than',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Consumer<BrowseCaregiversProvider>(
                                    builder: (_, foo, __) => Text(
                                      '${BrowseCaregiversProvider.numfExperience}',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    child: Column(
                                  children: [
                                    Consumer<BrowseCaregiversProvider>(
                                      builder: (_, foo, __) => IconButton(
                                        onPressed: () => {
                                          foo.changeNumberOfExperience(false),
                                        },
                                        icon: Icon(Icons.arrow_upward_rounded),
                                      ),
                                    ),
                                    Consumer<BrowseCaregiversProvider>(
                                      builder: (_, foo, __) => IconButton(
                                        onPressed: () => {
                                          foo.changeNumberOfExperience(true),
                                        },
                                        icon:
                                            Icon(Icons.arrow_downward_rounded),
                                      ),
                                    ),
                                  ],
                                )),
                                DropdownButton(
                                    value: dropdownvalue4,
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    items: items4.map((String items) {
                                      return DropdownMenuItem(
                                          value: items, child: Text(items));
                                    }).toList(),
                                    onChanged: (val) {
                                      setState(() {
                                        dropdownvalue4 = val as String;
                                      });
                                    }),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.03 * deviceSize.height),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Text(
                              maxLines: 2,
                              "Languages Spoken",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 0.01 * deviceSize.height),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value: BrowseCaregiversProvider
                                              .arabicCheck,
                                          onChanged: (val) {
                                            foo.changearabicCheck();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "Arabic",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value: BrowseCaregiversProvider
                                              .englishCheck,
                                          onChanged: (val) {
                                            foo.changeenglishCheck();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "English",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value: BrowseCaregiversProvider
                                              .frenchCheck,
                                          onChanged: (val) {
                                            foo.changefrenchCheck();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "French",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 0.02 * deviceSize.height),
                                  child: DropdownButton(
                                      value: dropdownvalue5,
                                      icon: Icon(Icons.keyboard_arrow_down),
                                      items: items5.map((String items) {
                                        return DropdownMenuItem(
                                            value: items, child: Text(items));
                                      }).toList(),
                                      onChanged: (val) {
                                        setState(() {
                                          dropdownvalue5 = val as String;
                                        });
                                      }),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.03)),
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Text(
                              maxLines: 2,
                              "Additional Services",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 0.01 * deviceSize.height),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value:
                                              BrowseCaregiversProvider.noDegree,
                                          onChanged: (val) {
                                            foo.changenoDegree();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "Light housekeeping",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value:
                                              BrowseCaregiversProvider.brevet,
                                          onChanged: (val) {
                                            foo.changebrevet();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "Cooking for Kids",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value: BrowseCaregiversProvider
                                              .highSchool,
                                          onChanged: (val) {
                                            foo.changehighSchool();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "Cooking for Elderly",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value:
                                              BrowseCaregiversProvider.bachelor,
                                          onChanged: (val) {
                                            foo.changebachelor();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "Pick up / Drop off for kids",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value:
                                              BrowseCaregiversProvider.master,
                                          onChanged: (val) {
                                            foo.changemaster();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "Transportation accompany elderly to go from one place to another",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value: BrowseCaregiversProvider.PhD,
                                          onChanged: (val) {
                                            foo.changePhD();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "Running errands and shopping",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.03)),
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Text(
                              maxLines: 2,
                              "Other Preferences",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 0.01 * deviceSize.height),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value:
                                              BrowseCaregiversProvider.noDegree,
                                          onChanged: (val) {
                                            foo.changenoDegree();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "Non-smoker",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value:
                                              BrowseCaregiversProvider.brevet,
                                          onChanged: (val) {
                                            foo.changebrevet();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "Cat friendly",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value: BrowseCaregiversProvider
                                              .highSchool,
                                          onChanged: (val) {
                                            foo.changehighSchool();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "Dog friendly",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.03)),
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Text(
                              maxLines: 2,
                              "Additional Preferences",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 0.01 * deviceSize.height),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value:
                                              BrowseCaregiversProvider.noDegree,
                                          onChanged: (val) {
                                            foo.changenoDegree();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "Additional Preferences",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value:
                                              BrowseCaregiversProvider.brevet,
                                          onChanged: (val) {
                                            foo.changebrevet();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "etc",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.03)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: deviceSize.width * 0.3,
                                child: Text(
                                  maxLines: 2,
                                  "Active on Platform",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              SizedBox(
                                width: deviceSize.width * 0.1913,
                                child: Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => CheckboxListTile(
                                    activeColor: Colors.green,
                                    value: BrowseCaregiversProvider
                                        .yearsOfExperienceCheck,
                                    onChanged: (val) {
                                      foo.changeyearsOfExperienceCheck();
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 0.01 * deviceSize.height),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value:
                                              BrowseCaregiversProvider.noDegree,
                                          onChanged: (val) {
                                            foo.changenoDegree();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "Today ",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value:
                                              BrowseCaregiversProvider.brevet,
                                          onChanged: (val) {
                                            foo.changebrevet();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "since 10 days  ",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value: BrowseCaregiversProvider
                                              .highSchool,
                                          onChanged: (val) {
                                            foo.changehighSchool();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "since 4 weeks",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value:
                                              BrowseCaregiversProvider.bachelor,
                                          onChanged: (val) {
                                            foo.changebachelor();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "since 6 Months ",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value:
                                              BrowseCaregiversProvider.master,
                                          onChanged: (val) {
                                            foo.changemaster();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "since more than 6 Months ",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.03)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: deviceSize.width * 0.3,
                                child: Text(
                                  maxLines: 2,
                                  "Availability",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              SizedBox(
                                width: deviceSize.width * 0.1913,
                                child: Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => CheckboxListTile(
                                    activeColor: Colors.green,
                                    value: BrowseCaregiversProvider
                                        .yearsOfExperienceCheck,
                                    onChanged: (val) {
                                      foo.changeyearsOfExperienceCheck();
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 0.01 * deviceSize.height),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value:
                                              BrowseCaregiversProvider.noDegree,
                                          onChanged: (val) {
                                            foo.changenoDegree();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "Specify Date",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.2,
                                      child: TextField(
                                        style: TextStyle(
                                            color: Colors.blue.shade900,
                                            fontSize: 11),
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                borderSide: BorderSide(
                                                    color: Colors.grey)),
                                            hintText: ' / / ',
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 11)),
                                      ),
                                    ),
                                    Icon(Icons.date_range_outlined)
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 0.005 * deviceSize.height),
                                ),
                                SizedBox(
                                  width: deviceSize.width * 0.8,
                                  child: Text(
                                    maxLines: 5,
                                    "Use this option to exclude caregivers who are not booked on a certain date or show caregivers whose bookings end prior to this dtae, in case they are currently booked.",
                                    style: TextStyle(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w300,
                                        color:
                                            Color.fromARGB(255, 22, 116, 14)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 0.01 * deviceSize.height),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) => Text(
                                          'From',
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff000000)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.2,
                                      child: TextField(
                                        style: TextStyle(
                                            color: Colors.blue.shade900,
                                            fontSize: 11),
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                borderSide: BorderSide(
                                                    color: Colors.grey)),
                                            hintText: '',
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 11)),
                                      ),
                                    ),
                                    SizedBox(
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) => Text(
                                          'To',
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff000000)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.2,
                                      child: TextField(
                                        style: TextStyle(
                                            color: Colors.blue.shade900,
                                            fontSize: 11),
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                borderSide: BorderSide(
                                                    color: Colors.grey)),
                                            hintText: '',
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 11)),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 0.01 * deviceSize.height),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value:
                                              BrowseCaregiversProvider.noDegree,
                                          onChanged: (val) {
                                            foo.changenoDegree();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "Live-In ",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value:
                                              BrowseCaregiversProvider.brevet,
                                          onChanged: (val) {
                                            foo.changebrevet();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "Day Shifts",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value: BrowseCaregiversProvider
                                              .highSchool,
                                          onChanged: (val) {
                                            foo.changehighSchool();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "Night Shifts",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.1913,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) =>
                                            CheckboxListTile(
                                          activeColor: Colors.green,
                                          value:
                                              BrowseCaregiversProvider.bachelor,
                                          onChanged: (val) {
                                            foo.changebachelor();
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text(
                                        maxLines: 2,
                                        "Weekends",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.03)),
                        ],
                      ),
                    ),
                  ),
                ),
                Consumer<BrowseCaregiversProvider>(
                  builder: (_, foo, __) => Container(
                    margin: EdgeInsets.all(deviceSize.height * 0.05),
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors
                              .greenAccent //elevated btton background color
                          ),
                      onPressed: () => {
                        foo.changeBrowseCaregiversMode(),
                        Navigator.of(context).pushNamed(
                          BrowseCaregivers.routeName,
                        )
                      },
                      child: Text("Reset"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
