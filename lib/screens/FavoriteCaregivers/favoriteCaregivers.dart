import 'package:flutter/material.dart';
import 'package:flutter_application_10000/models/testModel.dart';

import 'widgets/ItemFavoriteCaregivers.dart';

class FavoriteCaregivers extends StatefulWidget {
  static const routeName = '/favoriteCaregivers-screen';

  @override
  _FavoriteCaregiversState createState() => _FavoriteCaregiversState();
}

class _FavoriteCaregiversState extends State<FavoriteCaregivers> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
          margin: EdgeInsets.all(deviceSize.height * 0.03),
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return ItemFavoriteCaregivers(
                height: deviceSize.height,
                width: deviceSize.width,
                favoriteCaregiversModel: TestModel.testFavoriteCaregivers,
                isSelectedPage: false,
              );
            },
          )),
    );
  }
}
