import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/EnterAfterPost.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/automaticMatchingOption.dart';
import '../../../../models/testModel.dart';
import '../../../MyBookings/widgets/item.dart';
import '../NavBar.dart';
import 'widgets/itemCaregaverMiniProfile.dart';

class AfterBookingRequest extends StatefulWidget {
  static const routeName = '/afterBookingRequest-screen';

  @override
  _CAfterBookingRequestState createState() => _CAfterBookingRequestState();
}

class _CAfterBookingRequestState extends State<AfterBookingRequest> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.05 * deviceSize.height),
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
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                  Text(
                    'This booking will be expired on "dd/MM/yyyy", If you will not book a caregiver before this date, the booking will be cancelled.',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
              Text(
                'N caregivers have been applied to this booking',
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000)),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
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
