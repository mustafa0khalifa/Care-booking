import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/CategoriesProvider.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Categories/widgets/buildCaterorie.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/caregiversInrAea.dart';
import 'package:provider/provider.dart';

import '../../BookingsDashboard/bookingsDashboard.dart';

class Gender extends StatefulWidget {
  static const routeName = '/gender-screen';
  String groupValueRadio = 'val1';
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
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
          "Gender",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.all(0.03 * deviceSize.height),
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
                        width: deviceSize.width * 0.1,
                        height: deviceSize.width * 0.1,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xff28306e),
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          '3',
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
                      padding: EdgeInsets.only(top: deviceSize.height * 0.06)),
                  Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black87)),
                    child: ListTile(
                      title: Text(
                        "I prefer a male care provider",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.045),
                      ),
                      leading: Icon(
                        Icons.man,
                        size: deviceSize.width * 0.1,
                      ),
                      onTap: () => {
                        Navigator.of(context).pushNamed(
                          CaregiversInrAea.routeName,
                        )
                      },
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 0.03 * deviceSize.height)),
                  Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black87)),
                    child: ListTile(
                      title: Text(
                        "I prefer a female care provider",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.045),
                      ),
                      leading: Icon(
                        Icons.woman,
                        size: deviceSize.width * 0.1,
                      ),
                      onTap: () => {
                        Navigator.of(context).pushNamed(
                          CaregiversInrAea.routeName,
                        )
                      },
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 0.03 * deviceSize.height)),
                  Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black87)),
                    child: ListTile(
                      title: Text(
                        "It doesn’t matter",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.045),
                      ),
                      leading: Icon(
                        Icons.fiber_manual_record_outlined,
                        size: deviceSize.width * 0.1,
                      ),
                      onTap: () => {
                        Navigator.of(context).pushNamed(
                          CaregiversInrAea.routeName,
                        )
                      },
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}


/*


//next button

         Consumer<CategoriesProvider>(
                    builder: (_, foo, __) => Container(
                      margin: EdgeInsets.all(deviceSize.height * 0.05),
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors
                                .greenAccent //elevated btton background color
                            ),
                        onPressed: () {
                          foo.ClickGender();
                          Navigator.of(context)
                              .pushNamed(CaregiversInrAea.routeName);
                        },
                        child: Text("Next"),
                      ),
                    ),
                  )
          

          */