import 'package:flutter/material.dart';

import 'widgets/careCategoryBookNow.dart';

class BookNow extends StatelessWidget {
  static const routeName = '/bookNow-screen';

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: CareCategoryBookNow(),
    );
  }
}
