import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/EnterAfterPost.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/automaticMatchingOption.dart';
import '../../../models/testModel.dart';
import '../../MyBookings/widgets/item.dart';
import 'NavBar.dart';

class CaregaverClientRequest extends StatefulWidget {
  static const routeName = '/caregaverClientRequest-screen';

  @override
  _CaregaverClientRequestState createState() => _CaregaverClientRequestState();
}

class _CaregaverClientRequestState extends State<CaregaverClientRequest> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavBar(),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.05 * deviceSize.height),
          margin: EdgeInsets.all(deviceSize.width * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your care request summary that will be shared with relevant caregivers will look like this: ',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
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
                  'This care request posting will expire on: dd/MM/yyyy',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  margin: EdgeInsets.all(deviceSize.height * 0.05),
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Colors.greenAccent //elevated btton background color
                        ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(EnterAfterPost.routeName);
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
