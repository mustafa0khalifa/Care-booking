import 'package:flutter/material.dart';
import '../../BookingsDashboard/bookingsDashboard.dart';
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
  String radioVal = '1';
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
          "Automatic Matching",
          style: TextStyle(
              color: Color(0xff28306e),
              fontFamily: 'Helvetica-Bold',
              fontSize: deviceSize.width * 0.05),
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
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                InkWell(
                  child: Container(
                    height: deviceSize.height * 0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: deviceSize.height * 0.07,
                          decoration: BoxDecoration(
                              color: Color(0xffD3CFC8),
                              border: Border.all(
                                  color: Color(0xffD3CFC8), width: 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5))
                              //more than 50% of width makes circle
                              ),
                          child: Radio(
                              activeColor: Colors.greenAccent,
                              value: '1',
                              groupValue: radioVal,
                              onChanged: (value) {
                                setState(
                                  () => {
                                    isSelected = !isSelected,
                                    radioVal = '1',
                                    clickNote1 = true,
                                    clickNote2 = false,
                                  },
                                );
                              }),
                        ),
                        Container(
                          height: deviceSize.height * 0.07,
                          padding: EdgeInsets.all(deviceSize.width * 0.01),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color:
                                  isSelected ? Color(0xff28306e) : Colors.white,
                              border: Border.all(
                                  color: Color(0xffD3CFC8), width: 1),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5))
                              //more than 50% of width makes circle
                              ),
                          child: SizedBox(
                            width: deviceSize.width * 0.78,
                            child: Text(
                              "I want to browse profiles all interested candidates and select my preferred caregiver",
                              style: TextStyle(
                                  color: !isSelected
                                      ? Color(0xff28306e)
                                      : Colors.white,
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => {
                    setState(
                      () => {
                        isSelected = !isSelected,
                        radioVal = '1',
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
                  padding: EdgeInsets.all(deviceSize.width * 0.01),
                  decoration: BoxDecoration(
                      color: Color(0xfff2f5fa),
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  child: Column(
                    children: [
                      Container(
                        height: deviceSize.height * 0.05,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.78,
                              child: Row(
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
                            ),
                            IconButton(
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
                          ],
                        ),
                      ),
                      clickNote1
                          ? Text(
                              'This option is ideal when you are not in a hurry to find the caregiver (example: I am pregnant and need a nanny in 2 months) and when cases of long-term care where the personality match is very important. This option gives you full control to decide on the caregiver you want to work with. You are in the driver\'s seat!',
                              style: TextStyle(
                                fontSize: deviceSize.width * 0.025,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff28306e),
                              ),
                            )
                          : SizedBox()
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                InkWell(
                  child: Container(
                    height: deviceSize.height * 0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: deviceSize.height * 0.07,
                          decoration: BoxDecoration(
                              color: Color(0xffD3CFC8),
                              border: Border.all(
                                  color: Color(0xffD3CFC8), width: 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5))
                              //more than 50% of width makes circle
                              ),
                          child: Radio(
                              activeColor: Colors.greenAccent,
                              value: '2',
                              groupValue: radioVal,
                              onChanged: (value) {
                                setState(
                                  () => {
                                    isSelected = !isSelected,
                                    radioVal = '2',
                                    clickNote1 = false,
                                    clickNote2 = true,
                                  },
                                );
                              }),
                        ),
                        Container(
                          height: deviceSize.height * 0.07,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(deviceSize.width * 0.01),
                          decoration: BoxDecoration(
                              color: !isSelected
                                  ? Color(0xff28306e)
                                  : Colors.white,
                              border: Border.all(
                                  color: Color(0xffD3CFC8), width: 1),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5))
                              //more than 50% of width makes circle
                              ),
                          child: SizedBox(
                            width: deviceSize.width * 0.78,
                            child: Text(
                              "I want to be automatically matched with one or more caregivers based on who applies first to my request",
                              style: TextStyle(
                                  color: isSelected
                                      ? Color(0xff28306e)
                                      : Colors.white,
                                  fontFamily: 'Helvetica',
                                  fontSize: deviceSize.width * 0.035),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () => {
                    setState(
                      () => {
                        isSelected = !isSelected,
                        radioVal = '2',
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
                  padding: EdgeInsets.all(deviceSize.width * 0.01),
                  decoration: BoxDecoration(
                      color: Color(0xfff2f5fa),
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  child: Column(
                    children: [
                      Container(
                        height: deviceSize.height * 0.05,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.78,
                              child: Row(
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
                            ),
                            IconButton(
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
                          ],
                        ),
                      ),
                      clickNote2
                          ? Column(
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
                            )
                          : SizedBox()
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
