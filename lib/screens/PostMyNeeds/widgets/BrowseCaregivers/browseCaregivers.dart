import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/authProvider.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/BrowseCaregivers/widgets/filter.dart';
import 'package:flutter_application_10000/screens/auth/widgets/signin.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/BrowseCaregiversProvider.dart';
import 'widgets/mainBrowseCaregaver.dart';

enum AuthMode { Signup, Signin }

class BrowseCaregivers extends StatelessWidget {
  static const routeName = '/browseCaregivers-screen';

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Browse Caregaver",
              style: TextStyle(
                  color: Color(0xff28306e),
                  fontFamily: 'Helvetica-Bold',
                  fontSize: 20),
            ),
          ),
        ),
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
