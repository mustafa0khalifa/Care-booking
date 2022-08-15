import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/caregiverPreferences.dart';
import 'package:provider/provider.dart';
import '../../../providers/PostMyNeedsProvider/automaticMatchingOptionProvider.dart';
import '../../BookingsDashboard/bookingsDashboard.dart';
import 'NavBar.dart';
import 'caregaverClientRequest.dart';

class AutomaticMatchingOption extends StatefulWidget {
  static const routeName = '/automaticMatchingOption-screen';

  @override
  _AutomaticMatchingOptionState createState() =>
      _AutomaticMatchingOptionState();
}

class _AutomaticMatchingOptionState extends State<AutomaticMatchingOption> {
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
          "Review",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.055),
        ),
      ),
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          margin: EdgeInsets.all(deviceSize.height * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Do you want us to automatically match you with available caregivers?',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.grey)),
                  child: Container(
                    margin: EdgeInsets.all(deviceSize.width * 0.03),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "I want to browse profiles all interested candidates and select my preferred caregiver",
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.01)),
                          Text(
                            'This option is ideal when you are not in a hurry to find the caregiver (example: I am pregnant and need a nanny in 2 months) and when cases of long-term care where the personality match is very important. This option gives you full control to decide on the caregiver you want to work with. You are in the driver\'s seat!',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ]),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.grey)),
                  child: Container(
                    margin: EdgeInsets.all(deviceSize.width * 0.03),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "I want to be automatically matched with one or more caregivers based on who applies first to my request",
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.01)),
                          Text(
                            'This process has been optimized for quick matching. In this case, we will match you with the first caregiver who applies to your care request.',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.01)),
                          Text(
                            'This can be ideal when: ',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.01)),
                          Text(
                            '1. The speed of finding available caregiver(s) is more important than selecting the most preferred caregiver among a pool of interested candidates. ',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.01)),
                          Text(
                            '2. It might be tough to find a single caregiver to cover the entire booking schedule This might be important when the schedule is too long and exhausting to be filled by one caregiver (example: 24-hour shift schedule) or when the schedule is too irregular that no single caregiver might be able to commit to filling (multiple visits needed per the same day).',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ]),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Container(
                  margin: EdgeInsets.all(deviceSize.height * 0.05),
                  alignment: Alignment.bottomRight,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors
                                .orangeAccent //elevated btton background color
                            ),
                        onPressed: () => {
                          /*Navigator.of(context).pushNamed(
                                CareCategory.routeName,
                              ),*/
                          Navigator.of(context).pop()
                        },
                        child: Text("Back"),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(left: deviceSize.width * 0.2)),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors
                                .greenAccent //elevated btton background color
                            ),
                        onPressed: () => {
                          /*Navigator.of(context).pushNamed(
                                CareCategory.routeName,
                              ),*/
                          Navigator.of(context)
                              .pushNamed(CaregaverClientRequest.routeName),
                        },
                        child: Text("Next"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
