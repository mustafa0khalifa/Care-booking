import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/authProvider.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/NavBar.dart';

import 'BrowseCaregivers/browseCaregivers.dart';

class CompleteYourRequest extends StatefulWidget {
  static const routeName = '/completeYourRequest-screen';

  @override
  _CompleteYourRequestState createState() => _CompleteYourRequestState();
}

class _CompleteYourRequestState extends State<CompleteYourRequest> {
  String Fidropdownvalue = 'Governorate';
  var items1 = ['Governorate'];
  String Sedropdownvalue = 'District';
  var items2 = ['District'];
  String Thdropdownvalue = 'Town';
  var items3 = ['Town'];
  String Foudropdownvalue = 'Street';
  var items4 = ['Street'];
  String Fivdropdownvalue = 'Building';
  var items5 = ['Building'];
  String Sixdropdownvalue = 'Floor';
  var items6 = ['Floor'];

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    AuthProvidere.fromPostMyNeeds = false;
    return Scaffold(
      drawer: NavBar(),
      body: Container(
        height: deviceSize.height,
        width: deviceSize.width,
        padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
        margin: EdgeInsets.all(deviceSize.height * 0.03),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                width: deviceSize.width * 0.9,
                child: Center(
                  child: Text(
                    maxLines: 3,
                    "Complete your Request",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000)),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              SizedBox(
                width: deviceSize.width * 0.9,
                child: Text(
                  maxLines: 10,
                  "Fill care recipients address in details",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000)),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.3,
                            child: DropdownButton(
                                value: Fidropdownvalue,
                                icon: Icon(Icons.keyboard_arrow_down),
                                items: items1.map((String items) {
                                  return DropdownMenuItem(
                                      value: items, child: Text(items));
                                }).toList(),
                                onChanged: (val) {
                                  setState(() {
                                    Fidropdownvalue = val as String;
                                  });
                                }),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.3,
                            child: DropdownButton(
                                value: Sedropdownvalue,
                                icon: Icon(Icons.keyboard_arrow_down),
                                items: items2.map((String items) {
                                  return DropdownMenuItem(
                                      value: items, child: Text(items));
                                }).toList(),
                                onChanged: (val) {
                                  setState(() {
                                    Sedropdownvalue = val as String;
                                  });
                                }),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.3,
                            child: DropdownButton(
                                value: Thdropdownvalue,
                                icon: Icon(Icons.keyboard_arrow_down),
                                items: items3.map((String items) {
                                  return DropdownMenuItem(
                                      value: items, child: Text(items));
                                }).toList(),
                                onChanged: (val) {
                                  setState(() {
                                    Thdropdownvalue = val as String;
                                  });
                                }),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.3,
                            child: DropdownButton(
                                value: Foudropdownvalue,
                                icon: Icon(Icons.keyboard_arrow_down),
                                items: items4.map((String items) {
                                  return DropdownMenuItem(
                                      value: items, child: Text(items));
                                }).toList(),
                                onChanged: (val) {
                                  setState(() {
                                    Foudropdownvalue = val as String;
                                  });
                                }),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: deviceSize.width * 0.3,
                            child: DropdownButton(
                                value: Fivdropdownvalue,
                                icon: Icon(Icons.keyboard_arrow_down),
                                items: items5.map((String items) {
                                  return DropdownMenuItem(
                                      value: items, child: Text(items));
                                }).toList(),
                                onChanged: (val) {
                                  setState(() {
                                    Fivdropdownvalue = val as String;
                                  });
                                }),
                          ),
                          SizedBox(
                            width: deviceSize.width * 0.3,
                            child: DropdownButton(
                                value: Sixdropdownvalue,
                                icon: Icon(Icons.keyboard_arrow_down),
                                items: items6.map((String items) {
                                  return DropdownMenuItem(
                                      value: items, child: Text(items));
                                }).toList(),
                                onChanged: (val) {
                                  setState(() {
                                    Sixdropdownvalue = val as String;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ],
                  )),
              SizedBox(
                width: deviceSize.width * 0.9,
                child: Text(
                  maxLines: 10,
                  "Details",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(deviceSize.height * 0.03),
                child: SizedBox(
                  width: deviceSize.width * 0.6,
                  child: TextField(
                    style: TextStyle(color: Colors.blue.shade900, fontSize: 11),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.grey)),
                        hintText: '',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 11)),
                  ),
                ),
              ),
              SizedBox(
                width: deviceSize.width * 0.9,
                child: Text(
                  maxLines: 10,
                  "Are there any contacts (other than you) that we should contact in case of emergency? (Optional)",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000)),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.black87)),
                        child: Container(
                          margin: EdgeInsets.all(deviceSize.width * 0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: deviceSize.width * 0.3,
                                child: Text(
                                  maxLines: 10,
                                  "Contact 1",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff000000)),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.03),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.3,
                                    child: Text(
                                      maxLines: 10,
                                      "Name",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.4,
                                    child: TextField(
                                      style: TextStyle(
                                          color: Colors.blue.shade900,
                                          fontSize: 11),
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.01),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.3,
                                    child: Text(
                                      maxLines: 10,
                                      "Phone Number",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.4,
                                    child: TextField(
                                      style: TextStyle(
                                          color: Colors.blue.shade900,
                                          fontSize: 11),
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                          hintText: '+ 961',
                                          hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 11)),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.black87)),
                        child: Container(
                          margin: EdgeInsets.all(deviceSize.width * 0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: deviceSize.width * 0.3,
                                child: Text(
                                  maxLines: 10,
                                  "Contact 2",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff000000)),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.03),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.3,
                                    child: Text(
                                      maxLines: 10,
                                      "Name",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.4,
                                    child: TextField(
                                      style: TextStyle(
                                          color: Colors.blue.shade900,
                                          fontSize: 11),
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.01),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.3,
                                    child: Text(
                                      maxLines: 10,
                                      "Phone Number",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: deviceSize.width * 0.4,
                                    child: TextField(
                                      style: TextStyle(
                                          color: Colors.blue.shade900,
                                          fontSize: 11),
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                          hintText: '+ 961',
                                          hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 11)),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              Container(
                margin: EdgeInsets.all(deviceSize.height * 0.05),
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary:
                          Colors.greenAccent //elevated btton background color
                      ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(BrowseCaregivers.routeName);
                  },
                  child: Text("Next"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
