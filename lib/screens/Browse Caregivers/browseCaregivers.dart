import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/authProvider.dart';
import 'package:provider/provider.dart';

import '../../theme/style.dart';
import '../../providers/authProvider.dart';

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
        child: Center(
          child: Text('Browse Caregivers Page'),
        ),
      ),
    );
  }
}
