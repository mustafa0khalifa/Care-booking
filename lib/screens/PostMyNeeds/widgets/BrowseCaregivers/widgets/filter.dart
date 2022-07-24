import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/BrowseCaregiversProvider.dart';
import 'package:provider/provider.dart';

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
                    Text(
                      maxLines: 2,
                      "My Location:  Location Name/ Position",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 0, 0, 0)),
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
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
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
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
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
                              SizedBox(
                                width: deviceSize.width * 0.3,
                                child: Text(
                                  maxLines: 2,
                                  "Distance",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 0, 0, 0)),
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
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
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
                                  ],
                                )),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.03 * deviceSize.height),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
