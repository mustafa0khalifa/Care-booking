import 'package:flutter/material.dart';
import 'package:flutter_application_10000/models/testModel.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
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
          padding: EdgeInsets.only(top: 0.05 * deviceSize.height),
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
