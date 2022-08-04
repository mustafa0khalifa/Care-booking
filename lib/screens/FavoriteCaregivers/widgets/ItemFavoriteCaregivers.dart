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
      width: height * 0.4,
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: Colors.black87)),
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
                                    fontSize: 16)),
                            Padding(
                                padding: EdgeInsets.only(top: height * 0.01)),
                            Text('${favoriteCaregiversModel.age} years',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 16)),
                            Padding(
                                padding: EdgeInsets.only(top: height * 0.01)),
                            Text('${favoriteCaregiversModel.nationality}',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 16)),
                            Padding(
                                padding: EdgeInsets.only(top: height * 0.01)),
                            Text('${favoriteCaregiversModel.clientReferences}',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: 16)),
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
                            color: Color(0xffcbcbcb),
                            fontFamily: 'Helvetica',
                            fontSize: 16)),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: height * 0.03)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width * 0.35,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(
                              0xff28306e), //elevated btton background color
                        ),
                        onPressed: () => {print('ok')},
                        child: Text('${favoriteCaregiversModel.qualifications}',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Helvetica',
                                fontSize: 14)),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.1,
                      child: Center(
                        child: Text(
                            '${favoriteCaregiversModel.providedHoursofcare}',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: 14)),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.3,
                      child: Center(
                        child: GFRating(
                          color: GFColors.SUCCESS,
                          borderColor: Color(0xff28306e),
                          size: 22,
                          value: 3,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: height * 0.03)),
                !this.isSelectedPage
                    ? SizedBox(
                        width: width * 0.25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: null,
                                icon: Icon(Icons.message_rounded)),
                            IconButton(
                                onPressed: null,
                                icon: Icon(Icons.date_range_rounded))
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
                            style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 11,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                Padding(padding: EdgeInsets.only(top: height * 0.01))
              ],
            )),
      ),
    );
  }
}

/*


 Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: width * 0.15,
                child: Image.asset(favoriteCaregiversModel.imageUrl,
                    fit: BoxFit.cover),
              ),
              SizedBox(
                width: width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '${this.favoriteCaregiversModel.firstName}',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),
                    ),
                    Text(
                      '${this.favoriteCaregiversModel.age}',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),
                    ),
                    Text(
                      '${this.favoriteCaregiversModel.nationality}',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),
                    ),
                    Text(
                      '${this.favoriteCaregiversModel.clientReferences}',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),
                    ),
                    Text(
                      '${this.favoriteCaregiversModel.caregiversBiography}',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),
                    ),
                    Text(
                      '${this.favoriteCaregiversModel.qualifications}',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),
                    ),
                    Text(
                      '${this.favoriteCaregiversModel.distance}',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),
                    ),
                    GFRating(
                      color: GFColors.SUCCESS,
                      borderColor: GFColors.SUCCESS,
                      size: GFSize.SMALL,
                      value: 3,
                      onChanged: (value) {},
                    ),
                    Text(
                      '${this.favoriteCaregiversModel.providedHoursofcare}',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),
                    ),
                  ],
                ),
              ),
              !this.isSelectedPage
                  ? SizedBox(
                      width: width * 0.15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: null,
                              icon: Icon(Icons.star_purple500_rounded)),
                          IconButton(
                              onPressed: null,
                              icon: Icon(Icons.date_range_outlined)),
                          IconButton(
                              onPressed: null,
                              icon: Icon(Icons.message_outlined)),
                          SizedBox(
                            height: 75,
                          ),
                          EasyRichText(
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
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : SizedBox(
                      width: width * 0.15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: null,
                              icon: Icon(Icons.add_circle_outlined)),
                          SizedBox(
                            height: height * 0.23,
                          ),
                          EasyRichText(
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
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: height * 0.01))
                        ],
                      ),
                    ),
            ],
          ),
     

     */
