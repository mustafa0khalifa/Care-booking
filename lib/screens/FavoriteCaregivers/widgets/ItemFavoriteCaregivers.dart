import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../../../models/favoriteCaregiversModel.dart';

class ItemFavoriteCaregivers extends StatelessWidget {
  var width;
  var height;
  FavoriteCaregiversModel favoriteCaregiversModel;
  ItemFavoriteCaregivers({
    required this.width,
    required this.height,
    required this.favoriteCaregiversModel,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.black87)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: width * 0.15,
            child: Image.asset('assets/images/profile.jpg', fit: BoxFit.cover),
          ),
          SizedBox(
            width: width * 0.65,
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
          SizedBox(
            width: width * 0.15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: null, icon: Icon(Icons.star_purple500_rounded)),
                IconButton(
                    onPressed: null, icon: Icon(Icons.date_range_outlined)),
                IconButton(onPressed: null, icon: Icon(Icons.message_outlined)),
                SizedBox(
                  height: 75,
                ),
                EasyRichText(
                  "View Profile",
                  patternList: [
                    EasyRichTextPattern(
                      targetString: 'View Profile',
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 11,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
