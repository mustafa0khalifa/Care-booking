import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/BrowseCaregiversProvider.dart';
import 'package:provider/provider.dart';

import '../browseCaregivers.dart';
import 'mainBrowseCaregaver.dart';

class Filter extends StatefulWidget {
  static const routeName = '/filter-screen';

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

  String dropdownAge1 = '35';
  var itemsAge1 = ['35', '38', '40'];
  String dropdownMorThan = '3';
  var itemsMorThan = ['3', '5', '6'];
  String dropdownIn = 'Child Care';
  var itemsIn = ['Child Care'];
  String dropdownAge2 = '45';
  var itemsAge2 = ['45', '48', '50'];

  String dropdownvalue3 = 'Nursing';
  var items3 = ['Nursing'];

  String dropdownLanguage = 'Arabic';
  var itemsLanguage = ['Arabic', 'English'];
  String dropdownvalue4 = 'Chaild Care';
  var items4 = ['Chaild Care'];

  String dropdownvalue5 = 'Nothing';
  var items5 = ['Nothing', 'Italian', 'Swedish'];

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Filter Setting",
            style: TextStyle(
                color: Color(0xff28306e),
                fontFamily: 'Helvetica-Bold',
                fontSize: 20),
          ),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
          margin: EdgeInsets.all(0.03 * deviceSize.height),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.black87)),
                  child: Container(
                    padding: EdgeInsets.all(deviceSize.height * 0.01),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(
                                        0xff28306e), //elevated btton background color
                                  ),
                                  onPressed: () => {print('ok')},
                                  child: Text('Gender',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontFamily: 'Helvetica',
                                          fontSize: 16)),
                                ),
                              ),
                              Row(
                                children: [
                                  Consumer<BrowseCaregiversProvider>(
                                    builder: (_, foo, __) => Radio(
                                        activeColor: Colors.greenAccent,
                                        value: 'all',
                                        groupValue:
                                            BrowseCaregiversProvider.groubVal,
                                        onChanged: (value) {
                                          foo.changeGroubVal(value as String);
                                        }),
                                  ),
                                  Text('All',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: 14)),
                                ],
                              ),
                              Row(
                                children: [
                                  Consumer<BrowseCaregiversProvider>(
                                      builder: (_, foo, __) => Radio(
                                          activeColor: Colors.greenAccent,
                                          value: 'male',
                                          groupValue:
                                              BrowseCaregiversProvider.groubVal,
                                          onChanged: (value) {
                                            foo.changeGroubVal(value as String);
                                          })),
                                  Text('Male',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: 14)),
                                ],
                              ),
                              Row(
                                children: [
                                  Consumer<BrowseCaregiversProvider>(
                                      builder: (_, foo, __) => Radio(
                                          activeColor: Colors.greenAccent,
                                          value: 'female',
                                          groupValue:
                                              BrowseCaregiversProvider.groubVal,
                                          onChanged: (value) {
                                            foo.changeGroubVal(value as String);
                                          })),
                                  Text('Female',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: 14)),
                                ],
                              )
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
                                child: Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => Checkbox(
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
                                child: Text("Distance",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 18)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Consumer<BrowseCaregiversProvider>(
                              builder: (_, foo, __) => Slider(
                                  value: BrowseCaregiversProvider.valueSlider,
                                  min: 10.0,
                                  max: 100.0,
                                  divisions: 10,
                                  activeColor: Color(0xff28306e),
                                  inactiveColor: Color(0xffcbcbcb),
                                  label:
                                      '${BrowseCaregiversProvider.valueSlider}',
                                  onChanged: (double newValue) {
                                    foo.changeValueSlider(newValue);
                                  },
                                  semanticFormatterCallback: (double newValue) {
                                    return '${newValue.round()} dollars';
                                  }),
                            ),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Center(
                              child: Consumer<BrowseCaregiversProvider>(
                                builder: (_, foo, __) => Text(
                                  "${BrowseCaregiversProvider.valueSlider.toInt()}  areoun me",
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.03 * deviceSize.height),
                          ),
                          Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: BorderSide(color: Colors.black87)),
                              child: Container(
                                padding:
                                    EdgeInsets.all(deviceSize.height * 0.01),
                                child: Column(children: [
                                  Center(
                                    child: SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Text("Care Required",
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica',
                                              fontSize: 18)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 0.03 * deviceSize.height),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: deviceSize.width * 0.4,
                                        child: Row(
                                          children: [
                                            Consumer<BrowseCaregiversProvider>(
                                                builder: (_, foo, __) => Radio(
                                                    activeColor:
                                                        Colors.greenAccent,
                                                    value: 'child',
                                                    groupValue:
                                                        BrowseCaregiversProvider
                                                            .groubVal,
                                                    onChanged: (value) {
                                                      foo.changeGroubVal(
                                                          value as String);
                                                    })),
                                            SizedBox(
                                              width: deviceSize.width * 0.2,
                                              child: Text("Child Care",
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize: 14)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: deviceSize.width * 0.35,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Consumer<BrowseCaregiversProvider>(
                                                builder: (_, foo, __) => Radio(
                                                    activeColor:
                                                        Colors.greenAccent,
                                                    value: 'elderly',
                                                    groupValue:
                                                        BrowseCaregiversProvider
                                                            .groubVal,
                                                    onChanged: (value) {
                                                      foo.changeGroubVal(
                                                          value as String);
                                                    })),
                                            SizedBox(
                                              width: deviceSize.width * 0.2,
                                              child: Text("Elderly Care",
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize: 14)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: deviceSize.width * 0.4,
                                        child: Row(
                                          children: [
                                            Consumer<BrowseCaregiversProvider>(
                                                builder: (_, foo, __) => Radio(
                                                    activeColor:
                                                        Colors.greenAccent,
                                                    value: 'advanced',
                                                    groupValue:
                                                        BrowseCaregiversProvider
                                                            .groubVal,
                                                    onChanged: (value) {
                                                      foo.changeGroubVal(
                                                          value as String);
                                                    })),
                                            SizedBox(
                                              width: deviceSize.width * 0.2,
                                              child: Text(
                                                  "Advanced Nursing Care",
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize: 14)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: deviceSize.width * 0.35,
                                        child: Row(
                                          children: [
                                            Consumer<BrowseCaregiversProvider>(
                                                builder: (_, foo, __) => Radio(
                                                    activeColor:
                                                        Colors.greenAccent,
                                                    value: 'lab',
                                                    groupValue:
                                                        BrowseCaregiversProvider
                                                            .groubVal,
                                                    onChanged: (value) {
                                                      foo.changeGroubVal(
                                                          value as String);
                                                    })),
                                            SizedBox(
                                              width: deviceSize.width * 0.2,
                                              child: Text("Lab / PCR Services",
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize: 14)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                              )),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.03 * deviceSize.height),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                child: Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => Checkbox(
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
                                child: Text("Payment Rate",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 18)),
                              ),
                            ],
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      child: Text('Hours / Day',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica',
                                              fontSize: 14)),
                                    ),
                                    DropdownButton(
                                        value: dropdownvalue,
                                        icon: Icon(Icons.keyboard_arrow_down),
                                        items: items.map((String items) {
                                          return DropdownMenuItem(
                                              value: items,
                                              child: Text(items,
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize: 14)));
                                        }).toList(),
                                        onChanged: (val) {
                                          setState(() {
                                            dropdownvalue = val as String;
                                          });
                                        }),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      child: Text('Currency',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica',
                                              fontSize: 14)),
                                    ),
                                    DropdownButton(
                                        value: dropdownvalue2,
                                        icon: Icon(Icons.keyboard_arrow_down),
                                        items: items2.map((String items) {
                                          return DropdownMenuItem(
                                              value: items,
                                              child: Text(items,
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily: 'Helvetica',
                                                      fontSize: 14)));
                                        }).toList(),
                                        onChanged: (val) {
                                          setState(() {
                                            dropdownvalue2 = val as String;
                                          });
                                        }),
                                  ],
                                )
                              ]),
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Consumer<BrowseCaregiversProvider>(
                              builder: (_, foo, __) => Slider(
                                  value: BrowseCaregiversProvider.valueSlider2,
                                  min: 10.0,
                                  max: 100.0,
                                  divisions: 10,
                                  activeColor: Color(0xff28306e),
                                  inactiveColor: Color(0xffcbcbcb),
                                  label:
                                      '${BrowseCaregiversProvider.valueSlider2}',
                                  onChanged: (double newValue) {
                                    foo.changeValueSlider2(newValue);
                                  },
                                  semanticFormatterCallback: (double newValue) {
                                    return '${newValue.round()} dollars';
                                  }),
                            ),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Center(
                              child: Consumer<BrowseCaregiversProvider>(
                                builder: (_, foo, __) => Text(
                                  "${BrowseCaregiversProvider.valueSlider2.toInt()}  \$",
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: 14),
                                ),
                              ),
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
                                child: Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => Checkbox(
                                    activeColor: Colors.green,
                                    value: BrowseCaregiversProvider.age,
                                    onChanged: (val) {
                                      foo.changeAge();
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceSize.width * 0.3,
                                child: Text("Age",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 18)),
                              ),
                            ],
                          ),
                          Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.black87)),
                            child: Container(
                              padding: EdgeInsets.all(deviceSize.height * 0.01),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          child: Text('Between',
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize: 14)),
                                        ),
                                        DropdownButton(
                                            value: dropdownAge1,
                                            icon:
                                                Icon(Icons.keyboard_arrow_down),
                                            items:
                                                itemsAge1.map((String items) {
                                              return DropdownMenuItem(
                                                  value: items,
                                                  child: Text(items,
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff28306e),
                                                          fontFamily:
                                                              'Helvetica',
                                                          fontSize: 14)));
                                            }).toList(),
                                            onChanged: (val) {
                                              setState(() {
                                                dropdownvalue = val as String;
                                              });
                                            }),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          child: Text('And',
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize: 14)),
                                        ),
                                        DropdownButton(
                                            value: dropdownAge2,
                                            icon:
                                                Icon(Icons.keyboard_arrow_down),
                                            items:
                                                itemsAge2.map((String items) {
                                              return DropdownMenuItem(
                                                  value: items,
                                                  child: Text(items,
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff28306e),
                                                          fontFamily:
                                                              'Helvetica',
                                                          fontSize: 14)));
                                            }).toList(),
                                            onChanged: (val) {
                                              setState(() {
                                                dropdownvalue2 = val as String;
                                              });
                                            }),
                                      ],
                                    )
                                  ]),
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
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 18)),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.01 * deviceSize.height),
                          ),
                          Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.black87)),
                            child: Container(
                              padding: EdgeInsets.all(deviceSize.width * 0.01),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text("Newborn (0 - 3 month)",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
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
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                child: Consumer<
                                                    BrowseCaregiversProvider>(
                                                  builder: (_, foo, __) =>
                                                      Checkbox(
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
                                                child: Text("Basic Care",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize: 14)),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                child: Consumer<
                                                    BrowseCaregiversProvider>(
                                                  builder: (_, foo, __) =>
                                                      Checkbox(
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
                                                child: Text("Service 2",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize: 14)),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text("Infant (3 - 12 months)",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text("Toddler (1 - 3 years)",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text("Preschooler (3 - 5 years)",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text(
                                            "Primary Schooler (5 - 12 years)",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
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
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 18)),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.01 * deviceSize.height),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: deviceSize.width * 0.9,
                                child: Center(
                                  child: DropdownButton(
                                      value: dropdownvalue3,
                                      icon: Icon(Icons.keyboard_arrow_down),
                                      items: items3.map((String items) {
                                        return DropdownMenuItem(
                                            value: items,
                                            child: Text(items,
                                                style: TextStyle(
                                                    color: Color(0xff28306e),
                                                    fontFamily: 'Helvetica',
                                                    fontSize: 14)));
                                      }).toList(),
                                      onChanged: (val) {
                                        setState(() {
                                          dropdownvalue3 = val as String;
                                        });
                                      }),
                                ),
                              ),
                              SizedBox(
                                  width: deviceSize.width * 0.5,
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          child: Consumer<
                                              BrowseCaregiversProvider>(
                                            builder: (_, foo, __) => Checkbox(
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
                                          child: Text("Registered nurse",
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize: 16)),
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                  width: deviceSize.width * 0.5,
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          child: Consumer<
                                              BrowseCaregiversProvider>(
                                            builder: (_, foo, __) => Checkbox(
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
                                          child: Text("Practical nurse",
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize: 16)),
                                        ),
                                      ],
                                    ),
                                  ))
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
                                child: Consumer<BrowseCaregiversProvider>(
                                  builder: (_, foo, __) => Checkbox(
                                    activeColor: Colors.green,
                                    value: BrowseCaregiversProvider.age,
                                    onChanged: (val) {
                                      foo.changeAge();
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                child: Text("Years of Experience",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 18)),
                              ),
                            ],
                          ),
                          Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.black87)),
                            child: Container(
                              padding: EdgeInsets.all(deviceSize.height * 0.01),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          child: Text('More than',
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize: 14)),
                                        ),
                                        DropdownButton(
                                            value: dropdownMorThan,
                                            icon:
                                                Icon(Icons.keyboard_arrow_down),
                                            items: itemsMorThan
                                                .map((String items) {
                                              return DropdownMenuItem(
                                                  value: items,
                                                  child: Text(items,
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff28306e),
                                                          fontFamily:
                                                              'Helvetica',
                                                          fontSize: 14)));
                                            }).toList(),
                                            onChanged: (val) {
                                              setState(() {
                                                dropdownMorThan = val as String;
                                              });
                                            }),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          child: Text('in',
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize: 14)),
                                        ),
                                        DropdownButton(
                                            value: dropdownIn,
                                            icon:
                                                Icon(Icons.keyboard_arrow_down),
                                            items: itemsIn.map((String items) {
                                              return DropdownMenuItem(
                                                  value: items,
                                                  child: Text(items,
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff28306e),
                                                          fontFamily:
                                                              'Helvetica',
                                                          fontSize: 14)));
                                            }).toList(),
                                            onChanged: (val) {
                                              setState(() {
                                                dropdownIn = val as String;
                                              });
                                            }),
                                      ],
                                    )
                                  ]),
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
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 18)),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.01 * deviceSize.height),
                          ),
                          Center(
                            child: DropdownButton(
                                value: dropdownLanguage,
                                icon: Icon(Icons.keyboard_arrow_down),
                                items: itemsLanguage.map((String items) {
                                  return DropdownMenuItem(
                                      value: items,
                                      child: Text(items,
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica',
                                              fontSize: 14)));
                                }).toList(),
                                onChanged: (val) {
                                  setState(() {
                                    dropdownLanguage = val as String;
                                  });
                                }),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.03 * deviceSize.height),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.8,
                            child: Text(
                                maxLines: 2,
                                "Education / Degre",
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 18)),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.01 * deviceSize.height),
                          ),
                          Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.black87)),
                            child: Container(
                              padding: EdgeInsets.all(deviceSize.width * 0.01),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text("No Dergre",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text("Brovet Bp. oroquivaion1",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text(
                                            "High School ,Bt or equivaient",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text("Mastrer\'s degre",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text("Phd",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
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
                                "Additional Services",
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 18)),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.01 * deviceSize.height),
                          ),
                          Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.black87)),
                            child: Container(
                              padding: EdgeInsets.all(deviceSize.width * 0.01),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text("No Dergre",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text("Brovet Bp. oroquivaion1",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text(
                                            "High School ,Bt or equivaient",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text("Mastrer\'s degre",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text("Phd",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
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
                                "Other Preferences",
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 18)),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0.01 * deviceSize.height),
                          ),
                          Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.black87)),
                            child: Container(
                              padding: EdgeInsets.all(deviceSize.width * 0.01),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text("No Dergre",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text("Brovet Bp. oroquivaion1",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text(
                                            "High School ,Bt or equivaient",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text("Mastrer\'s degre",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Checkbox(
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
                                        child: Text("Phd",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize: 16)),
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
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: deviceSize.width * 0.4,
                    child: TextButton(
                      child: Text('Filter setting'),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color.fromARGB(255, 71, 201, 188),
                        onSurface: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          BrowseCaregivers.routeName,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
