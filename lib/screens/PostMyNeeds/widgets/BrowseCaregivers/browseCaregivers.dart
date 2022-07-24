import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/authProvider.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/BrowseCaregivers/widgets/filter.dart';
import 'package:flutter_application_10000/screens/auth/widgets/signin.dart';
import 'package:flutter_application_10000/screens/auth/widgets/signup.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/BrowseCaregiversProvider.dart';

enum AuthMode { Signup, Signin }

class BrowseCaregivers extends StatelessWidget {
  static const routeName = '/browseCaregivers-screen';

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Container(
      height: deviceSize.height,
      width: deviceSize.width,
      child: Consumer<AuthProvidere>(
        builder: (_, foo, __) => Center(
            child: BrowseCaregiversProvider.browseCaregiversMode == 'filter'
                ? Filter()
                : Signin()),
      ),
    ));
  }
}
