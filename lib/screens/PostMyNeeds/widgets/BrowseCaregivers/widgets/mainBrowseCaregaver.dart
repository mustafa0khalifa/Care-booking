import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/BrowseCaregiversProvider.dart';
import 'package:flutter_application_10000/screens/BookingsDashboard/bookingsDashboard.dart';
import 'package:provider/provider.dart';

import '../../../../../models/testModel.dart';
import '../../../../FavoriteCaregivers/widgets/ItemFavoriteCaregivers.dart';

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
    final deviceSize = MediaQuery.of(context).size;
    return Container(
        height: deviceSize.height,
        width: deviceSize.width,
        padding: EdgeInsets.only(top: 0.05 * deviceSize.height),
        child: Container(
          margin: EdgeInsets.all(deviceSize.height * 0.03),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
                  ),
                  SizedBox(
                    width: deviceSize.width * 0.8,
                    child: Text(
                        maxLines: 2,
                        "12 matched Caregivers",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: deviceSize.width * 0.15,
                        child: Text(
                          maxLines: 2,
                          "Price for",
                          style: TextStyle(
                            fontSize: deviceSize.width * 0.038,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff28306e),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: deviceSize.width * 0.2,
                        child: DropdownButton(
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
                      ),
                      SizedBox(
                        width: deviceSize.width * 0.15,
                        child: Text(
                          maxLines: 2,
                          "Sort By",
                          style: TextStyle(
                            fontSize: deviceSize.width * 0.038,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff28306e),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: deviceSize.width * 0.3,
                        child: DropdownButton(
                            value: dropdownvalue2,
                            icon: Icon(Icons.keyboard_arrow_down),
                            items: items2.map((String items) {
                              return DropdownMenuItem(
                                  value: items, child: Text(items));
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
