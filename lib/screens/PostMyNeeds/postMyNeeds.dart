import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/location.dart';

import 'widgets/NavBar.dart';

class PostMyNeeds extends StatelessWidget {
  static const routeName = '/postMyNeeds-screen';

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      drawer: NavBar(),
      body: Location(),
    );
  }
}
