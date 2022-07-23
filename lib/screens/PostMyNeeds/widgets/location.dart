import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/careCategory.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Location extends StatefulWidget {
  static const routeName = '/location-screen';
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  bool isSwitched = true;
  String dropdownvalue = '5';
  var items = ['5', '8', '11', '14', '17', '20'];

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
        height: deviceSize.height,
        width: deviceSize.width,
        padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Tell us where you need the care',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.05)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'The nearest caregiver is 1 Kilometer away',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000)),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'There are  NN caregivers within     ',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            ),
                            DropdownButton(
                                value: dropdownvalue,
                                icon: Icon(Icons.keyboard_arrow_down),
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                      value: items, child: Text(items));
                                }).toList(),
                                onChanged: (val) {
                                  setState(() {
                                    dropdownvalue = val as String;
                                  });
                                }),
                            Text(
                              '       Kms',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            ),
                          ],
                        )
                      ],
                    ),
                    FlutterSwitch(
                      width: deviceSize.width * 0.11,
                      height: deviceSize.height * 0.025,
                      value: isSwitched,
                      activeColor: Colors.green,
                      borderRadius: 30.0,
                      showOnOff: false,
                      onToggle: (val) {
                        setState(() {
                          isSwitched = val;
                        });
                      },
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.05)),
                SizedBox(
                  width: deviceSize.width * 0.4,
                  child: TextField(
                    style: TextStyle(color: Colors.blue.shade900, fontSize: 11),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.grey)),
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 11)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.05)),
                Padding(
                  padding: EdgeInsets.all(deviceSize.width * 0.02),
                  child: SizedBox(
                      height: deviceSize.height * 0.3,
                      width: deviceSize.width * 0.94,
                      child: Image.asset(
                        'assets/images/map.jpg',
                        fit: BoxFit.cover,
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.05)),
                Text(
                  'Booking a caregiver whose default location is more than XX Km will prompt the caregiver to ask for additional transportation feesYour exact location will not be shared with caregivers until lthe booking is confirmed.Your location will be used to identify care providers near you and will be displayed on your posted care request.',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                Container(
                  margin: EdgeInsets.all(deviceSize.height * 0.05),
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Colors.greenAccent //elevated btton background color
                        ),
                    onPressed: () => {
                      Navigator.of(context).pushNamed(
                        CareCategory.routeName,
                      )
                    },
                    child: Text("Next"),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
