import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/EnterAfterPost.dart';
import '../../../models/testModel.dart';
import '../../MyBookings/widgets/item.dart';
import 'afterPostingRequestBookNow.dart';

class CaregaverClientRequestBookNow extends StatefulWidget {
  static const routeName = '/caregaverClientRequestBookNow-screen';

  @override
  _CaregaverClientRequestBookNowState createState() =>
      _CaregaverClientRequestBookNowState();
}

class _CaregaverClientRequestBookNowState
    extends State<CaregaverClientRequestBookNow> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.1 * deviceSize.height),
          margin: EdgeInsets.all(deviceSize.width * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your care request summary that will be shared with XYZ will look like this: ',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: 18),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
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
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'This care request posting will expire on: 10/05/2022',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: 18),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  margin: EdgeInsets.all(deviceSize.height * 0.05),
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Color(0xff28306e) //elevated btton background color
                        ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(AfterPostingRequestBookNow.routeName);
                    },
                    child: Text("Post My Request"),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
