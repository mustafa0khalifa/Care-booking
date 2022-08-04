import 'package:flutter/material.dart';
import 'package:flutter_application_10000/models/testModel.dart';
import 'package:flutter_application_10000/providers/careCategoryProvider.dart';

import '../../FavoriteCaregivers/widgets/ItemFavoriteCaregivers.dart';

class CaregiversInrAeaBookNow extends StatefulWidget {
  static const routeName = '/caregiversInrAeaBookNow-screen';

  @override
  _CaregiversInrAeaBookNowState createState() =>
      _CaregiversInrAeaBookNowState();
}

class _CaregiversInrAeaBookNowState extends State<CaregiversInrAeaBookNow> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.05 * deviceSize.height),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Here are some of our caregivers in your area',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.05)),
              SizedBox(
                height: deviceSize.height * 0.7,
                child: ListView.builder(
                  itemCount: 6,
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
              Container(
                margin: EdgeInsets.all(deviceSize.height * 0.05),
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary:
                          Color(0xff28306e) //elevated btton background color
                      ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(CareCategoryProvider.routCategorySelected);
                  },
                  child: Text("Next"),
                ),
              ),
            ],
          )),
    );
  }
}
