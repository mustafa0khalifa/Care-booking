import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/careCategory.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../providers/careCategoryProvider.dart';
import '../../../providers/careCategoryProviderBokNow.dart';

class WhereYouNeedBookNow extends StatefulWidget {
  static const routeName = '/whereYouNeed-screen';
  @override
  _WhereYouNeedStateBookNow createState() => _WhereYouNeedStateBookNow();
}

class _WhereYouNeedStateBookNow extends State<WhereYouNeedBookNow> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: deviceSize.height,
        width: deviceSize.width,
        margin: EdgeInsets.all(
          deviceSize.width * 0.03,
        ),
        padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: deviceSize.width * 0.8,
                child: Text(
                  'Confirm the location where you need the care',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica_Bold',
                      fontSize: 24),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              Container(
                  child: SizedBox(
                      height: deviceSize.height * 0.3,
                      width: deviceSize.width * 0.94,
                      child: Image.asset(
                        'assets/images/map.jpg',
                        fit: BoxFit.cover,
                      )),
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Color(0xff28306e), width: 3),
                  )),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              Text(
                'Booking a caregiver whose default location is more than XX Km will prompt the caregiver to ask for additional transportation fees'
                'Your exact location will not be shared with caregivers until lthe booking is confirmed.'
                'Your location will be used to identify care providers near you and will be displayed on your posted care request.',
                style: TextStyle(
                    color: Color(0xff28306e),
                    fontFamily: 'Helvetica',
                    fontSize: 16),
              ),
              Container(
                margin: EdgeInsets.all(deviceSize.height * 0.05),
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary:
                          Color(0xff28306e) //elevated btton background color
                      ),
                  onPressed: () => {
                    Navigator.of(context).pushNamed(
                      CareCategoryBookNowProvider.routCategorySelected,
                    )
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
