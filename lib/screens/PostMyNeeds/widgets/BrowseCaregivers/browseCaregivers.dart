import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/authProvider.dart';
import 'package:flutter_application_10000/screens/BookingsDashboard/bookingsDashboard.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/BrowseCaregivers/widgets/filter.dart';
import 'package:provider/provider.dart';

import 'widgets/mainBrowseCaregaver.dart';

enum AuthMode { Signup, Signin }

class BrowseCaregivers extends StatelessWidget {
  static const routeName = '/browseCaregivers-screen';

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        key: scaffoldKey,
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Color(0xff28306e),
            ),
            onPressed: () {
              if (scaffoldKey.currentState!.isDrawerOpen) {
                scaffoldKey.currentState!.closeDrawer();
                //close drawer, if drawer is open
              } else {
                scaffoldKey.currentState!.openDrawer();
                //open drawer, if drawer is closed
              }
            },
          ),
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
        body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          child: Consumer<AuthProvidere>(
              builder: (_, foo, __) => Center(
                    /* child: BrowseCaregiversProvider.browseCaregiversMode == 'filter'
                ? Filter()
                : MainBrowseCaregaver()),*/
                    child: MainBrowseCaregaver(),
                  )),
        ));
  }
}
