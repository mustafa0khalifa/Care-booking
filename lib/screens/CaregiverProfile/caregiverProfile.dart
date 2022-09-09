import 'package:date_format/date_format.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/models/testModel.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import '../../providers/profileProvider.dart';
import 'package:table_calendar/table_calendar.dart';

class CaregiverProfile extends StatefulWidget {
  static const routeName = '/caregiverProfile-screen';

  @override
  _CaregiverProfileState createState() => _CaregiverProfileState();
}

class _CaregiverProfileState extends State<CaregiverProfile> {
  late GoogleMapController mapController;
  bool isFavorite = false;
  bool clickNoteFees = false;
  bool clickNoteFees0 = false;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    Widget buildText(List<String> l, bool calculate, bool services) {
      return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: l.length,
          itemBuilder: (context, index) => !calculate
              ? !services
                  ? Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.005),
                      child: Text(l[index],
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica_Bold',
                              fontSize: deviceSize.width * 0.04)),
                    )
                  : Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.005),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.check_circle_outline,
                            size: deviceSize.width * 0.04,
                            color: Color(0xff28a745),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.02)),
                          Text(l[index],
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica_Bold',
                                  fontSize: deviceSize.width * 0.04)),
                        ],
                      ),
                    )
              : Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.005),
                  child: EasyRichText(
                    l[index],
                    defaultStyle: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica_Bold',
                        fontSize: deviceSize.width * 0.04),
                    patternList: [
                      EasyRichTextPattern(
                        targetString: 'Calculate',
                        style: TextStyle(
                            color: Color(0xff007bff),
                            fontFamily: 'Helvetica_Bold',
                            decoration: TextDecoration.underline,
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ],
                  ),
                ));
    }

    Widget buildSubText(List<String> l, bool services) {
      return Padding(
        padding: EdgeInsets.only(
            left: deviceSize.width * 0.03, top: deviceSize.height * 0.005),
        child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: l.length,
            itemBuilder: (context, index) => services
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        size: deviceSize.width * 0.04,
                        color: Color(0xff28a745),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(left: deviceSize.width * 0.02)),
                      Text(l[index],
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica_Bold',
                              fontSize: deviceSize.width * 0.035)),
                    ],
                  )
                : Text(l[index],
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
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.01),
                              color: Color(0xff17a2b8),
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                        padding: EdgeInsets.only(
                                            top: deviceSize.width * 0.01,
                                            left: deviceSize.width * 0.02,
                                            right: deviceSize.width * 0.02,
                                            bottom: deviceSize.width * 0.02),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xff17a2b8),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.phone,
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
                          child: Column(
                            children: [
                              IconButton(
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
                              ),
                              Icon(
                                Icons.warning_rounded,
                                color: Colors.white,
                                size: deviceSize.width * 0.07,
                              ),
                            ],
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
                                          width: deviceSize.width * 0.45,
                                          child: EasyRichText(
                                            "${TestModel.testCaregaverModel.age} years old",
                                            patternList: [
                                              EasyRichTextPattern(
                                                  targetString:
                                                      '${TestModel.testCaregaverModel.age} years old',
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
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                child: Image.asset(
                                              'assets/images/flebanonFlag2.jpg',
                                              scale: 25,
                                            )),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      deviceSize.width * 0.03),
                                            ),
                                            SizedBox(
                                              child: EasyRichText(
                                                "${TestModel.testCaregaverModel.distance} kms away",
                                                patternList: [
                                                  EasyRichTextPattern(
                                                      targetString:
                                                          '${TestModel.testCaregaverModel.distance} kms away',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff28306e),
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
                                          width: deviceSize.width * 0.45,
                                          child: EasyRichText(
                                            "${TestModel.testCaregaverModel.clientRef}",
                                            patternList: [
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
                                        SizedBox(
                                          child: EasyRichText(
                                            "${TestModel.testCaregaverModel.providedHoursOfCare}  provided hours of care",
                                            patternList: [
                                              EasyRichTextPattern(
                                                  targetString:
                                                      '${TestModel.testCaregaverModel.providedHoursOfCare}  provided hours of care',
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
                                          width: deviceSize.width * 0.445,
                                          child: Row(
                                            children: [
                                              Container(
                                                alignment: Alignment.centerLeft,
                                                padding: EdgeInsets.all(
                                                    deviceSize.width * 0.01),
                                                decoration: BoxDecoration(
                                                    color: Color(0xffD3CFC8),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                child: Text(
                                                    '${TestModel.testCaregaverModel.qualifications}',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontFamily:
                                                            'Helvetica_Bold',
                                                        fontSize:
                                                            deviceSize.width *
                                                                0.035)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: GFRating(
                                            color: Colors.yellow[500],
                                            borderColor: Colors.yellow[200],
                                            size: 20,
                                            value: 3,
                                            onChanged: (value) {},
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.01)),
                                    SizedBox(
                                      child: EasyRichText(
                                        "${TestModel.testCaregaverModel.aboutMe}",
                                        patternList: [
                                          EasyRichTextPattern(
                                              targetString:
                                                  '${TestModel.testCaregaverModel.aboutMe}',
                                              style: TextStyle(
                                                  color: Color(0xff28306e),
                                                  fontFamily: 'Helvetica_Bold',
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
                                    buildText(
                                        TestModel.testCaregaverModel
                                            .providedServices,
                                        false,
                                        true),
                                    buildSubText(
                                        TestModel.testCaregaverModel
                                            .supProvidedServices,
                                        false)
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
                                    buildText(
                                        TestModel.testCaregaverModel
                                            .additionalServices,
                                        false,
                                        true),
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
                                    buildText(
                                        TestModel.testCaregaverModel
                                            .ratingReviewsAndReferences,
                                        false,
                                        true),
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
                                    buildText(
                                        TestModel.testCaregaverModel.experience,
                                        false,
                                        false),
                                    buildSubText(
                                        TestModel
                                            .testCaregaverModel.supExperience,
                                        false),
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
                                    buildText(
                                        TestModel.testCaregaverModel
                                            .qualificationsEducation,
                                        false,
                                        true),
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
                                    buildText(TestModel.testCaregaverModel.fees,
                                        true, false),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.005)),
                                    Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.only(
                                          left: deviceSize.width * 0.02,
                                          right: deviceSize.width * 0.02),
                                      decoration: BoxDecoration(
                                          color: Color(0xfff2f5fa),
                                          border: Border.all(
                                              color: Color(0xffD3CFC8),
                                              width: 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))
                                          //more than 50% of width makes circle
                                          ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: deviceSize.height * 0.05,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width:
                                                      deviceSize.width * 0.73,
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Note',
                                                        style: TextStyle(
                                                          fontSize:
                                                              deviceSize.width *
                                                                  0.035,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Color(0xff28306e),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                IconButton(
                                                    onPressed: () => {
                                                          setState(
                                                            () => {
                                                              clickNoteFees0 =
                                                                  !clickNoteFees0
                                                            },
                                                          )
                                                        },
                                                    icon: !clickNoteFees0
                                                        ? Icon(
                                                            Icons
                                                                .keyboard_arrow_down_outlined,
                                                            color: Color(
                                                                0xff17a2b8),
                                                            size: deviceSize
                                                                    .width *
                                                                0.05,
                                                          )
                                                        : Icon(
                                                            Icons
                                                                .keyboard_arrow_up_outlined,
                                                            color: Color(
                                                                0xff17a2b8),
                                                            size: deviceSize
                                                                    .width *
                                                                0.05,
                                                          )),
                                              ],
                                            ),
                                          ),
                                          clickNoteFees0
                                              ? Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      width: deviceSize.width *
                                                          0.85,
                                                      child: Text(
                                                          'You will be billed per hour according to the pricing table below',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff28306e),
                                                              fontFamily:
                                                                  'Helvetica_Bold',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: deviceSize
                                                                      .width *
                                                                  0.035)),
                                                    ),
                                                    buildSubText(
                                                        TestModel
                                                            .testCaregaverModel
                                                            .supFees,
                                                        false),
                                                    Padding(
                                                        padding: EdgeInsets.only(
                                                            top: deviceSize
                                                                    .height *
                                                                0.005)),
                                                  ],
                                                )
                                              : SizedBox()
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: deviceSize.height * 0.005),
                                      child: Text('- Laboratory',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontSize:
                                                  deviceSize.width * 0.04)),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.005)),
                                    Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.only(
                                          left: deviceSize.width * 0.02,
                                          right: deviceSize.width * 0.02),
                                      decoration: BoxDecoration(
                                          color: Color(0xfff2f5fa),
                                          border: Border.all(
                                              color: Color(0xffD3CFC8),
                                              width: 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))
                                          //more than 50% of width makes circle
                                          ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: deviceSize.height * 0.05,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width:
                                                      deviceSize.width * 0.73,
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Note',
                                                        style: TextStyle(
                                                          fontSize:
                                                              deviceSize.width *
                                                                  0.035,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Color(0xff28306e),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                IconButton(
                                                    onPressed: () => {
                                                          setState(
                                                            () => {
                                                              clickNoteFees =
                                                                  !clickNoteFees
                                                            },
                                                          )
                                                        },
                                                    icon: !clickNoteFees
                                                        ? Icon(
                                                            Icons
                                                                .keyboard_arrow_down_outlined,
                                                            color: Color(
                                                                0xff17a2b8),
                                                            size: deviceSize
                                                                    .width *
                                                                0.05,
                                                          )
                                                        : Icon(
                                                            Icons
                                                                .keyboard_arrow_up_outlined,
                                                            color: Color(
                                                                0xff17a2b8),
                                                            size: deviceSize
                                                                    .width *
                                                                0.05,
                                                          )),
                                              ],
                                            ),
                                          ),
                                          clickNoteFees
                                              ? Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      width: deviceSize.width *
                                                          0.85,
                                                      child: Text(
                                                          'You will be billed per hour according to the pricing table below',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff28306e),
                                                              fontFamily:
                                                                  'Helvetica_Bold',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: deviceSize
                                                                      .width *
                                                                  0.035)),
                                                    ),
                                                    buildSubText(
                                                        TestModel
                                                            .testCaregaverModel
                                                            .supFees,
                                                        false),
                                                    Padding(
                                                        padding: EdgeInsets.only(
                                                            top: deviceSize
                                                                    .height *
                                                                0.005)),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding: EdgeInsets.all(
                                                          deviceSize.width *
                                                              0.01),
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xfff2f5fa),
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xffD3CFC8),
                                                              width: 1),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5))
                                                          //more than 50% of width makes circle
                                                          ),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Icon(
                                                                Icons.note,
                                                                size: deviceSize
                                                                        .width *
                                                                    0.04,
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: deviceSize
                                                                              .width *
                                                                          0.02)),
                                                              SizedBox(
                                                                width: deviceSize
                                                                        .width *
                                                                    0.78,
                                                                child: Text(
                                                                  'The lab fee does NOT include the lab fee and only covers the technician fee',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        deviceSize.width *
                                                                            0.025,
                                                                    color: Colors
                                                                        .red,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                        padding: EdgeInsets.only(
                                                            top: deviceSize
                                                                    .height *
                                                                0.005)),
                                                  ],
                                                )
                                              : SizedBox()
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
                                    TableCalendar(
                                      firstDay: DateTime.utc(2010, 10, 16),
                                      lastDay: DateTime.utc(2030, 3, 14),
                                      focusedDay: DateTime.now(),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.01)),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          child: Text('Booked Times',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontFamily: 'Helvetica_Bold',
                                                  fontSize: deviceSize.width *
                                                      0.035)),
                                          onTap: () => {
                                            showDialog(
                                              context: context,
                                              builder: (ctx) => AlertDialog(
                                                content: Text(
                                                  textAlign: TextAlign.center,
                                                  'Nadia Carmichael is booked during this time.\nYou cannot book her during this time',
                                                  style: TextStyle(
                                                    fontSize: deviceSize.width *
                                                        0.035,
                                                    color: Color(0xff28306e),
                                                  ),
                                                ),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(ctx).pop();
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xffD3CFC8),
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xffD3CFC8),
                                                              width: 1),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5))
                                                          //more than 50% of width makes circle
                                                          ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              14),
                                                      child: Text(
                                                        "okay",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize:
                                                              deviceSize.width *
                                                                  0.035,
                                                          color:
                                                              Color(0xff28306e),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          },
                                        ),
                                        InkWell(
                                          child: Text('Unavailable',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 116, 67, 250),
                                                  fontFamily: 'Helvetica_Bold',
                                                  fontSize: deviceSize.width *
                                                      0.035)),
                                          onTap: () => {
                                            showDialog(
                                              context: context,
                                              builder: (ctx) => AlertDialog(
                                                content: Text(
                                                  textAlign: TextAlign.center,
                                                  'Nadia Carmichael has indicated that she is NOT available during this time.\nYou can still try to send this caregiver a booking request during this time',
                                                  style: TextStyle(
                                                    fontSize: deviceSize.width *
                                                        0.035,
                                                    color: Color(0xff28306e),
                                                  ),
                                                ),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(ctx).pop();
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xffD3CFC8),
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xffD3CFC8),
                                                              width: 1),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5))
                                                          //more than 50% of width makes circle
                                                          ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              14),
                                                      child: Text(
                                                        "okay",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize:
                                                              deviceSize.width *
                                                                  0.035,
                                                          color:
                                                              Color(0xff28306e),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          },
                                        ),
                                        InkWell(
                                          child: Text('Unsure',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 202, 185, 31),
                                                  fontFamily: 'Helvetica_Bold',
                                                  fontSize: deviceSize.width *
                                                      0.035)),
                                          onTap: () => {
                                            showDialog(
                                              context: context,
                                              builder: (ctx) => AlertDialog(
                                                content: Text(
                                                  textAlign: TextAlign.center,
                                                  'Nadia Carmichael is unable to confrm her availability during this time.\nYou can send this caregiver a booking request during this time',
                                                  style: TextStyle(
                                                    fontSize: deviceSize.width *
                                                        0.035,
                                                    color: Color(0xff28306e),
                                                  ),
                                                ),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(ctx).pop();
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xffD3CFC8),
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xffD3CFC8),
                                                              width: 1),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5))
                                                          //more than 50% of width makes circle
                                                          ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              14),
                                                      child: Text(
                                                        "okay",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize:
                                                              deviceSize.width *
                                                                  0.035,
                                                          color:
                                                              Color(0xff28306e),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          },
                                        ),
                                        InkWell(
                                          child: Text('Available',
                                              style: TextStyle(
                                                  color: Color(0xff28a745),
                                                  fontFamily: 'Helvetica_Bold',
                                                  fontSize: deviceSize.width *
                                                      0.035)),
                                          onTap: () => {
                                            showDialog(
                                              context: context,
                                              builder: (ctx) => AlertDialog(
                                                content: Text(
                                                  textAlign: TextAlign.center,
                                                  'Nadia Carmichael has indicated that she is available during this time.\nYou still need to confrm her availability during this time',
                                                  style: TextStyle(
                                                    fontSize: deviceSize.width *
                                                        0.035,
                                                    color: Color(0xff28306e),
                                                  ),
                                                ),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(ctx).pop();
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xffD3CFC8),
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xffD3CFC8),
                                                              width: 1),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5))
                                                          //more than 50% of width makes circle
                                                          ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              14),
                                                      child: Text(
                                                        "okay",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize:
                                                              deviceSize.width *
                                                                  0.035,
                                                          color:
                                                              Color(0xff28306e),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          },
                                        ),
                                      ],
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.02)),
                                    EasyRichText(
                                      'Booked until End of 6 Sep 2022',
                                      defaultStyle: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica_Bold',
                                          fontSize: deviceSize.width * 0.04),
                                      patternList: [
                                        EasyRichTextPattern(
                                          targetString: '6 Sep 2022',
                                          style: TextStyle(
                                              color: Color(0xff28306e),
                                              fontFamily: 'Helvetica_Bold',
                                              fontWeight: FontWeight.bold,
                                              fontSize:
                                                  deviceSize.width * 0.04),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.01)),
                                    Text('General availability',
                                        style: TextStyle(
                                            color: Color(0xff28306e),
                                            fontFamily: 'Helvetica_Bold',
                                            fontWeight: FontWeight.bold,
                                            fontSize: deviceSize.width * 0.04)),
                                    buildSubText(
                                        TestModel.testCaregaverModel
                                            .generalAvallabillty,
                                        false),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.01)),
                                    Text('Special Remarks',
                                        style: TextStyle(
                                            color: Color(0xff28306e),
                                            fontFamily: 'Helvetica_Bold',
                                            fontWeight: FontWeight.bold,
                                            fontSize: deviceSize.width * 0.04)),
                                    buildSubText(
                                        TestModel
                                            .testCaregaverModel.specialRemarks,
                                        false),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.01)),
                                    Text('Documents',
                                        style: TextStyle(
                                            color: Color(0xff28306e),
                                            fontFamily: 'Helvetica_Bold',
                                            fontWeight: FontWeight.bold,
                                            fontSize: deviceSize.width * 0.04)),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        IconButton(
                                            onPressed: null,
                                            icon: Icon(
                                              Icons
                                                  .format_list_numbered_rounded,
                                              size: deviceSize.width * 0.06,
                                            )),
                                        IconButton(
                                            onPressed: null,
                                            icon: Icon(
                                              Icons.photo_album_outlined,
                                              size: deviceSize.width * 0.06,
                                            )),
                                        IconButton(
                                            onPressed: null,
                                            icon: Icon(
                                              Icons.credit_score_rounded,
                                              size: deviceSize.width * 0.06,
                                            )),
                                        IconButton(
                                            onPressed: null,
                                            icon: Icon(
                                              Icons.receipt_long_rounded,
                                              size: deviceSize.width * 0.06,
                                            )),
                                      ],
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: deviceSize.height * 0.01)),
                                    Text('Additional Information',
                                        style: TextStyle(
                                            color: Color(0xff28306e),
                                            fontFamily: 'Helvetica_Bold',
                                            fontWeight: FontWeight.bold,
                                            fontSize: deviceSize.width * 0.04)),
                                    buildSubText(
                                        TestModel.testCaregaverModel
                                            .additionalInformation,
                                        true),
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
                padding: EdgeInsets.only(
                    left: deviceSize.width * 0.02,
                    right: deviceSize.width * 0.02),
                child: SizedBox(
                  width: deviceSize.width * 0.9,
                  child: Text(
                      'It is the client’s responsibility to verify any educational credentials that the caregiver has provided.\nFind A Nurse is NOT responsible for any wrong information or documentation that might be submitted by any caregiver',
                      style: TextStyle(
                        fontSize: deviceSize.width * 0.035,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff28306e),
                      )),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.02)),
            ],
          )),
    );
  }
}
