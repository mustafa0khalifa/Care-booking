import 'package:flutter/material.dart';
import 'package:flutter_application_10000/models/testModel.dart';
import '../../../FavoriteCaregivers/widgets/ItemFavoriteCaregivers.dart';
import 'careRecipients2BookNow.dart';

class CareRecipientsBookNow extends StatefulWidget {
  static const routeName = '/careRecipientsBookNow-screen';

  @override
  _CareRecipientsAeaBookNowState createState() =>
      _CareRecipientsAeaBookNowState();
}

class _CareRecipientsAeaBookNowState extends State<CareRecipientsBookNow> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.1 * deviceSize.height),
          margin: EdgeInsets.all(deviceSize.height * 0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Select all the care recipients',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica_Bold',
                      fontSize: 20),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.05)),
              SizedBox(
                height: deviceSize.height * 0.6,
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return ItemFavoriteCaregivers(
                      height: deviceSize.height,
                      width: deviceSize.width,
                      favoriteCaregiversModel: TestModel.testFavoriteCaregivers,
                      isSelectedPage: true,
                    );
                  },
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.05)),
              Container(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary:
                          Colors.greenAccent //elevated btton background color
                      ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(CareRecipients2BookNow.routeName);
                  },
                  child: Text("Next"),
                ),
              ),
            ],
          )),
    );
  }
}
