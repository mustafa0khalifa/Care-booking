import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../acceptBooking.dart';

class itemCaregaverMiniProfile extends StatelessWidget {
  var width;
  var height;
  itemCaregaverMiniProfile({
    required this.width,
    required this.height,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.black87)),
      child: Container(
        margin: EdgeInsets.all(width * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: width * 0.8,
                      child: Center(
                        child: Text(
                          'Caregiver Mini Profile',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff000000)),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: height * 0.03)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width * 0.3,
                          child: Center(
                            child: EasyRichText(
                              "View Full Profile",
                              patternList: [
                                EasyRichTextPattern(
                                  targetString: 'italic',
                                  style: const TextStyle(
                                      fontStyle: FontStyle.italic),
                                ),
                                EasyRichTextPattern(
                                  targetString: 'View Full Profile',
                                  style: const TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      {
                                        {
                                          // ignore: avoid_print
                                          print("Tap Sign in");
                                        }
                                      }
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: width * 0.2)),
                        SizedBox(
                          width: width * 0.35,
                          child: Center(
                            child: EasyRichText(
                              "Ask for Documents",
                              patternList: [
                                EasyRichTextPattern(
                                  targetString: 'italic',
                                  style: const TextStyle(
                                      fontStyle: FontStyle.italic),
                                ),
                                EasyRichTextPattern(
                                  targetString: 'Ask for Documents',
                                  style: const TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      {
                                        {
                                          // ignore: avoid_print
                                          print("Tap Sign in");
                                        }
                                      }
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: height * 0.03)),
            Divider(),
            Padding(padding: EdgeInsets.only(top: height * 0.03)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: width * 0.8,
                      child: Center(
                        child: Text(
                          'Suggestions',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff000000)),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: height * 0.03)),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: width * 0.4,
                              child: Text(
                                'Budget',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: height * 0.03)),
                            SizedBox(
                              width: width * 0.4,
                              child: Text(
                                'Transportation Fees',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
                              ),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(left: width * 0.15)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: width * 0.4,
                              child: Text(
                                'Extra Services Fees',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: height * 0.03)),
                            SizedBox(
                              width: width * 0.4,
                              child: Text(
                                'Shifts Selected ',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: height * 0.03)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: width * 0.4,
                          child: Center(
                            child: EasyRichText(
                              "Accept",
                              patternList: [
                                EasyRichTextPattern(
                                  targetString: 'italic',
                                  style: const TextStyle(
                                      fontStyle: FontStyle.italic),
                                ),
                                EasyRichTextPattern(
                                  targetString: 'Accept',
                                  style: const TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      {
                                        {
                                          Navigator.of(context).pushNamed(
                                              AcceptBooking.routeName);
                                        }
                                      }
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: width * 0.15)),
                        SizedBox(
                          width: width * 0.4,
                          child: Center(
                            child: EasyRichText(
                              "Decline",
                              patternList: [
                                EasyRichTextPattern(
                                  targetString: 'italic',
                                  style: const TextStyle(
                                      fontStyle: FontStyle.italic),
                                ),
                                EasyRichTextPattern(
                                  targetString: 'Decline',
                                  style: const TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      {
                                        {
                                          // ignore: avoid_print
                                          print("Tap Sign in");
                                        }
                                      }
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
