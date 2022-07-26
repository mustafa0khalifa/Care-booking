import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/auth/mainAuth.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/CategoriesProvider.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
import 'widgets/buildCaterorie.dart';
import 'widgets/reviewCaterorie.dart';

class Categories extends StatefulWidget {
  static const routeName = '/categories-screen';

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
          "Post My Needs",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
        height: deviceSize.height,
        width: deviceSize.width,
        padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
        margin: EdgeInsets.all(deviceSize.height * 0.03),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Consumer<CategoriesProvider>(
                  builder: (_, foo, __) => InkWell(
                    child: Center(
                      child: SizedBox(
                        height: deviceSize.height * 0.1,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/1x/Asset 12.png',
                                  color: CategoriesProvider.clickBuild
                                      ? Color(0xff28306e)
                                      : null,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Text('Build your care request',
                                    style: TextStyle(
                                        color: CategoriesProvider.clickBuild
                                            ? Color.fromARGB(255, 255, 255, 255)
                                            : Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.04)),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.05,
                              child: Center(
                                  child: Icon(
                                Icons.build_circle_outlined,
                                size: 28,
                                color: Color(0xff3ab284),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onLongPress: () => {foo.ClickBuild()},
                    onTap: () => {
                      foo.ClickBuild(),
                      Navigator.of(context).pushNamed(
                        BuildCategory.routeName,
                      )
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Consumer<CategoriesProvider>(
                  builder: (_, foo, __) => InkWell(
                    child: Center(
                      child: SizedBox(
                        height: deviceSize.height * 0.1,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/1x/Asset 12.png',
                                  color: CategoriesProvider.clickReview
                                      ? Color(0xff28306e)
                                      : null,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Text('Review & submit your request',
                                    style: TextStyle(
                                        color: CategoriesProvider.clickReview
                                            ? Color.fromARGB(255, 255, 255, 255)
                                            : Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.04)),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.05,
                              child: Center(
                                  child: Icon(
                                Icons.reviews_outlined,
                                size: 25,
                                color: Color(0xff3ab284),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onLongPress: () => {foo.ClickReview()},
                    onTap: () => {
                      foo.ClickReview(),
                      Navigator.of(context).pushNamed(
                        ReviewCaterorie.routeName,
                      )
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Consumer<CategoriesProvider>(
                  builder: (_, foo, __) => InkWell(
                    child: Center(
                      child: SizedBox(
                        height: deviceSize.height * 0.1,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/1x/Asset 12.png',
                                  color: CategoriesProvider.clickCreat
                                      ? Color(0xff28306e)
                                      : null,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Text('Create your account',
                                    style: TextStyle(
                                        color: CategoriesProvider.clickCreat
                                            ? Color.fromARGB(255, 255, 255, 255)
                                            : Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: deviceSize.width * 0.04)),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.05,
                              child: Center(
                                  child: Icon(
                                Icons.create_outlined,
                                size: 25,
                                color: Color(0xff3ab284),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onLongPress: () => {foo.ClickCreat()},
                    onTap: () => {
                      foo.ClickCreat(),
                      Navigator.of(context).pushNamed(
                        AuthScreen.routeName,
                      )
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              ]),
        ),
      ),
    );
  }
}
