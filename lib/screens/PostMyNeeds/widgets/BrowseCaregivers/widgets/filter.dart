import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/BrowseCaregiversProvider.dart';
import 'package:provider/provider.dart';

import '../browseCaregivers.dart';

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
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Filter Setting",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          margin: EdgeInsets.all(0.01 * deviceSize.width),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                      side: BorderSide(color: Colors.black87)),
                  child: Consumer<BrowseCaregiversProvider>(
                    builder: (_, foo, __) => Container(
                      decoration: BoxDecoration(
                          color: BrowseCaregiversProvider.setGender
                              ? Color.fromARGB(80, 51, 65, 187)
                              : Color.fromARGB(255, 201, 199, 199),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.all(deviceSize.width * 0.01),
                            child: Consumer<BrowseCaregiversProvider>(
                              builder: (_, foo, __) => SizedBox(
                                height: deviceSize.height * 0.04,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.7,
                                      child: Text(
                                          maxLines: 2,
                                          "Gender",
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontSize:
                                                  deviceSize.width * 0.045)),
                                    ),
                                    IconButton(
                                        onPressed: () =>
                                            {foo.changeclickGender()},
                                        icon: !BrowseCaregiversProvider
                                                .clickGender
                                            ? Icon(
                                                Icons.arrow_downward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )
                                            : Icon(
                                                Icons.arrow_upward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          BrowseCaregiversProvider.clickGender
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Radio(
                                              activeColor: Colors.greenAccent,
                                              value: 'all',
                                              groupValue:
                                                  BrowseCaregiversProvider
                                                      .groubVal,
                                              onChanged: (value) {
                                                foo.changeGroubVal(
                                                    value as String);
                                              }),
                                        ),
                                        Text('All',
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize:
                                                    deviceSize.width * 0.04)),
                                        Consumer<BrowseCaregiversProvider>(
                                            builder: (_, foo, __) => Radio(
                                                activeColor: Colors.greenAccent,
                                                value: 'male',
                                                groupValue:
                                                    BrowseCaregiversProvider
                                                        .groubVal,
                                                onChanged: (value) {
                                                  foo.changeGroubVal(
                                                      value as String);
                                                })),
                                        Text('Male',
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize:
                                                    deviceSize.width * 0.04)),
                                        Consumer<BrowseCaregiversProvider>(
                                            builder: (_, foo, __) => Radio(
                                                activeColor: Colors.greenAccent,
                                                value: 'female',
                                                groupValue:
                                                    BrowseCaregiversProvider
                                                        .groubVal,
                                                onChanged: (value) {
                                                  foo.changeGroubVal(
                                                      value as String);
                                                })),
                                        Text('Female',
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize:
                                                    deviceSize.width * 0.04)),
                                      ],
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      padding: EdgeInsets.only(
                                          right: 0.05 * deviceSize.width),
                                      child: TextButton(
                                        child: Text(
                                          'Reset',
                                        ),
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor:
                                              Color.fromARGB(111, 201, 132, 5),
                                          onSurface: Colors.grey,
                                        ),
                                        onPressed: () {
                                          foo.changesetGender(false);
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                      side: BorderSide(color: Colors.black87)),
                  child: Consumer<BrowseCaregiversProvider>(
                    builder: (_, foo, __) => Container(
                      decoration: BoxDecoration(
                          color: BrowseCaregiversProvider.setDistance
                              ? Color.fromARGB(80, 51, 65, 187)
                              : Color.fromARGB(255, 201, 199, 199),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.all(deviceSize.width * 0.01),
                            child: Consumer<BrowseCaregiversProvider>(
                              builder: (_, foo, __) => SizedBox(
                                height: deviceSize.height * 0.04,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.7,
                                      child: Text("Distance",
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontSize:
                                                  deviceSize.width * 0.045)),
                                    ),
                                    IconButton(
                                        onPressed: () =>
                                            {foo.changeclickDistance()},
                                        icon: !BrowseCaregiversProvider
                                                .clickDistance
                                            ? Icon(
                                                Icons.arrow_downward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )
                                            : Icon(
                                                Icons.arrow_upward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          BrowseCaregiversProvider.clickDistance
                              ? Column(
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.8,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) => Slider(
                                            value: BrowseCaregiversProvider
                                                .valueSlider,
                                            min: 0.0,
                                            max: 100.0,
                                            divisions: 10,
                                            activeColor: Color(0xff28306e),
                                            inactiveColor: Color(0xffcbcbcb),
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
                                    SizedBox(
                                      width: deviceSize.width * 0.8,
                                      child: Center(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Text(
                                            "${BrowseCaregiversProvider.valueSlider.toInt()}  areoun me",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize:
                                                    deviceSize.width * 0.035),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      padding: EdgeInsets.only(
                                          right: 0.05 * deviceSize.width),
                                      child: TextButton(
                                        child: Text(
                                          'Reset',
                                        ),
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor:
                                              Color.fromARGB(111, 201, 132, 5),
                                          onSurface: Colors.grey,
                                        ),
                                        onPressed: () {
                                          foo.changesetDistance(false);
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                      side: BorderSide(color: Colors.black87)),
                  child: Consumer<BrowseCaregiversProvider>(
                    builder: (_, foo, __) => Container(
                      decoration: BoxDecoration(
                          color: BrowseCaregiversProvider.setCareRequired
                              ? Color.fromARGB(80, 51, 65, 187)
                              : Color.fromARGB(255, 201, 199, 199),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.all(deviceSize.width * 0.01),
                            child: Consumer<BrowseCaregiversProvider>(
                              builder: (_, foo, __) => SizedBox(
                                height: deviceSize.height * 0.04,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.7,
                                      child: Text("Care Required",
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontSize:
                                                  deviceSize.width * 0.045)),
                                    ),
                                    IconButton(
                                        onPressed: () =>
                                            {foo.changeclickCareRequired()},
                                        icon: !BrowseCaregiversProvider
                                                .clickCareRequired
                                            ? Icon(
                                                Icons.arrow_downward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )
                                            : Icon(
                                                Icons.arrow_upward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          BrowseCaregiversProvider.clickCareRequired
                              ? Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: deviceSize.width * 0.4,
                                          child: Row(
                                            children: [
                                              Consumer<
                                                      BrowseCaregiversProvider>(
                                                  builder: (_, foo, __) =>
                                                      Radio(
                                                          activeColor: Colors
                                                              .greenAccent,
                                                          value: 'child',
                                                          groupValue:
                                                              BrowseCaregiversProvider
                                                                  .groubVal2,
                                                          onChanged: (value) {
                                                            foo.changeGroubVal2(
                                                                value
                                                                    as String);
                                                          })),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: Text("Child Care",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.035)),
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
                                              Consumer<
                                                      BrowseCaregiversProvider>(
                                                  builder: (_, foo, __) =>
                                                      Radio(
                                                          activeColor: Colors
                                                              .greenAccent,
                                                          value: 'elderly',
                                                          groupValue:
                                                              BrowseCaregiversProvider
                                                                  .groubVal2,
                                                          onChanged: (value) {
                                                            foo.changeGroubVal2(
                                                                value
                                                                    as String);
                                                          })),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: Text("Elderly Care",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.035)),
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
                                              Consumer<
                                                      BrowseCaregiversProvider>(
                                                  builder: (_, foo, __) =>
                                                      Radio(
                                                          activeColor: Colors
                                                              .greenAccent,
                                                          value: 'advanced',
                                                          groupValue:
                                                              BrowseCaregiversProvider
                                                                  .groubVal2,
                                                          onChanged: (value) {
                                                            foo.changeGroubVal2(
                                                                value
                                                                    as String);
                                                          })),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: Text(
                                                    "Advanced Nursing Care",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.035)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: deviceSize.width * 0.35,
                                          child: Row(
                                            children: [
                                              Consumer<
                                                      BrowseCaregiversProvider>(
                                                  builder: (_, foo, __) =>
                                                      Radio(
                                                          activeColor: Colors
                                                              .greenAccent,
                                                          value: 'lab',
                                                          groupValue:
                                                              BrowseCaregiversProvider
                                                                  .groubVal2,
                                                          onChanged: (value) {
                                                            foo.changeGroubVal2(
                                                                value
                                                                    as String);
                                                          })),
                                              SizedBox(
                                                width: deviceSize.width * 0.2,
                                                child: Text(
                                                    "Lab / PCR Services",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.035)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      padding: EdgeInsets.only(
                                          right: 0.05 * deviceSize.width),
                                      child: TextButton(
                                        child: Text(
                                          'Reset',
                                        ),
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor:
                                              Color.fromARGB(111, 201, 132, 5),
                                          onSurface: Colors.grey,
                                        ),
                                        onPressed: () {
                                          foo.changesetCareRequired(false);
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                      side: BorderSide(color: Colors.black87)),
                  child: Consumer<BrowseCaregiversProvider>(
                    builder: (_, foo, __) => Container(
                      decoration: BoxDecoration(
                          color: BrowseCaregiversProvider.setPayment
                              ? Color.fromARGB(80, 51, 65, 187)
                              : Color.fromARGB(255, 201, 199, 199),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.all(deviceSize.width * 0.01),
                            child: Consumer<BrowseCaregiversProvider>(
                              builder: (_, foo, __) => SizedBox(
                                height: deviceSize.height * 0.04,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.7,
                                      child: Text("Payment Rate",
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontSize:
                                                  deviceSize.width * 0.045)),
                                    ),
                                    IconButton(
                                        onPressed: () =>
                                            {foo.changeclickPayment()},
                                        icon: !BrowseCaregiversProvider
                                                .clickPayment
                                            ? Icon(
                                                Icons.arrow_downward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )
                                            : Icon(
                                                Icons.arrow_upward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          BrowseCaregiversProvider.clickPayment
                              ? Column(
                                  children: [
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Column(
                                            children: [
                                              SizedBox(
                                                child: Text('Hours / Day',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.035)),
                                              ),
                                              DropdownButton(
                                                  value: dropdownvalue,
                                                  icon: Icon(Icons
                                                      .keyboard_arrow_down),
                                                  items:
                                                      items.map((String items) {
                                                    return DropdownMenuItem(
                                                        value: items,
                                                        child: Text(items,
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff28306e),
                                                                fontFamily:
                                                                    'Helvetica',
                                                                fontSize: deviceSize
                                                                        .width *
                                                                    0.035)));
                                                  }).toList(),
                                                  onChanged: (val) {
                                                    foo.changesetPayment(true);
                                                    setState(() {
                                                      dropdownvalue =
                                                          val as String;
                                                    });
                                                  }),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                child: Text('Currency',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.035)),
                                              ),
                                              DropdownButton(
                                                  value: dropdownvalue2,
                                                  icon: Icon(Icons
                                                      .keyboard_arrow_down),
                                                  items: items2
                                                      .map((String items) {
                                                    return DropdownMenuItem(
                                                        value: items,
                                                        child: Text(items,
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff28306e),
                                                                fontFamily:
                                                                    'Helvetica',
                                                                fontSize: deviceSize
                                                                        .width *
                                                                    0.035)));
                                                  }).toList(),
                                                  onChanged: (val) {
                                                    foo.changesetPayment(true);
                                                    setState(() {
                                                      dropdownvalue2 =
                                                          val as String;
                                                    });
                                                  }),
                                            ],
                                          )
                                        ]),
                                    SizedBox(
                                      width: deviceSize.width * 0.8,
                                      child: Consumer<BrowseCaregiversProvider>(
                                        builder: (_, foo, __) => Slider(
                                            value: BrowseCaregiversProvider
                                                .valueSlider2,
                                            min: 0.0,
                                            max: 100.0,
                                            divisions: 10,
                                            activeColor: Color(0xff28306e),
                                            inactiveColor: Color(0xffcbcbcb),
                                            label:
                                                '${BrowseCaregiversProvider.valueSlider2}',
                                            onChanged: (double newValue) {
                                              foo.changeValueSlider2(newValue);
                                            },
                                            semanticFormatterCallback:
                                                (double newValue) {
                                              return '${newValue.round()} dollars';
                                            }),
                                      ),
                                    ),
                                    SizedBox(
                                      width: deviceSize.width * 0.8,
                                      child: Center(
                                        child:
                                            Consumer<BrowseCaregiversProvider>(
                                          builder: (_, foo, __) => Text(
                                            "${BrowseCaregiversProvider.valueSlider2.toInt()}  \$",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize:
                                                    deviceSize.width * 0.035),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      padding: EdgeInsets.only(
                                          right: 0.05 * deviceSize.width),
                                      child: TextButton(
                                        child: Text(
                                          'Reset',
                                        ),
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor:
                                              Color.fromARGB(111, 201, 132, 5),
                                          onSurface: Colors.grey,
                                        ),
                                        onPressed: () {
                                          dropdownvalue = '8 hours';
                                          dropdownvalue2 = 'USD';
                                          foo.changesetPayment(false);
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                      side: BorderSide(color: Colors.black87)),
                  child: Consumer<BrowseCaregiversProvider>(
                    builder: (_, foo, __) => Container(
                      decoration: BoxDecoration(
                          color: BrowseCaregiversProvider.setAge
                              ? Color.fromARGB(80, 51, 65, 187)
                              : Color.fromARGB(255, 201, 199, 199),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.all(deviceSize.width * 0.01),
                            child: Consumer<BrowseCaregiversProvider>(
                              builder: (_, foo, __) => SizedBox(
                                height: deviceSize.height * 0.04,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.7,
                                      child: Text("Age",
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontSize:
                                                  deviceSize.width * 0.045)),
                                    ),
                                    IconButton(
                                        onPressed: () => {foo.changeclickAge()},
                                        icon: !BrowseCaregiversProvider.clickAge
                                            ? Icon(
                                                Icons.arrow_downward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )
                                            : Icon(
                                                Icons.arrow_upward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          BrowseCaregiversProvider.clickAge
                              ? Column(
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Column(
                                            children: [
                                              SizedBox(
                                                child: Text('Between',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.035)),
                                              ),
                                              DropdownButton(
                                                  value: dropdownAge1,
                                                  icon: Icon(Icons
                                                      .keyboard_arrow_down),
                                                  items: itemsAge1
                                                      .map((String items) {
                                                    return DropdownMenuItem(
                                                        value: items,
                                                        child: Text(items,
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff28306e),
                                                                fontFamily:
                                                                    'Helvetica',
                                                                fontSize: deviceSize
                                                                        .width *
                                                                    0.035)));
                                                  }).toList(),
                                                  onChanged: (val) {
                                                    foo.changesetAge(true);
                                                    setState(() {
                                                      dropdownAge1 =
                                                          val as String;
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
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.035)),
                                              ),
                                              DropdownButton(
                                                  value: dropdownAge2,
                                                  icon: Icon(Icons
                                                      .keyboard_arrow_down),
                                                  items: itemsAge2
                                                      .map((String items) {
                                                    return DropdownMenuItem(
                                                        value: items,
                                                        child: Text(items,
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff28306e),
                                                                fontFamily:
                                                                    'Helvetica',
                                                                fontSize: deviceSize
                                                                        .width *
                                                                    0.035)));
                                                  }).toList(),
                                                  onChanged: (val) {
                                                    foo.changesetAge(true);
                                                    setState(() {
                                                      dropdownAge2 =
                                                          val as String;
                                                    });
                                                  }),
                                            ],
                                          ),
                                        ]),
                                    Container(
                                      alignment: Alignment.topRight,
                                      padding: EdgeInsets.only(
                                          right: 0.05 * deviceSize.width),
                                      child: TextButton(
                                        child: Text(
                                          'Reset',
                                        ),
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor:
                                              Color.fromARGB(111, 201, 132, 5),
                                          onSurface: Colors.grey,
                                        ),
                                        onPressed: () {
                                          dropdownAge1 = '35';
                                          dropdownAge2 = '45';

                                          foo.changesetAge(false);
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                      side: BorderSide(color: Colors.black87)),
                  child: Consumer<BrowseCaregiversProvider>(
                    builder: (_, foo, __) => Container(
                      decoration: BoxDecoration(
                          color: BrowseCaregiversProvider.setServicesRequirede
                              ? Color.fromARGB(80, 51, 65, 187)
                              : Color.fromARGB(255, 201, 199, 199),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.all(deviceSize.width * 0.01),
                            child: Consumer<BrowseCaregiversProvider>(
                              builder: (_, foo, __) => SizedBox(
                                height: deviceSize.height * 0.04,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.7,
                                      child: Text(
                                          maxLines: 2,
                                          "Services Required",
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontSize:
                                                  deviceSize.width * 0.045)),
                                    ),
                                    IconButton(
                                        onPressed: () => {
                                              foo.changeclickServicesRequirede()
                                            },
                                        icon: !BrowseCaregiversProvider
                                                .clickServicesRequirede
                                            ? Icon(
                                                Icons.arrow_downward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )
                                            : Icon(
                                                Icons.arrow_upward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          BrowseCaregiversProvider.clickServicesRequirede
                              ? Column(
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value: BrowseCaregiversProvider
                                                  .newpornCheck,
                                              onChanged: (val) {
                                                foo.changesetServicesRequirede(
                                                    true);
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
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
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
                                                        foo.changesetServicesRequirede(
                                                            true);

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
                                                          fontFamily:
                                                              'Helvetica',
                                                          fontSize:
                                                              deviceSize.width *
                                                                  0.035)),
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
                                                        foo.changesetServicesRequirede(
                                                            true);

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
                                                          fontFamily:
                                                              'Helvetica',
                                                          fontSize:
                                                              deviceSize.width *
                                                                  0.035)),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )),
                                    Row(
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
                                                  .infantCheck,
                                              onChanged: (val) {
                                                foo.changesetServicesRequirede(
                                                    true);

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
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value: BrowseCaregiversProvider
                                                  .toddlerCheck,
                                              onChanged: (val) {
                                                foo.changesetServicesRequirede(
                                                    true);

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
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value: BrowseCaregiversProvider
                                                  .preschoolerCheck,
                                              onChanged: (val) {
                                                foo.changesetServicesRequirede(
                                                    true);

                                                foo.changepreschoolerCheck();
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          child: Text(
                                              "Preschooler (3 - 5 years)",
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value: BrowseCaregiversProvider
                                                  .primaryschoolerCheck,
                                              onChanged: (val) {
                                                foo.changesetServicesRequirede(
                                                    true);

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
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      padding: EdgeInsets.only(
                                          right: 0.05 * deviceSize.width),
                                      child: TextButton(
                                        child: Text(
                                          'Reset',
                                        ),
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor:
                                              Color.fromARGB(111, 201, 132, 5),
                                          onSurface: Colors.grey,
                                        ),
                                        onPressed: () {
                                          foo.changesetServicesRequirede(false);
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                      side: BorderSide(color: Colors.black87)),
                  child: Consumer<BrowseCaregiversProvider>(
                    builder: (_, foo, __) => Container(
                      decoration: BoxDecoration(
                          color: BrowseCaregiversProvider.setCaregiverType
                              ? Color.fromARGB(80, 51, 65, 187)
                              : Color.fromARGB(255, 201, 199, 199),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.all(deviceSize.width * 0.01),
                            child: Consumer<BrowseCaregiversProvider>(
                              builder: (_, foo, __) => SizedBox(
                                height: deviceSize.height * 0.04,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.7,
                                      child: Text(
                                          maxLines: 2,
                                          "Caregiver Type / Quallifications",
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontSize:
                                                  deviceSize.width * 0.045)),
                                    ),
                                    IconButton(
                                        onPressed: () =>
                                            {foo.changeclickCaregiverType()},
                                        icon: !BrowseCaregiversProvider
                                                .clickCaregiverType
                                            ? Icon(
                                                Icons.arrow_downward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )
                                            : Icon(
                                                Icons.arrow_upward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          BrowseCaregiversProvider.clickCaregiverType
                              ? Column(
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.3,
                                      child: Center(
                                        child: DropdownButton(
                                            value: dropdownvalue3,
                                            icon:
                                                Icon(Icons.keyboard_arrow_down),
                                            items: items3.map((String items) {
                                              return DropdownMenuItem(
                                                  value: items,
                                                  child: Text(items,
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff28306e),
                                                          fontFamily:
                                                              'Helvetica',
                                                          fontSize:
                                                              deviceSize.width *
                                                                  0.035)));
                                            }).toList(),
                                            onChanged: (val) {
                                              setState(() {
                                                foo.changesetCaregiverType(
                                                    true);
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
                                                  builder: (_, foo, __) =>
                                                      Checkbox(
                                                    activeColor: Colors.green,
                                                    value:
                                                        BrowseCaregiversProvider
                                                            .registeredNurseCheck,
                                                    onChanged: (val) {
                                                      foo.changesetCaregiverType(
                                                          true);
                                                      foo.changeregisteredNurseCheck();
                                                    },
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                child: Text("Registered nurse",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.04)),
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
                                                  builder: (_, foo, __) =>
                                                      Checkbox(
                                                    activeColor: Colors.green,
                                                    value:
                                                        BrowseCaregiversProvider
                                                            .practicalNurseCheck,
                                                    onChanged: (val) {
                                                      foo.changesetCaregiverType(
                                                          true);
                                                      foo.changepracticalNurseCheck();
                                                    },
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                child: Text("Practical nurse",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.04)),
                                              ),
                                            ],
                                          ),
                                        )),
                                    Container(
                                      alignment: Alignment.topRight,
                                      padding: EdgeInsets.only(
                                          right: 0.05 * deviceSize.width),
                                      child: TextButton(
                                        child: Text(
                                          'Reset',
                                        ),
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor:
                                              Color.fromARGB(111, 201, 132, 5),
                                          onSurface: Colors.grey,
                                        ),
                                        onPressed: () {
                                          foo.changesetCaregiverType(false);
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                      side: BorderSide(color: Colors.black87)),
                  child: Consumer<BrowseCaregiversProvider>(
                    builder: (_, foo, __) => Container(
                      decoration: BoxDecoration(
                          color: BrowseCaregiversProvider.setYears
                              ? Color.fromARGB(80, 51, 65, 187)
                              : Color.fromARGB(255, 201, 199, 199),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.all(deviceSize.width * 0.01),
                            child: Consumer<BrowseCaregiversProvider>(
                              builder: (_, foo, __) => SizedBox(
                                height: deviceSize.height * 0.04,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.7,
                                      child: Text("Years of Experience",
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontSize:
                                                  deviceSize.width * 0.045)),
                                    ),
                                    IconButton(
                                        onPressed: () =>
                                            {foo.changeclickYears()},
                                        icon: !BrowseCaregiversProvider
                                                .clickYears
                                            ? Icon(
                                                Icons.arrow_downward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )
                                            : Icon(
                                                Icons.arrow_upward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          BrowseCaregiversProvider.clickYears
                              ? Column(
                                  children: [
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Column(
                                            children: [
                                              SizedBox(
                                                child: Text('More than',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.035)),
                                              ),
                                              DropdownButton(
                                                  value: dropdownMorThan,
                                                  icon: Icon(Icons
                                                      .keyboard_arrow_down),
                                                  items: itemsMorThan
                                                      .map((String items) {
                                                    return DropdownMenuItem(
                                                        value: items,
                                                        child: Text(items,
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff28306e),
                                                                fontFamily:
                                                                    'Helvetica',
                                                                fontSize: deviceSize
                                                                        .width *
                                                                    0.035)));
                                                  }).toList(),
                                                  onChanged: (val) {
                                                    setState(() {
                                                      foo.changesetYears(true);
                                                      dropdownMorThan =
                                                          val as String;
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
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.035)),
                                              ),
                                              DropdownButton(
                                                  value: dropdownIn,
                                                  icon: Icon(Icons
                                                      .keyboard_arrow_down),
                                                  items: itemsIn
                                                      .map((String items) {
                                                    return DropdownMenuItem(
                                                        value: items,
                                                        child: Text(items,
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff28306e),
                                                                fontFamily:
                                                                    'Helvetica',
                                                                fontSize: deviceSize
                                                                        .width *
                                                                    0.035)));
                                                  }).toList(),
                                                  onChanged: (val) {
                                                    setState(() {
                                                      foo.changesetYears(true);
                                                      dropdownIn =
                                                          val as String;
                                                    });
                                                  }),
                                            ],
                                          )
                                        ]),
                                    Container(
                                      alignment: Alignment.topRight,
                                      padding: EdgeInsets.only(
                                          right: 0.05 * deviceSize.width),
                                      child: TextButton(
                                        child: Text(
                                          'Reset',
                                        ),
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor:
                                              Color.fromARGB(111, 201, 132, 5),
                                          onSurface: Colors.grey,
                                        ),
                                        onPressed: () {
                                          foo.changesetYears(false);
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                      side: BorderSide(color: Colors.black87)),
                  child: Consumer<BrowseCaregiversProvider>(
                    builder: (_, foo, __) => Container(
                      decoration: BoxDecoration(
                          color: BrowseCaregiversProvider.setLanguage
                              ? Color.fromARGB(80, 51, 65, 187)
                              : Color.fromARGB(255, 201, 199, 199),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.all(deviceSize.width * 0.01),
                            child: Consumer<BrowseCaregiversProvider>(
                              builder: (_, foo, __) => SizedBox(
                                height: deviceSize.height * 0.04,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.7,
                                      child: Text(
                                          maxLines: 2,
                                          "Languages Spoken",
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontSize:
                                                  deviceSize.width * 0.045)),
                                    ),
                                    IconButton(
                                        onPressed: () =>
                                            {foo.changeclickLanguage()},
                                        icon: !BrowseCaregiversProvider
                                                .clickLanguage
                                            ? Icon(
                                                Icons.arrow_downward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )
                                            : Icon(
                                                Icons.arrow_upward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          BrowseCaregiversProvider.clickLanguage
                              ? Column(
                                  children: [
                                    Center(
                                      child: DropdownButton(
                                          value: dropdownLanguage,
                                          icon: Icon(Icons.keyboard_arrow_down),
                                          items:
                                              itemsLanguage.map((String items) {
                                            return DropdownMenuItem(
                                                value: items,
                                                child: Text(items,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff28306e),
                                                        fontFamily: 'Helvetica',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.035)));
                                          }).toList(),
                                          onChanged: (val) {
                                            setState(() {
                                              foo.changesetLanguage(true);
                                              dropdownLanguage = val as String;
                                            });
                                          }),
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      padding: EdgeInsets.only(
                                          right: 0.05 * deviceSize.width),
                                      child: TextButton(
                                        child: Text(
                                          'Reset',
                                        ),
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor:
                                              Color.fromARGB(111, 201, 132, 5),
                                          onSurface: Colors.grey,
                                        ),
                                        onPressed: () {
                                          dropdownLanguage = 'Arabic';
                                          foo.changesetLanguage(false);
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                      side: BorderSide(color: Colors.black87)),
                  child: Consumer<BrowseCaregiversProvider>(
                    builder: (_, foo, __) => Container(
                      decoration: BoxDecoration(
                          color: BrowseCaregiversProvider.setEducation
                              ? Color.fromARGB(80, 51, 65, 187)
                              : Color.fromARGB(255, 201, 199, 199),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.all(deviceSize.width * 0.01),
                            child: Consumer<BrowseCaregiversProvider>(
                              builder: (_, foo, __) => SizedBox(
                                height: deviceSize.height * 0.04,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.7,
                                      child: Text(
                                          maxLines: 2,
                                          "Education / Degre",
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontSize:
                                                  deviceSize.width * 0.045)),
                                    ),
                                    IconButton(
                                        onPressed: () =>
                                            {foo.changeclickEducation()},
                                        icon: !BrowseCaregiversProvider
                                                .clickEducation
                                            ? Icon(
                                                Icons.arrow_downward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )
                                            : Icon(
                                                Icons.arrow_upward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          BrowseCaregiversProvider.clickEducation
                              ? Column(
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value: BrowseCaregiversProvider
                                                  .noDegree,
                                              onChanged: (val) {
                                                foo.changesetEducation(true);
                                                foo.changenoDegree();
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          child: Text("No Dergre",
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value: BrowseCaregiversProvider
                                                  .brevet,
                                              onChanged: (val) {
                                                foo.changesetEducation(true);
                                                foo.changebrevet();
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          child: Text("Brovet Bp. oroquivaion1",
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value: BrowseCaregiversProvider
                                                  .highSchool,
                                              onChanged: (val) {
                                                foo.changesetEducation(true);
                                                foo.changehighSchool();
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
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value: BrowseCaregiversProvider
                                                  .master,
                                              onChanged: (val) {
                                                foo.changesetEducation(true);
                                                foo.changemaster();
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          child: Text("Mastrer\'s degre",
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value:
                                                  BrowseCaregiversProvider.PhD,
                                              onChanged: (val) {
                                                foo.changesetEducation(true);
                                                foo.changePhD();
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          child: Text("Phd",
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      padding: EdgeInsets.only(
                                          right: 0.05 * deviceSize.width),
                                      child: TextButton(
                                        child: Text(
                                          'Reset',
                                        ),
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor:
                                              Color.fromARGB(111, 201, 132, 5),
                                          onSurface: Colors.grey,
                                        ),
                                        onPressed: () {
                                          foo.changesetEducation(false);
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                      side: BorderSide(color: Colors.black87)),
                  child: Consumer<BrowseCaregiversProvider>(
                    builder: (_, foo, __) => Container(
                      decoration: BoxDecoration(
                          color: BrowseCaregiversProvider.setAdditional
                              ? Color.fromARGB(80, 51, 65, 187)
                              : Color.fromARGB(255, 201, 199, 199),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.all(deviceSize.width * 0.01),
                            child: Consumer<BrowseCaregiversProvider>(
                              builder: (_, foo, __) => SizedBox(
                                height: deviceSize.height * 0.04,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.7,
                                      child: Text(
                                          maxLines: 2,
                                          "Additional Services",
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontSize:
                                                  deviceSize.width * 0.045)),
                                    ),
                                    IconButton(
                                        onPressed: () =>
                                            {foo.changeclickAdditional()},
                                        icon: !BrowseCaregiversProvider
                                                .clickAdditional
                                            ? Icon(
                                                Icons.arrow_downward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )
                                            : Icon(
                                                Icons.arrow_upward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          BrowseCaregiversProvider.clickAdditional
                              ? Column(
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value: BrowseCaregiversProvider
                                                  .noDegree2,
                                              onChanged: (val) {
                                                foo.changesetAdditional(true);
                                                foo.changenoDegree2();
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          child: Text("No Dergre",
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value: BrowseCaregiversProvider
                                                  .brevet2,
                                              onChanged: (val) {
                                                foo.changesetAdditional(true);
                                                foo.changebrevet2();
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          child: Text("Brovet Bp. oroquivaion1",
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value: BrowseCaregiversProvider
                                                  .highSchool2,
                                              onChanged: (val) {
                                                foo.changesetAdditional(true);
                                                foo.changehighSchool2();
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
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value: BrowseCaregiversProvider
                                                  .master,
                                              onChanged: (val) {
                                                foo.changesetAdditional(true);
                                                foo.changemaster2();
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          child: Text("Mastrer\'s degre",
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value:
                                                  BrowseCaregiversProvider.PhD,
                                              onChanged: (val) {
                                                foo.changesetAdditional(true);
                                                foo.changePhD2();
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          child: Text("Phd",
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      padding: EdgeInsets.only(
                                          right: 0.05 * deviceSize.width),
                                      child: TextButton(
                                        child: Text(
                                          'Reset',
                                        ),
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor:
                                              Color.fromARGB(111, 201, 132, 5),
                                          onSurface: Colors.grey,
                                        ),
                                        onPressed: () {
                                          foo.changesetAdditional(false);
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                      side: BorderSide(color: Colors.black87)),
                  child: Consumer<BrowseCaregiversProvider>(
                    builder: (_, foo, __) => Container(
                      decoration: BoxDecoration(
                          color: BrowseCaregiversProvider.setOther
                              ? Color.fromARGB(80, 51, 65, 187)
                              : Color.fromARGB(255, 201, 199, 199),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.all(deviceSize.width * 0.01),
                            child: Consumer<BrowseCaregiversProvider>(
                              builder: (_, foo, __) => SizedBox(
                                height: deviceSize.height * 0.04,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.7,
                                      child: Text(
                                          maxLines: 2,
                                          "Other Preferences",
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontSize:
                                                  deviceSize.width * 0.045)),
                                    ),
                                    IconButton(
                                        onPressed: () =>
                                            {foo.changeclickOther()},
                                        icon: !BrowseCaregiversProvider
                                                .clickOther
                                            ? Icon(
                                                Icons.arrow_downward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )
                                            : Icon(
                                                Icons.arrow_upward,
                                                color: Color(0xff28306e),
                                                size: deviceSize.width * 0.05,
                                              )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          BrowseCaregiversProvider.clickOther
                              ? Column(
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value: BrowseCaregiversProvider
                                                  .noDegree3,
                                              onChanged: (val) {
                                                foo.changesetOther(true);
                                                foo.changenoDegree3();
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          child: Text("No Dergre",
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value: BrowseCaregiversProvider
                                                  .brevet3,
                                              onChanged: (val) {
                                                foo.changesetOther(true);

                                                foo.changebrevet3();
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          child: Text("Brovet Bp. oroquivaion1",
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value: BrowseCaregiversProvider
                                                  .highSchool3,
                                              onChanged: (val) {
                                                foo.changesetOther(true);

                                                foo.changehighSchool3();
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
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value: BrowseCaregiversProvider
                                                  .master3,
                                              onChanged: (val) {
                                                foo.changesetOther(true);

                                                foo.changemaster3();
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          child: Text("Mastrer\'s degre",
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
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
                                            builder: (_, foo, __) => Checkbox(
                                              activeColor: Colors.green,
                                              value:
                                                  BrowseCaregiversProvider.PhD3,
                                              onChanged: (val) {
                                                foo.changesetOther(true);

                                                foo.changePhD3();
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          child: Text("Phd",
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica',
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      padding: EdgeInsets.only(
                                          right: 0.05 * deviceSize.width),
                                      child: TextButton(
                                        child: Text(
                                          'Reset',
                                        ),
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor:
                                              Color.fromARGB(111, 201, 132, 5),
                                          onSurface: Colors.grey,
                                        ),
                                        onPressed: () {
                                          foo.changesetOther(false);
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(),
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
                      width: deviceSize.width * 0.6,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Consumer<BrowseCaregiversProvider>(
                            builder: (_, foo, __) => TextButton(
                              child: Text('Reset Filter'),
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor:
                                    Color.fromARGB(255, 71, 201, 188),
                                onSurface: Colors.grey,
                              ),
                              onPressed: () {
                                foo.resetFilter();
                              },
                            ),
                          ),
                          TextButton(
                            child: Text('Apply Filter'),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Color(0xff28306e),
                              onSurface: Colors.grey,
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                                BrowseCaregivers.routeName,
                              );
                            },
                          ),
                        ],
                      )),
                ),
              ],
            ),
          )),
    );
  }
}
