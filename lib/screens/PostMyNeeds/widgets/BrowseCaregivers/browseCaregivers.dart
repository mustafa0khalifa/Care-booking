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
