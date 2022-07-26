import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/BrowseCaregiversProvider.dart';
import 'package:flutter_application_10000/screens/BookingsDashboard/bookingsDashboard.dart';
import 'package:provider/provider.dart';

import '../../../../../models/testModel.dart';
import '../../../../FavoriteCaregivers/widgets/ItemFavoriteCaregivers.dart';
import 'filter.dart';

class MainBrowseCaregaver extends StatefulWidget {
  static const routeName = '/mainBrowseCaregaver-screen';

  @override
  _MainBrowseCaregaverState createState() => _MainBrowseCaregaverState();
}

class _MainBrowseCaregaverState extends State<MainBrowseCaregaver> {
  String dropdownvalue = '8 hours';
  var items = [
    '8 hours',
    '1 hours',
    '2 hours',
    '3 hours',
    '3 hours',
    '5 hours'
  ];
  String dropdownvalue2 = 'Relevance';
  var items2 = [
    'Relevance',
  ];

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
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
            "Browse Caregivers",
            style: TextStyle(
                color: Color(0xff28306e),
                fontFamily: 'Helvetica-Bold',
                fontSize: deviceSize.width * 0.055),
          ),
        ),
        // drawer: Filter(),
        key: scaffoldKey,
        body: Container(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(
                    right: deviceSize.width * 0.02,
                    left: deviceSize.width * 0.02,
                    bottom: deviceSize.width * 0.02),
                padding: EdgeInsets.all(deviceSize.width * 0.01),
                decoration: BoxDecoration(
                    color: Color(0xfff2f5fa),
                    border: Border.all(color: Color(0xffD3CFC8), width: 1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5))
                    //more than 50% of width makes circle
                    ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          InkWell(
                            child: Container(
                                height: deviceSize.width * 0.09,
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.01),
                                decoration: BoxDecoration(
                                    color: BrowseCaregiversProvider.okFilter
                                        ? Color(0xff28306e)
                                        : Colors.white,
                                    border: Border.all(
                                        color: Color(0xff28306e), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))
                                    //more than 50% of width makes circle
                                    ),
                                alignment: Alignment.topLeft,
                                child: Icon(
                                  Icons.filter_alt_outlined,
                                  size: deviceSize.width * 0.07,
                                  color: !BrowseCaregiversProvider.okFilter
                                      ? Color(0xff28306e)
                                      : Colors.white,
                                )),
                            onTap: () => {
                              Navigator.of(context).pushNamed(
                                Filter.routeName,
                              )
                              /*
                              if (scaffoldKey.currentState!.isDrawerOpen)
                                {
                                  scaffoldKey.currentState!.closeDrawer(),
                                  //close drawer, if drawer is open
                                }
                              else
                                {
                                  BrowseCaregiversProvider.okFilter =
                                      !BrowseCaregiversProvider.okFilter,

                                  scaffoldKey.currentState!.openDrawer(),
                                  //open drawer, if drawer is closed
                                }
                           */
                            },
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.03)),
                          Row(
                            children: [
                              Container(
                                width: deviceSize.width * 0.44,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xffD3CFC8), width: 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))
                                      //more than 50% of width makes circle
                                      ),
                                  height: deviceSize.height * 0.05,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          alignment: Alignment.center,
                                          color: Color(0xff28306e),
                                          width: deviceSize.width * 0.1,
                                          height: deviceSize.height * 0.1,
                                          child: Text(
                                              maxLines: 2,
                                              "12",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Helvetica_Bold',
                                                  fontSize: deviceSize.width *
                                                      0.045))),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: deviceSize.width * 0.01)),
                                      Container(
                                        width: deviceSize.width * 0.32,
                                        alignment: Alignment.center,
                                        child: Text(
                                            maxLines: 2,
                                            "Matched caregivers",
                                            style: TextStyle(
                                                color: Color(0xff28306e),
                                                fontFamily: 'Helvetica',
                                                fontSize:
                                                    deviceSize.width * 0.03)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: deviceSize.width * 0.03)),
                              SizedBox(
                                child: Text(
                                  maxLines: 2,
                                  "Sort By",
                                  style: TextStyle(
                                    fontSize: deviceSize.width * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff28306e),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: deviceSize.width * 0.02)),
                              SizedBox(
                                child: DropdownButton(
                                    value: dropdownvalue2,
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    items: items2.map((String items) {
                                      return DropdownMenuItem(
                                          value: items,
                                          child: Text(
                                            items,
                                            style: TextStyle(
                                              fontSize: deviceSize.width * 0.03,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff28306e),
                                            ),
                                          ));
                                    }).toList(),
                                    onChanged: (val) {
                                      setState(() {
                                        dropdownvalue2 = val as String;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(top: deviceSize.height * 0.01)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: deviceSize.width * 0.07,
                                width: deviceSize.width * 0.38,
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.01),
                                decoration: BoxDecoration(
                                    color: Color(0xff28306e),
                                    border: Border.all(
                                        color: Color(0xff28306e), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))
                                    //more than 50% of width makes circle
                                    ),
                                alignment: Alignment.center,
                                child: Text('Child care (25)',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.03))),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: deviceSize.width * 0.03)),
                            Container(
                                width: deviceSize.width * 0.38,
                                height: deviceSize.width * 0.07,
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.01),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Color(0xff28306e), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))
                                    //more than 50% of width makes circle
                                    ),
                                alignment: Alignment.center,
                                child: Text('Advance nursing care (10)',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.03))),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: deviceSize.width * 0.07,
                                width: deviceSize.width * 0.38,
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.01),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Color(0xff28306e), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))
                                    //more than 50% of width makes circle
                                    ),
                                alignment: Alignment.center,
                                child: Text('Elderly care (34)',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.03))),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: deviceSize.width * 0.03)),
                            Container(
                                height: deviceSize.width * 0.07,
                                width: deviceSize.width * 0.38,
                                padding:
                                    EdgeInsets.all(deviceSize.width * 0.01),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Color(0xff28306e), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))
                                    //more than 50% of width makes circle
                                    ),
                                alignment: Alignment.center,
                                child: Text('Laboratory Services (5)',
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.03))),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
              ),
              Container(
                margin: EdgeInsets.all(deviceSize.width * 0.01),
                child: SizedBox(
                  height: deviceSize.height * 0.7,
                  child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return ItemFavoriteCaregivers(
                        height: deviceSize.height,
                        width: deviceSize.width,
                        favoriteCaregiversModel:
                            TestModel.testFavoriteCaregivers,
                        isSelectedPage: false,
                        isInArea: false,
                        isBrowse: true,
                      );
                    },
                  ),
                ),
              ),
              Consumer<BrowseCaregiversProvider>(
                builder: (_, foo, __) => Container(
                  margin: EdgeInsets.all(deviceSize.height * 0.05),
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Colors.greenAccent //elevated btton background color
                        ),
                    onPressed: () => {
                      foo.changeBrowseCaregiversMode(),
                      Navigator.of(context).pushNamed(
                        BookingsDashboard.routeName,
                      )
                    },
                    child: Text("Back !"),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
