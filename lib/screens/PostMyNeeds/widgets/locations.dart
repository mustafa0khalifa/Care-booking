import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/CategoriesProvider.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/gender.dart';
import 'package:provider/provider.dart';

import '../../BookingsDashboard/bookingsDashboard.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Locations extends StatefulWidget {
  static const routeName = '/location-screen';
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Locations> {
  /*late LocationData _currentPosition;
  late String _address, _dateTime;
  late GoogleMapController mapController;
  late Marker marker;
  Location location = Location();

  late GoogleMapController _controller;
  LatLng _initialcameraposition = LatLng(0.5937, 0.9629);
  */

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  bool isSwitched = true;
  String dropdownvalue = '5';
  var items = ['5', '8', '11', '14', '17', '20'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getLoc();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final scaffoldKey = GlobalKey<ScaffoldState>();
    Widget Drow() {
      return Drawer(
          child: Container(
        padding: EdgeInsets.only(top: deviceSize.height * 0.03),
        margin: EdgeInsets.all(deviceSize.height * 0.03),
        child: ListView(
          // Remove padding
          padding: EdgeInsets.zero,
          children: [
            Text(
              'The nearest caregiver is 1 Kilometer away',
              style: TextStyle(
                  color: Color(0xff28306e),
                  fontFamily: 'Helvetica',
                  fontSize: deviceSize.width * 0.04),
            ),
            Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
            Text(
              'There are  NN caregivers within     ',
              style: TextStyle(
                  color: Color(0xff28306e),
                  fontFamily: 'Helvetica',
                  fontSize: deviceSize.width * 0.04),
            ),
            Row(
              children: [
                DropdownButton(
                    value: dropdownvalue,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(value: items, child: Text(items));
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        dropdownvalue = val as String;
                      });
                    }),
                Text(
                  '  Kms',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.04),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
            Divider(
              thickness: 3,
              height: 5,
            ),
          ],
        ),
      ));
    }

    return Scaffold(
      key: scaffoldKey,
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
          "Location",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.all(
            deviceSize.width * 0.03,
          ),
          child: Scaffold(
            body: SingleChildScrollView(
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
                        width: deviceSize.width * 0.1,
                        height: deviceSize.width * 0.1,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xff28306e),
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          '2',
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
                      padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                  EasyRichText(
                    'The nearest caregiver is 1 Kilometer away',
                    patternList: [
                      EasyRichTextPattern(
                        targetString: 'The nearest caregiver is',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                      EasyRichTextPattern(
                        targetString: 'Kilometer away',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                      EasyRichTextPattern(
                        targetString: '1',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold,
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                  Row(
                    children: [
                      EasyRichText(
                        'There are 50 caregivers within     ',
                        patternList: [
                          EasyRichTextPattern(
                            targetString: 'There are',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04),
                          ),
                          EasyRichTextPattern(
                            targetString: 'caregivers within',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04),
                          ),
                          EasyRichTextPattern(
                            targetString: '50',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontWeight: FontWeight.bold,
                                fontSize: deviceSize.width * 0.04),
                          ),
                        ],
                      ),
                      Row(
                        children: [
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
                                          fontWeight: FontWeight.bold,
                                          fontSize: deviceSize.width * 0.04),
                                    ));
                              }).toList(),
                              onChanged: (val) {
                                setState(() {
                                  dropdownvalue = val as String;
                                });
                              }),
                          Text(
                            '  Kms',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Color(0xffD3CFC8),
                            ),
                            color: Color(0xffD3CFC8),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                            //more than 50% of width makes circle
                            ),
                        height: MediaQuery.of(context).size.height / 4.5,
                        width: MediaQuery.of(context).size.width,
                        child: GoogleMap(
                          onMapCreated: _onMapCreated,
                          initialCameraPosition: CameraPosition(
                            target: _center,
                            zoom: 11.0,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(deviceSize.width * 0.005),
                        height: MediaQuery.of(context).size.height / 4.5,
                        width: MediaQuery.of(context).size.width,
                        child: TextField(
                          textAlign: TextAlign.center,
                          expands: false,

                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.03,
                            color: Color(0xff495057),
                            fontFamily: 'Helvetica',
                          ),
                          decoration: InputDecoration(
                            constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.4,
                                maxHeight:
                                    MediaQuery.of(context).size.height * 0.05),
                            contentPadding: EdgeInsets.symmetric(horizontal: 2),
                            hintText: 'Search',
                            fillColor: Color.fromARGB(193, 233, 236, 239),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xffced4da), width: 1.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xffced4da), width: 1.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    BorderSide(color: Color(0xffced4da))),
                          ), //autofocus: ,
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        padding: EdgeInsets.all(deviceSize.width * 0.005),
                        height: MediaQuery.of(context).size.height / 4.5,
                        width: MediaQuery.of(context).size.width,
                        child: SizedBox(
                            height: deviceSize.height * 0.05,
                            child: Switch.adaptive(
                                value: isSwitched,
                                onChanged: (newValue) {
                                  setState(() {
                                    isSwitched = newValue;
                                  });
                                })),
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                  Text(
                    'Booking a caregiver whose default location is more than XX Km will prompt the caregiver to ask for additional transportation fees',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: deviceSize.width * 0.03),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.02)),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.orange[100],
                        border: Border.all(color: Color(0xffD3CFC8), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                        //more than 50% of width makes circle
                        ),
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(deviceSize.width * 0.01),
                      decoration: BoxDecoration(
                          color: Colors.orange[100],
                          border:
                              Border.all(color: Color(0xffD3CFC8), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(5))
                          //more than 50% of width makes circle
                          ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.note,
                                size: deviceSize.width * 0.06,
                                color: Color(0xff28306e),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: deviceSize.width * 0.01)),
                              Text(
                                'Note',
                                style: TextStyle(
                                  fontSize: deviceSize.width * 0.035,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff28306e),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Your location will be used to identify care providers near you and will be displayed on your posted care request.Your exact location will notbe shared with caregivers until lthe booking is confrmed',
                            style: TextStyle(
                              fontSize: deviceSize.width * 0.025,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff28306e),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Consumer<CategoriesProvider>(
                    builder: (_, foo, __) => Container(
                      margin: EdgeInsets.all(deviceSize.height * 0.03),
                      alignment: Alignment.centerRight,
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
                              foo.ClickLocation(),
                              Navigator.of(context).pop(),
                            },
                            child: Text(
                              "Back",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Helvetica',
                                  fontWeight: FontWeight.w500,
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.2)),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors
                                    .greenAccent //elevated btton background color
                                ),
                            onPressed: () => {
                              /*Navigator.of(context).pushNamed(
                                CareCategory.routeName,
                              ),*/
                              foo.ClickLocation(),
                              Navigator.of(context).pushNamed(
                                Gender.routeName,
                              ),
                            },
                            child: Text(
                              "Next",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Helvetica',
                                  fontWeight: FontWeight.w500,
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

/*
  void _onMapCreated(GoogleMapController _cntlr) {
    _controller = _controller;
    location.onLocationChanged.listen((l) {
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude!, l.longitude!), zoom: 15),
        ),
      );
    });
  }

  getLoc() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _currentPosition = await location.getLocation();
    _initialcameraposition =
        LatLng(_currentPosition.latitude!, _currentPosition.longitude!);
    location.onLocationChanged.listen((LocationData currentLocation) {
      print("${currentLocation.longitude} : ${currentLocation.longitude}");
      setState(() {
        _currentPosition = currentLocation;
        _initialcameraposition =
            LatLng(_currentPosition.latitude!, _currentPosition.longitude!);

        DateTime now = DateTime.now();
        //_dateTime = DateFormat('EEE d MMM kk:mm:ss ').format(now);
        _getAddress(_currentPosition.latitude!, _currentPosition.longitude!)
            .then((value) {
          setState(() {
            _address = "${value.first.addressLine}";
          });
        });
      });
    });
  }

  Future<List<Address>> _getAddress(double lat, double lang) async {
    final coordinates = new Coordinates(lat, lang);
    List<Address> add = await Geocoder.google('your_API_Key')
        .findAddressesFromCoordinates(coordinates);
    //await Geocoder.local.findAddressesFromCoordinates(coordinates);
    return add;
  }

*/

/*

 cupertino_icons: ^1.0.2
  provider: ^6.0.2
  easy_rich_text: ^1.1.0
  getwidget: ^3.0.1
  flutter_switch: ^0.3.2
  shared_preferences: ^2.0.13
  sizer: ^2.0.15
  location: 
  geocoder: ^0.2.1
  google_maps_flutter: ^2.1.10

  */
