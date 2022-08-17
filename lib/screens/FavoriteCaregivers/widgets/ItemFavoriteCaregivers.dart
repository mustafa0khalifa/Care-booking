import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/CaregiverProfile/caregiverProfile.dart';
import 'package:getwidget/getwidget.dart';
import 'package:provider/provider.dart';

import '../../../models/favoriteCaregiversModel.dart';
import '../../../providers/itemFavoriteCareProvider.dart';

class ItemFavoriteCaregivers extends StatelessWidget {
  var width;
  var height;
  FavoriteCaregiversModel favoriteCaregiversModel;
  bool isSelectedPage;
  ItemFavoriteCaregivers({
    required this.width,
    required this.height,
    required this.favoriteCaregiversModel,
    required this.isSelectedPage,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InkWell(
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(color: Color(0xffD3CFC8))),
          child: Container(
              margin: EdgeInsets.all(height * 0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: width * 0.2,
                          width: width * 0.2,
                          padding: EdgeInsets.all(1),
                          child: CircleAvatar(
                            child: ClipOval(
                              child: Image.asset(
                                favoriteCaregiversModel.imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.green, width: 3),
                          )),
                      SizedBox(
                        width: width * 0.45,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${favoriteCaregiversModel.firstName}',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: width * 0.04)),
                              Padding(
                                  padding: EdgeInsets.only(top: height * 0.01)),
                              Text('${favoriteCaregiversModel.age} years',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: width * 0.04)),
                              Padding(
                                  padding: EdgeInsets.only(top: height * 0.01)),
                              Text('${favoriteCaregiversModel.nationality}',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: width * 0.04)),
                              Padding(
                                  padding: EdgeInsets.only(top: height * 0.01)),
                              Text(
                                  '${favoriteCaregiversModel.clientReferences}',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: width * 0.04)),
                            ],
                          ),
                        ),
                      ),
                      !this.isSelectedPage
                          ? Consumer<ItemFavoriteCareProvider>(
                              builder: (_, foo, __) => IconButton(
                                  onPressed: () => {foo.changeIsFavorite()},
                                  icon: Icon(
                                    !ItemFavoriteCareProvider.isFavorite
                                        ? Icons.favorite_border_rounded
                                        : Icons.favorite,
                                    size: width * 0.1,
                                    color: Color(0xff3ab284),
                                  )))
                          : IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.add_circle_outlined,
                                size: width * 0.1,
                              ),
                            ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: height * 0.03)),
                  SizedBox(
                    width: width * 0.9,
                    child: Center(
                      child: Text(
                          '${favoriteCaregiversModel.caregiversBiography}',
                          style: TextStyle(
                              color: Color.fromARGB(255, 129, 127, 127),
                              fontFamily: 'Helvetica',
                              fontSize: width * 0.04)),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: height * 0.03)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Container(
                          padding: EdgeInsets.all(width * 0.02),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(15)),
                          alignment: Alignment.center,
                          child: Text(
                              '${favoriteCaregiversModel.qualifications}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Helvetica_Bold',
                                  fontSize: width * 0.04)),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: width * 0.06)),
                      SizedBox(
                        child: EasyRichText(
                          "Can Provide ${favoriteCaregiversModel.providedHoursofcare}h",
                          patternList: [
                            EasyRichTextPattern(
                                targetString: 'Can Provide',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: width * 0.035)),
                            EasyRichTextPattern(
                                targetString:
                                    '${favoriteCaregiversModel.providedHoursofcare}h',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * 0.035)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: height * 0.03)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: GFRating(
                          color: GFColors.SUCCESS,
                          borderColor: Color(0xff28306e),
                          size: 28,
                          value: 3,
                          onChanged: (value) {},
                        ),
                      ),
                      !this.isSelectedPage
                          ? SizedBox(
                              width: width * 0.25,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: null,
                                      icon: Icon(
                                        Icons.message_rounded,
                                        size: 30,
                                      )),
                                  IconButton(
                                      onPressed: null,
                                      icon: Icon(
                                        Icons.date_range_rounded,
                                        size: 30,
                                      ))
                                ],
                              ),
                            )
                          : EasyRichText(
                              "View Profile",
                              patternList: [
                                EasyRichTextPattern(
                                  targetString: 'View Profile',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // ignore: avoid_print
                                      Navigator.of(context).pushNamed(
                                        CaregiverProfile.routeName,
                                      );
                                    },
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: width * 0.035,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: height * 0.01))
                ],
              )),
        ),
        onTap: () => {
          Navigator.of(context).pushNamed(
            CaregiverProfile.routeName,
          )
        },
      ),
    );
  }
}
