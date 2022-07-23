import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/location.dart';

class PostMyNeeds extends StatelessWidget {
  static const routeName = '/postMyNeeds-screen';

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Container(
            height: deviceSize.height,
            width: deviceSize.width,
            child: Location()));
  }
}
