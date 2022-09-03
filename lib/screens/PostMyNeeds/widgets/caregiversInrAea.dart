import 'package:flutter/material.dart';
import 'package:flutter_application_10000/models/testModel.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/CategoriesProvider.dart';
import 'package:flutter_application_10000/providers/careCategoryProvider.dart';
import 'package:provider/provider.dart';

import '../../BookingsDashboard/bookingsDashboard.dart';
import '../../FavoriteCaregivers/widgets/ItemFavoriteCaregivers.dart';

class CaregiversInrAea extends StatefulWidget {
  static const routeName = '/caregiversInrAea-screen';

  @override
  _CaregiversInrAeaState createState() => _CaregiversInrAeaState();
}

class _CaregiversInrAeaState extends State<CaregiversInrAea> {
  @override
  Widget build(BuildContext context) {
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
          "Here you go!",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.all(0.03 * deviceSize.width),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                    width: deviceSize.width * 0.07,
                    height: deviceSize.width * 0.07,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(100)),
                    child: Text(
                      '2',
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
                      '3',
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
                      '4',
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
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              SizedBox(
                height: deviceSize.height * 0.6,
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return ItemFavoriteCaregivers(
                      height: deviceSize.height,
                      width: deviceSize.width,
                      favoriteCaregiversModel: TestModel.testFavoriteCaregivers,
                      isSelectedPage: false,
                      isInArea: true,
                    );
                  },
                ),
              ),
              Consumer<CategoriesProvider>(
                builder: (_, foo, __) => Container(
                  margin: EdgeInsets.all(deviceSize.height * 0.05),
                  alignment: Alignment.bottomRight,
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
                          Navigator.of(context).pop()
                        },
                        child: Text("Back"),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(left: deviceSize.width * 0.2)),
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
                              CareCategoryProvider.routCategorySelected),
                        },
                        child: Text("Next"),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
