import 'package:date_format/date_format.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/models/testModel.dart';
import 'package:flutter_application_10000/screens/BookNow/bookNow.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import '../../providers/profileProvider.dart';

class CaregiverProfile extends StatefulWidget {
  static const routeName = '/caregiverProfile-screen';

  @override
  _CaregiverProfileState createState() => _CaregiverProfileState();
}

class _CaregiverProfileState extends State<CaregiverProfile> {
  late GoogleMapController mapController;
  bool isFavorite = false;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    Widget buildText(List<String> l) {
      return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: l.length,
          itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(top: deviceSize.height * 0.005),
                child: Text(l[index],
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica_Bold',
                        fontSize: deviceSize.width * 0.04)),
              ));
    }

    Widget buildSubText(List<String> l) {
      return Padding(
        padding: EdgeInsets.only(
            left: deviceSize.width * 0.03, top: deviceSize.height * 0.005),
        child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: l.length,
            itemBuilder: (context, index) => Text(l[index],
                style: TextStyle(
                    color: Color(0xff28306e),
                    fontFamily: 'Helvetica_Bold',
                    fontSize: deviceSize.width * 0.035))),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Caregiver Profile",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          child: ListView(
            children: [
              Container(
                  height: deviceSize.height * 0.31,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff28306e), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  child: Stack(
                    children: [
                      Container(
                        height: deviceSize.height * 0.31,
                        child: Column(
                          children: [
                            Container(
                              height: deviceSize.height * 0.17,
                              color: Color(0xff17a2b8),
                              alignment: Alignment.center,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.height * 0.01)),
                                  SizedBox(
                                    child: Text('Nadia Carmichael',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Helvetica_Bold',
                                            fontSize: deviceSize.width * 0.05)),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.height * 0.01)),
                                  SizedBox(
                                    child: Text('Beirut',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Helvetica_Bold',
                                            fontWeight: FontWeight.bold,
                                            fontSize: deviceSize.width * 0.04)),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                height: deviceSize.height * 0.12,
                                color: Colors.white,
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  width: deviceSize.width * 0.71,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: deviceSize.height * 0.05,
                                        width: deviceSize.width * 0.3,
                                        padding: EdgeInsets.all(
                                            deviceSize.width * 0.02),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xff17a2b8),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        alignment: Alignment.center,
                                        child: Text('Book Now',
                                            style: TextStyle(
                                                color: Color(0xff17a2b8),
                                                fontFamily: 'Helvetica_Bold',
                                                fontSize:
                                                    deviceSize.width * 0.04)),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: deviceSize.width * 0.05)),
                                      Container(
                                        height: deviceSize.height * 0.05,
                                        child: VerticalDivider(
                                          color: Color(
                                              0xffD3CFC8), //color of divider
                                          width: 1, //width space of divider
                                          thickness:
                                              1, //thickness of divier line
                                          //Spacing at the bottom of divider.
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: deviceSize.width * 0.05)),
                                      Container(
                                        height: deviceSize.height * 0.05,
                                        width: deviceSize.width * 0.3,
                                        padding: EdgeInsets.all(
                                            deviceSize.width * 0.02),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xff17a2b8),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.email_outlined,
                                          color: Color(0xff17a2b8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))
                              //more than 50% of width makes circle
                              ),
                          child: ClipOval(
                            child: Image.network(
                              'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                              fit: BoxFit.cover,
                              width: 90,
                              height: 90,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          height: deviceSize.height * 0.31,
                          alignment: Alignment.topRight,
                          child: IconButton(
                            onPressed: () => {
                              setState(
                                () => {
                                  isFavorite = !isFavorite,
                                },
                              )
                            },
                            icon: Icon(
                              !isFavorite
                                  ? Icons.favorite_border
                                  : Icons.favorite,
                              color: !isFavorite
                                  ? Colors.white
                                  : Color(0xff007bff),
                              size: deviceSize.width * 0.07,
                            ),
                          )),
                    ],
                  )),
              Divider(thickness: 1),
              Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Color(0xffD3CFC8))),
                child: Consumer<ProfileProvider>(
                  builder: (_, foo, __) => Container(
                    decoration: BoxDecoration(
                        color: Color(0xff17a2b8),
                        border: Border.all(color: Color(0xffD3CFC8), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                        //more than 50% of width makes circle
                        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(deviceSize.width * 0.03),
                          child: Consumer<ProfileProvider>(
                            builder: (_, foo, __) => SizedBox(
                              height: deviceSize.height * 0.04,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.7,
                                    child: Text(
                                        maxLines: 2,
                                        "About me",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Helvetica_Bold',
                                            fontSize:
                                                deviceSize.width * 0.045)),
                                  ),
                                  IconButton(
                                      onPressed: () => {foo.changeclickAbout()},
                                      icon: !ProfileProvider.clickAbout
                                          ? Icon(
                                              Icons
                                                  .keyboard_arrow_down_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )
                                          : Icon(
                                              Icons.keyboard_arrow_up_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ProfileProvider.clickAbout
                            ? Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffe9ecef),
                                    border: Border.all(
                                        color: Color(0xffD3CFC8), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))
                                    //more than 50% of width makes circle
                                    ),
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: deviceSize.width * 0.35,
                                          child: EasyRichText(
                                            "Age : ${TestModel.testCaregaverModel.age} years",
                                            patternList: [
                                              EasyRichTextPattern(
                                                  targetString: 'Age :',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily:
                                                          'Helvetica_Bold',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.04)),
                                              EasyRichTextPattern(
                                                  targetString:
                                                      '${TestModel.testCaregaverModel.age} years',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily:
                                                          'Helvetica_Bold',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.035)),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          child: EasyRichText(
                                            "Nationality : ${TestModel.testCaregaverModel.nationality}",
                                            patternList: [
                                              EasyRichTextPattern(
                                                  targetString: 'Nationality :',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily:
                                                          'Helvetica_Bold',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.04)),
                                              EasyRichTextPattern(
                                                  targetString:
                                                      '${TestModel.testCaregaverModel.nationality}',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily:
                                                          'Helvetica_Bold',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.035)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.01)),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: deviceSize.width * 0.35,
                                          child: EasyRichText(
                                            "Distance : ${TestModel.testCaregaverModel.distance} kms",
                                            patternList: [
                                              EasyRichTextPattern(
                                                  targetString: 'Distance :',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily:
                                                          'Helvetica_Bold',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.04)),
                                              EasyRichTextPattern(
                                                  targetString:
                                                      '${TestModel.testCaregaverModel.distance} kms',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily:
                                                          'Helvetica_Bold',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.035)),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          child: EasyRichText(
                                            "ClientRef : ${TestModel.testCaregaverModel.clientRef}",
                                            patternList: [
                                              EasyRichTextPattern(
                                                  targetString: 'ClientRef :',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily:
                                                          'Helvetica_Bold',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.04)),
                                              EasyRichTextPattern(
                                                  targetString:
                                                      '${TestModel.testCaregaverModel.clientRef}',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily:
                                                          'Helvetica_Bold',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.035)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.01)),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: deviceSize.width * 0.35,
                                          child: EasyRichText(
                                            "Rating : ${TestModel.testCaregaverModel.rating}",
                                            patternList: [
                                              EasyRichTextPattern(
                                                  targetString: 'Rating :',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily:
                                                          'Helvetica_Bold',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.04)),
                                              EasyRichTextPattern(
                                                  targetString:
                                                      '${TestModel.testCaregaverModel.distance} kms',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily:
                                                          'Helvetica_Bold',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.035)),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          child: EasyRichText(
                                            "provided hours: ${TestModel.testCaregaverModel.providedHoursOfCare} houres",
                                            patternList: [
                                              EasyRichTextPattern(
                                                  targetString:
                                                      'provided hours:',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily:
                                                          'Helvetica_Bold',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.04)),
                                              EasyRichTextPattern(
                                                  targetString:
                                                      '${TestModel.testCaregaverModel.providedHoursOfCare} houres',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily:
                                                          'Helvetica_Bold',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.035)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.01)),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: deviceSize.width * 0.35,
                                          child: EasyRichText(
                                            "Qualifications: ",
                                            patternList: [
                                              EasyRichTextPattern(
                                                  targetString:
                                                      'Qualifications:',
                                                  style: TextStyle(
                                                      color: Color(0xff28306e),
                                                      fontFamily:
                                                          'Helvetica_Bold',
                                                      fontSize:
                                                          deviceSize.width *
                                                              0.04)),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.all(
                                                deviceSize.width * 0.02),
                                            decoration: BoxDecoration(
                                                color: Color(0xff495057),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Text(
                                                '${TestModel.testCaregaverModel.qualifications}',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'Helvetica_Bold',
                                                    fontSize: deviceSize.width *
                                                        0.04)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.01)),
                                    SizedBox(
                                      width: deviceSize.width * 0.35,
                                      child: EasyRichText(
                                        "Biography",
                                        patternList: [
                                          EasyRichTextPattern(
                                              targetString: 'about me',
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica_Bold',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: deviceSize.width *
                                                      0.035)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1),
              Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Color(0xffD3CFC8))),
                child: Consumer<ProfileProvider>(
                  builder: (_, foo, __) => Container(
                    decoration: BoxDecoration(
                        color: Color(0xff17a2b8),
                        border: Border.all(color: Color(0xffD3CFC8), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                        //more than 50% of width makes circle
                        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(deviceSize.width * 0.03),
                          child: Consumer<ProfileProvider>(
                            builder: (_, foo, __) => SizedBox(
                              height: deviceSize.height * 0.04,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.7,
                                    child: Text(
                                        maxLines: 2,
                                        "Location",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Helvetica_Bold',
                                            fontSize:
                                                deviceSize.width * 0.045)),
                                  ),
                                  IconButton(
                                      onPressed: () =>
                                          {foo.changeclickLocation()},
                                      icon: !ProfileProvider.clickLocation
                                          ? Icon(
                                              Icons
                                                  .keyboard_arrow_down_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )
                                          : Icon(
                                              Icons.keyboard_arrow_up_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ProfileProvider.clickLocation
                            ? Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffe9ecef),
                                    border: Border.all(
                                        color: Color(0xffD3CFC8), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))
                                    //more than 50% of width makes circle
                                    ),
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: deviceSize.width * 0.35,
                                      child: EasyRichText(
                                        "${TestModel.testCaregaverModel.location}",
                                        patternList: [
                                          EasyRichTextPattern(
                                              targetString:
                                                  '${TestModel.testCaregaverModel.location}',
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica_Bold',
                                                  fontSize:
                                                      deviceSize.width * 0.04)),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.01)),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 2,
                                            color: Color(0xffD3CFC8),
                                          ),
                                          color: Color(0xffD3CFC8),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))
                                          //more than 50% of width makes circle
                                          ),
                                      height: deviceSize.height * 0.3,
                                      width: MediaQuery.of(context).size.width,
                                      child: GoogleMap(
                                        onMapCreated: _onMapCreated,
                                        initialCameraPosition: CameraPosition(
                                          target: _center,
                                          zoom: 11.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1),
              Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Color(0xffD3CFC8))),
                child: Consumer<ProfileProvider>(
                  builder: (_, foo, __) => Container(
                    decoration: BoxDecoration(
                        color: Color(0xff17a2b8),
                        border: Border.all(color: Color(0xffD3CFC8), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                        //more than 50% of width makes circle
                        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(deviceSize.width * 0.03),
                          child: Consumer<ProfileProvider>(
                            builder: (_, foo, __) => SizedBox(
                              height: deviceSize.height * 0.04,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.7,
                                    child: Text(
                                        maxLines: 2,
                                        "Provided Services",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Helvetica_Bold',
                                            fontSize:
                                                deviceSize.width * 0.045)),
                                  ),
                                  IconButton(
                                      onPressed: () =>
                                          {foo.changeclickProvided()},
                                      icon: !ProfileProvider.clickProvided
                                          ? Icon(
                                              Icons
                                                  .keyboard_arrow_down_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )
                                          : Icon(
                                              Icons.keyboard_arrow_up_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ProfileProvider.clickProvided
                            ? Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffe9ecef),
                                    border: Border.all(
                                        color: Color(0xffD3CFC8), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))
                                    //more than 50% of width makes circle
                                    ),
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    buildText(TestModel
                                        .testCaregaverModel.providedServices),
                                    buildSubText(TestModel
                                        .testCaregaverModel.supProvidedServices)
                                  ],
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1),
              Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Color(0xffD3CFC8))),
                child: Consumer<ProfileProvider>(
                  builder: (_, foo, __) => Container(
                    decoration: BoxDecoration(
                        color: Color(0xff17a2b8),
                        border: Border.all(color: Color(0xffD3CFC8), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                        //more than 50% of width makes circle
                        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(deviceSize.width * 0.03),
                          child: Consumer<ProfileProvider>(
                            builder: (_, foo, __) => SizedBox(
                              height: deviceSize.height * 0.04,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.7,
                                    child: Text(
                                        maxLines: 2,
                                        "Additional Services",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Helvetica_Bold',
                                            fontSize:
                                                deviceSize.width * 0.045)),
                                  ),
                                  IconButton(
                                      onPressed: () =>
                                          {foo.changeclickAdditional()},
                                      icon: !ProfileProvider.clickAdditional
                                          ? Icon(
                                              Icons
                                                  .keyboard_arrow_down_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )
                                          : Icon(
                                              Icons.keyboard_arrow_up_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ProfileProvider.clickAdditional
                            ? Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffe9ecef),
                                    border: Border.all(
                                        color: Color(0xffD3CFC8), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))
                                    //more than 50% of width makes circle
                                    ),
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    buildText(TestModel
                                        .testCaregaverModel.additionalServices),
                                  ],
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1),
              Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Color(0xffD3CFC8))),
                child: Consumer<ProfileProvider>(
                  builder: (_, foo, __) => Container(
                    decoration: BoxDecoration(
                        color: Color(0xff17a2b8),
                        border: Border.all(color: Color(0xffD3CFC8), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                        //more than 50% of width makes circle
                        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(deviceSize.width * 0.03),
                          child: Consumer<ProfileProvider>(
                            builder: (_, foo, __) => SizedBox(
                              height: deviceSize.height * 0.04,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.7,
                                    child: Text(
                                        maxLines: 2,
                                        "Rating, Reviews and References",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Helvetica_Bold',
                                            fontSize:
                                                deviceSize.width * 0.045)),
                                  ),
                                  IconButton(
                                      onPressed: () =>
                                          {foo.changeclickRating()},
                                      icon: !ProfileProvider.clickRating
                                          ? Icon(
                                              Icons
                                                  .keyboard_arrow_down_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )
                                          : Icon(
                                              Icons.keyboard_arrow_up_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ProfileProvider.clickRating
                            ? Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffe9ecef),
                                    border: Border.all(
                                        color: Color(0xffD3CFC8), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))
                                    //more than 50% of width makes circle
                                    ),
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    buildText(TestModel.testCaregaverModel
                                        .ratingReviewsAndReferences),
                                  ],
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1),
              Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Color(0xffD3CFC8))),
                child: Consumer<ProfileProvider>(
                  builder: (_, foo, __) => Container(
                    decoration: BoxDecoration(
                        color: Color(0xff17a2b8),
                        border: Border.all(color: Color(0xffD3CFC8), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                        //more than 50% of width makes circle
                        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(deviceSize.width * 0.03),
                          child: Consumer<ProfileProvider>(
                            builder: (_, foo, __) => SizedBox(
                              height: deviceSize.height * 0.04,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.7,
                                    child: Text(
                                        maxLines: 2,
                                        "Experience",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Helvetica_Bold',
                                            fontSize:
                                                deviceSize.width * 0.045)),
                                  ),
                                  IconButton(
                                      onPressed: () =>
                                          {foo.changeclickExperience()},
                                      icon: !ProfileProvider.clickExperience
                                          ? Icon(
                                              Icons
                                                  .keyboard_arrow_down_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )
                                          : Icon(
                                              Icons.keyboard_arrow_up_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ProfileProvider.clickExperience
                            ? Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffe9ecef),
                                    border: Border.all(
                                        color: Color(0xffD3CFC8), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))
                                    //more than 50% of width makes circle
                                    ),
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    buildText(TestModel
                                        .testCaregaverModel.experience),
                                    buildSubText(TestModel
                                        .testCaregaverModel.supExperience),
                                  ],
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1),
              Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Color(0xffD3CFC8))),
                child: Consumer<ProfileProvider>(
                  builder: (_, foo, __) => Container(
                    decoration: BoxDecoration(
                        color: Color(0xff17a2b8),
                        border: Border.all(color: Color(0xffD3CFC8), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                        //more than 50% of width makes circle
                        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(deviceSize.width * 0.03),
                          child: Consumer<ProfileProvider>(
                            builder: (_, foo, __) => SizedBox(
                              height: deviceSize.height * 0.04,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.7,
                                    child: Text(
                                        maxLines: 2,
                                        "Qualifications & education",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Helvetica_Bold',
                                            fontSize:
                                                deviceSize.width * 0.045)),
                                  ),
                                  IconButton(
                                      onPressed: () =>
                                          {foo.changeclickQualifications()},
                                      icon: !ProfileProvider.clickQualifications
                                          ? Icon(
                                              Icons
                                                  .keyboard_arrow_down_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )
                                          : Icon(
                                              Icons.keyboard_arrow_up_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ProfileProvider.clickQualifications
                            ? Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffe9ecef),
                                    border: Border.all(
                                        color: Color(0xffD3CFC8), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))
                                    //more than 50% of width makes circle
                                    ),
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    buildText(TestModel.testCaregaverModel
                                        .qualificationsEducation),
                                  ],
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1),
              Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Color(0xffD3CFC8))),
                child: Consumer<ProfileProvider>(
                  builder: (_, foo, __) => Container(
                    decoration: BoxDecoration(
                        color: Color(0xff17a2b8),
                        border: Border.all(color: Color(0xffD3CFC8), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                        //more than 50% of width makes circle
                        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(deviceSize.width * 0.03),
                          child: Consumer<ProfileProvider>(
                            builder: (_, foo, __) => SizedBox(
                              height: deviceSize.height * 0.04,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.7,
                                    child: Text(
                                        maxLines: 2,
                                        "Fees",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Helvetica_Bold',
                                            fontSize:
                                                deviceSize.width * 0.045)),
                                  ),
                                  IconButton(
                                      onPressed: () => {foo.changeclickFees()},
                                      icon: !ProfileProvider.clickFees
                                          ? Icon(
                                              Icons
                                                  .keyboard_arrow_down_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )
                                          : Icon(
                                              Icons.keyboard_arrow_up_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ProfileProvider.clickFees
                            ? Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffe9ecef),
                                    border: Border.all(
                                        color: Color(0xffD3CFC8), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))
                                    //more than 50% of width makes circle
                                    ),
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    buildText(
                                        TestModel.testCaregaverModel.fees),
                                    SizedBox(
                                      width: deviceSize.width * 0.85,
                                      child: Text(
                                          'You will be billed per hour according to the below pricing table',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontWeight: FontWeight.bold,
                                              fontSize:
                                                  deviceSize.width * 0.04)),
                                    ),
                                    buildSubText(
                                        TestModel.testCaregaverModel.supFees),
                                    SizedBox(
                                      width: deviceSize.width * 0.85,
                                      child: Text(
                                          'The lab test fee does NOT include the lab fee and only covers the technician fee Sub Category 1 - 20 USD',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontWeight: FontWeight.bold,
                                              fontSize:
                                                  deviceSize.width * 0.04)),
                                    ),
                                  ],
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1),
              Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Color(0xffD3CFC8))),
                child: Consumer<ProfileProvider>(
                  builder: (_, foo, __) => Container(
                    decoration: BoxDecoration(
                        color: Color(0xff17a2b8),
                        border: Border.all(color: Color(0xffD3CFC8), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                        //more than 50% of width makes circle
                        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(deviceSize.width * 0.03),
                          child: Consumer<ProfileProvider>(
                            builder: (_, foo, __) => SizedBox(
                              height: deviceSize.height * 0.04,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: deviceSize.width * 0.7,
                                    child: Text(
                                        maxLines: 2,
                                        "Availability",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Helvetica_Bold',
                                            fontSize:
                                                deviceSize.width * 0.045)),
                                  ),
                                  IconButton(
                                      onPressed: () =>
                                          {foo.changeclickAvailability()},
                                      icon: !ProfileProvider.clickAvailability
                                          ? Icon(
                                              Icons
                                                  .keyboard_arrow_down_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )
                                          : Icon(
                                              Icons.keyboard_arrow_up_outlined,
                                              color: Colors.white,
                                              size: deviceSize.width * 0.05,
                                            )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ProfileProvider.clickAvailability
                            ? Container(
                                width: deviceSize.width,
                                decoration: BoxDecoration(
                                    color: Color(0xffe9ecef),
                                    border: Border.all(
                                        color: Color(0xffD3CFC8), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))
                                    //more than 50% of width makes circle
                                    ),
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        'Booked until End of Last Booking Date',
                                        style: TextStyle(
                                            color: Color(0xff28306e),
                                            fontFamily: 'Helvetica_Bold',
                                            fontSize: deviceSize.width * 0.04)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.01)),
                                    Text('General availability',
                                        style: TextStyle(
                                            color: Color(0xff28306e),
                                            fontFamily: 'Helvetica_Bold',
                                            fontWeight: FontWeight.bold,
                                            fontSize: deviceSize.width * 0.04)),
                                    buildSubText(TestModel.testCaregaverModel
                                        .generalAvallabillty),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.01)),
                                    Text('Special Remarks',
                                        style: TextStyle(
                                            color: Color(0xff28306e),
                                            fontFamily: 'Helvetica_Bold',
                                            fontWeight: FontWeight.bold,
                                            fontSize: deviceSize.width * 0.04)),
                                    buildSubText(TestModel
                                        .testCaregaverModel.specialRemarks),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.01)),
                                    Text('Documents',
                                        style: TextStyle(
                                            color: Color(0xff28306e),
                                            fontFamily: 'Helvetica_Bold',
                                            fontWeight: FontWeight.bold,
                                            fontSize: deviceSize.width * 0.04)),
                                    buildSubText(
                                        TestModel.testCaregaverModel.documents),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.01)),
                                    Text('Additional Information',
                                        style: TextStyle(
                                            color: Color(0xff28306e),
                                            fontFamily: 'Helvetica_Bold',
                                            fontWeight: FontWeight.bold,
                                            fontSize: deviceSize.width * 0.04)),
                                    buildSubText(TestModel.testCaregaverModel
                                        .additionalInformation),
                                  ],
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
              Padding(
                padding: EdgeInsets.all(deviceSize.width * 0.03),
                child: SizedBox(
                  width: deviceSize.width * 0.85,
                  child: Text(
                      maxLines: 4,
                      "It is the client’s responsibility to verify any educational credentials that the caregiver has provided. Find A Nurse is NOT responsible for any wrong information or documentation that might submitted by any caregiver.",
                      style: TextStyle(
                        fontSize: deviceSize.width * 0.04,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff28306e),
                      )),
                ),
              ),
            ],
          )),
    );
  }
}

/*

  SizedBox(
                                            width: deviceSize.width * 0.4,
                                            child: TextButton(
                                              child: Text('Book Now'),
                                              onPressed: () {
                                                Navigator.of(context).pushNamed(
                                                    BookNow.routeName);
                                              },
                                            ),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: deviceSize.width * 0.1)),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: deviceSize.width * 0.4,
                                                child: Center(
                                                  child: TextButton(
                                                      child: Text(
                                                        'Message Caregiver',
                                                        style: TextStyle(
                                                          fontSize:
                                                              deviceSize.width *
                                                                  0.025,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                      ),
                                                      onPressed: null),
                                                ),
                                              ),
                                              SizedBox(
                                                width: deviceSize.width * 0.4,
                                                child: Center(
                                                  child: Text(
                                                    maxLines: 2,
                                                    'This feature is not available now',
                                                    style: TextStyle(
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.02,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromARGB(
                                                            255, 146, 22, 13)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        

                                        */
