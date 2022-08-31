import 'package:flutter/material.dart';
import 'package:flutter_application_10000/models/testModel.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
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
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: Color(0xff28306e),
            ),
            onPressed: () {
              Navigator.pushAndRemoveUntil<void>(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => BookingsDashboard()),
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Care Recipients",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.all(0.03 * deviceSize.width),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      isInArea: false,
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
