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
            "Browse Caregaver",
            style: TextStyle(
                color: Color(0xff28306e),
                fontFamily: 'Helvetica-Bold',
                fontSize: deviceSize.width * 0.055),
          ),
        ),
        drawer: Filter(),
        key: scaffoldKey,
        body: Container(
          margin: EdgeInsets.all(deviceSize.width * 0.01),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: deviceSize.height * 0.1,
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: deviceSize.height * 0.05,
                          child: IconButton(
                              onPressed: () {
                                if (scaffoldKey.currentState!.isDrawerOpen) {
                                  scaffoldKey.currentState!.closeDrawer();
                                  //close drawer, if drawer is open
                                } else {
                                  scaffoldKey.currentState!.openDrawer();
                                  //open drawer, if drawer is closed
                                }
                              },
                              icon: Icon(
                                Icons.filter_alt_outlined,
                                size: deviceSize.width * 0.07,
                                color: Color(0xff28306e),
                              )),
                        ),
                      ),
                      Container(
                        width: deviceSize.width * 0.45,
                        height: deviceSize.height * 0.1,
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(top: deviceSize.height * 0.01),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xffD3CFC8), width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                              //more than 50% of width makes circle
                              ),
                          height: deviceSize.height * 0.05,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                          fontSize: deviceSize.width * 0.045))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: deviceSize.width * 0.01)),
                              SizedBox(
                                width: deviceSize.width * 0.32,
                                child: Text(
                                    maxLines: 2,
                                    "matched Caregivers",
                                    style: TextStyle(
                                        color: Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.035)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(left: deviceSize.width * 0.03)),
                      Padding(
                        padding: EdgeInsets.only(top: deviceSize.width * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Text(
                                maxLines: 2,
                                "Price for",
                                style: TextStyle(
                                  fontSize: deviceSize.width * 0.03,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff28306e),
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: deviceSize.width * 0.08)),
                            SizedBox(
                              child: Text(
                                maxLines: 2,
                                "Sort By",
                                style: TextStyle(
                                  fontSize: deviceSize.width * 0.03,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff28306e),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(left: deviceSize.width * 0.03)),
                      Padding(
                        padding: EdgeInsets.only(top: deviceSize.height * 0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              child: DropdownButton(
                                  value: dropdownvalue,
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                        value: items,
                                        child: Text(
                                          items,
                                          style: TextStyle(
                                            fontSize: deviceSize.width * 0.025,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff28306e),
                                          ),
                                        ));
                                  }).toList(),
                                  onChanged: (val) {
                                    setState(() {
                                      dropdownvalue = val as String;
                                    });
                                  }),
                            ),
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
                                            fontSize: deviceSize.width * 0.025,
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
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: deviceSize.height * 0.7,
                child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return ItemFavoriteCaregivers(
                      height: deviceSize.height,
                      width: deviceSize.width,
                      favoriteCaregiversModel: TestModel.testFavoriteCaregivers,
                      isSelectedPage: false,
                    );
                  },
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
