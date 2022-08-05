import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/budget.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/careCategory.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/gender.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/location.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/PostMyNeedsProvider/CategoriesProvider.dart';
import '../../CareRecipients/careRecipients.dart';

class CreatCaterorie extends StatefulWidget {
  static const routeName = '/creatCaterorie-screen';

  @override
  _CreatCaterorieState createState() => _CreatCaterorieState();
}

class _CreatCaterorieState extends State<CreatCaterorie> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Create your account",
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
        padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
        margin: EdgeInsets.all(deviceSize.height * 0.03),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Please choose your request",
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: 18),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.06)),
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
                                  color: CategoriesProvider.clickBudget
                                      ? Color(0xff28306e)
                                      : null,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Text('Budget',
                                    style: TextStyle(
                                        color: CategoriesProvider.clickBudget
                                            ? Color.fromARGB(255, 255, 255, 255)
                                            : Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 20)),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.05,
                              child: Center(
                                  child: Icon(
                                Icons.category_outlined,
                                size: 28,
                                color: Color(0xff3ab284),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onLongPress: () => {foo.ClickBudget()},
                    onTap: () => {
                      foo.ClickBudget(),
                      Navigator.of(context).pushNamed(
                        Budget.routeName,
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
                                  color: CategoriesProvider.clickCareRecipients
                                      ? Color(0xff28306e)
                                      : null,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.8,
                              child: Center(
                                child: Text('Care Recipients',
                                    style: TextStyle(
                                        color: CategoriesProvider
                                                .clickCareRecipients
                                            ? Color.fromARGB(255, 255, 255, 255)
                                            : Color(0xff28306e),
                                        fontFamily: 'Helvetica',
                                        fontSize: 20)),
                              ),
                            ),
                            SizedBox(
                              width: deviceSize.width * 0.05,
                              child: Center(
                                  child: Icon(
                                Icons.location_city_outlined,
                                size: 25,
                                color: Color(0xff3ab284),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onLongPress: () => {foo.ClickCareRecipients()},
                    onTap: () => {
                      foo.ClickCareRecipients(),
                      Navigator.of(context).pushNamed(
                        CareRecipients.routeName,
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
