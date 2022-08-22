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
  bool isSelected = true;
  bool clickNote1 = true;
  bool clickNote2 = false;
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
          margin: EdgeInsets.all(deviceSize.width * 0.03),
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
                      fontWeight: FontWeight.bold,
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(deviceSize.width * 0.03),
                    decoration: BoxDecoration(
                        color: isSelected ? Color(0xff28306e) : Colors.white,
                        border: Border.all(color: Color(0xffD3CFC8), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                        //more than 50% of width makes circle
                        ),
                    child: Text(
                      "I want to browse profiles all interested candidates and select my preferred caregiver",
                      style: TextStyle(
                          color: !isSelected ? Color(0xff28306e) : Colors.white,
                          fontFamily: 'Helvetica',
                          fontSize: deviceSize.width * 0.04),
                    ),
                  ),
                  onTap: () => {
                    setState(
                      () => {
                        isSelected = !isSelected,
                        clickNote1 = true,
                        clickNote2 = false,
                      },
                    )
                  },
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.orange[100],
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        height: deviceSize.width * 0.07,
                        child: IconButton(
                            onPressed: () => {
                                  setState(
                                    () => {clickNote1 = !clickNote1},
                                  )
                                },
                            icon: !clickNote1
                                ? Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Color(0xff17a2b8),
                                    size: deviceSize.width * 0.05,
                                  )
                                : Icon(
                                    Icons.keyboard_arrow_up_outlined,
                                    color: Color(0xff17a2b8),
                                    size: deviceSize.width * 0.05,
                                  )),
                      ),
                      clickNote1
                          ? ListTile(
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.note,
                                    size: deviceSize.width * 0.06,
                                    color: Color(0xff28306e),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: deviceSize.width * 0.01)),
                                  Text(
                                    'Note',
                                    style: TextStyle(
                                      fontSize: deviceSize.width * 0.035,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff28306e),
                                    ),
                                  ),
                                ],
                              ),
                              subtitle: Text(
                                'This option is ideal when you are not in a hurry to find the caregiver (example: I am pregnant and need a nanny in 2 months) and when cases of long-term care where the personality match is very important. This option gives you full control to decide on the caregiver you want to work with. You are in the driver\'s seat!',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.03),
                              ),
                              onTap: () => {
                                setState(
                                  () => {clickNote1 = !clickNote1},
                                )
                              },
                            )
                          : SizedBox()
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(deviceSize.width * 0.03),
                    decoration: BoxDecoration(
                        color: !isSelected ? Color(0xff28306e) : Colors.white,
                        border: Border.all(color: Color(0xffD3CFC8), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                        //more than 50% of width makes circle
                        ),
                    child: Text(
                      "I want to be automatically matched with one or more caregivers based on who applies first to my request",
                      style: TextStyle(
                          color: isSelected ? Color(0xff28306e) : Colors.white,
                          fontFamily: 'Helvetica',
                          fontSize: deviceSize.width * 0.04),
                    ),
                  ),
                  onTap: () => {
                    setState(
                      () => {
                        isSelected = !isSelected,
                        clickNote1 = false,
                        clickNote2 = true,
                      },
                    )
                  },
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.orange[100],
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        height: deviceSize.width * 0.07,
                        child: IconButton(
                            onPressed: () => {
                                  setState(
                                    () => {clickNote2 = !clickNote2},
                                  )
                                },
                            icon: !clickNote2
                                ? Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Color(0xff17a2b8),
                                    size: deviceSize.width * 0.05,
                                  )
                                : Icon(
                                    Icons.keyboard_arrow_up_outlined,
                                    color: Color(0xff17a2b8),
                                    size: deviceSize.width * 0.05,
                                  )),
                      ),
                      clickNote2
                          ? ListTile(
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.note,
                                    size: deviceSize.width * 0.06,
                                    color: Color(0xff28306e),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: deviceSize.width * 0.01)),
                                  Text(
                                    'Note',
                                    style: TextStyle(
                                      fontSize: deviceSize.width * 0.035,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff28306e),
                                    ),
                                  ),
                                ],
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
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
                                ],
                              ),
                              onTap: () => {
                                setState(
                                  () => {clickNote2 = !clickNote2},
                                )
                              },
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
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
