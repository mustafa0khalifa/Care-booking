import 'package:flutter/material.dart';
import 'package:flutter_application_10000/models/testModel.dart';
import '../../../FavoriteCaregivers/widgets/ItemFavoriteCaregivers.dart';
import '../NavBar.dart';
import 'careRecipients2.dart';

class CareRecipients extends StatefulWidget {
  static const routeName = '/careRecipients-screen';

  @override
  _CareRecipientsAeaState createState() => _CareRecipientsAeaState();
}

class _CareRecipientsAeaState extends State<CareRecipients> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavBar(),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.05 * deviceSize.height),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Select all the care recipients',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.05)),
              SizedBox(
                height: deviceSize.height * 0.7,
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
              Container(
                margin: EdgeInsets.all(deviceSize.height * 0.05),
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary:
                          Colors.greenAccent //elevated btton background color
                      ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(CareRecipients2.routeName);
                  },
                  child: Text("Next"),
                ),
              ),
            ],
          )),
    );
  }
}
