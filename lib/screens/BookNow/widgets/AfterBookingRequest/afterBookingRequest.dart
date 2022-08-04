import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/BookNow/bookNow.dart';
import '../../../../models/testModel.dart';
import '../../../MyBookings/widgets/item.dart';
import 'widgets/itemCaregaverMiniProfile.dart';

class AfterBookingRequestBookNow extends StatefulWidget {
  static const routeName = '/afterBookingRequestBookNow-screen';

  @override
  _CAfterBookingRequestBookNowState createState() =>
      _CAfterBookingRequestBookNowState();
}

class _CAfterBookingRequestBookNowState
    extends State<AfterBookingRequestBookNow> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.1 * deviceSize.height),
          margin: EdgeInsets.all(deviceSize.width * 0.03),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: ItemPending(
                      careModel: TestModel.testPending,
                      height: deviceSize.height * 0.18,
                      width: deviceSize.width * 0.9,
                      isPending: false,
                      isDatiel: false,
                      isRequest: true,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              SizedBox(
                width: deviceSize.width * 0.8,
                child: Text(
                  'Caregiver Responses',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: 16),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black87)),
                child: Container(
                  margin: EdgeInsets.all(deviceSize.width * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Caregiver declined with the following notes:',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: 16),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.03)),
                      SizedBox(
                        width: deviceSize.width * 0.4,
                        child: Center(
                          child: EasyRichText(
                            "Re-post",
                            patternList: [
                              EasyRichTextPattern(
                                targetString: 'Re-post',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    {
                                      {
                                        // ignore: avoid_print
                                        Navigator.of(context)
                                            .pushNamed(BookNow.routeName);
                                      }
                                    }
                                  },
                                style: const TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              SizedBox(
                width: deviceSize.width * 0.8,
                child: Text(
                  'Caregiver accepted with the following suggestions:',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: 18),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              SizedBox(
                height: deviceSize.height * 0.5,
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, count) {
                      return itemCaregaverMiniProfile(
                        height: deviceSize.height * 0.18,
                        width: deviceSize.width * 0.9,
                      );
                    }),
              ),
            ],
          )),
    );
  }
}
