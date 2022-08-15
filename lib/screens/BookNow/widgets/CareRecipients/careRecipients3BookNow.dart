import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/careRecipientsProvider.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
import '../myCareRequestSummaryBookNow.dart';

class CareRecipients3BookNow extends StatefulWidget {
  static const routeName = '/careRecipients3BookNow-screen';

  @override
  _CareRecipientsAeaBookNowState createState() =>
      _CareRecipientsAeaBookNowState();
}

class _CareRecipientsAeaBookNowState extends State<CareRecipients3BookNow> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    String dropdownvalue = 'My parent';
    var items = ['My parent', 'Myself', 'My child', 'Other'];
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
          margin: EdgeInsets.all(deviceSize.width * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.02),
                ),
                Text(
                  'Tell us more about the care recipients',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.02),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.5,
                          child: Text(
                            '{Care Recipient} Full Name',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.4,
                          child: TextField(
                            style: TextStyle(
                                color: Colors.blue.shade900, fontSize: 11),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.grey)),
                                hintText: '',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                    fontSize: 11)),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(deviceSize.height * 0.005),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Text(
                        'We will not share this information with caregivers until after the booking is confirmed.',
                        style: TextStyle(
                            fontSize: deviceSize.width * 0.025,
                            fontWeight: FontWeight.w300,
                            color: Color.fromARGB(255, 5, 107, 36)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.02),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.5,
                          child: Text(
                            '{Care Recipient} Date of Birth',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.4,
                          child: TextField(
                            style: TextStyle(
                                color: Colors.blue.shade900, fontSize: 11),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.grey)),
                                hintText: ' / / /',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                    fontSize: 11)),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(deviceSize.height * 0.005),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Text(
                        'We will not share this information with caregivers until after the booking is confirmed.',
                        style: TextStyle(
                            fontSize: deviceSize.width * 0.025,
                            fontWeight: FontWeight.w300,
                            color: Color.fromARGB(255, 5, 107, 36)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.02),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.4,
                          child: Consumer<CareRecipientsProvider>(
                            builder: (_, foo, __) => ListTile(
                                title: Text(
                                  "Male",
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.04),
                                ),
                                leading: Radio(
                                    activeColor: Colors.greenAccent,
                                    value: 'Male',
                                    groupValue:
                                        CareRecipientsProvider.genderGroub,
                                    onChanged: (value) {
                                      foo.changeGenderGroub(value as String);
                                    })),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.4,
                          child: Consumer<CareRecipientsProvider>(
                            builder: (_, foo, __) => ListTile(
                                title: Text(
                                  "Female",
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.04),
                                ),
                                leading: Radio(
                                    activeColor: Colors.greenAccent,
                                    value: 'Female',
                                    groupValue:
                                        CareRecipientsProvider.genderGroub,
                                    onChanged: (value) {
                                      foo.changeGenderGroub(value as String);
                                    })),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(deviceSize.height * 0.005),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Text(
                        'Gender of your care recipient will be included  in the care request to help caregivers.',
                        style: TextStyle(
                            fontSize: deviceSize.width * 0.025,
                            fontWeight: FontWeight.w300,
                            color: Color.fromARGB(255, 5, 107, 36)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.02),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.4,
                          child: Text(
                            '{Care Recipient} Weight',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.04),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.35,
                          child: TextField(
                            style: TextStyle(
                                color: Colors.blue.shade900, fontSize: 11),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.grey)),
                                hintText: '',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                    fontSize: 11)),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.15,
                          child: Text(
                            'Kgs',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.035),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(deviceSize.height * 0.005),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Text(
                        'This will help the caregiver to estimate the level of physical effort needed while caring for {your care recipient Name}.',
                        style: TextStyle(
                            fontSize: deviceSize.width * 0.025,
                            fontWeight: FontWeight.w300,
                            color: Color.fromARGB(255, 5, 107, 36)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.02),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Relationship to Client',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica',
                          fontSize: deviceSize.width * 0.04),
                    ),
                    DropdownButton(
                        value: dropdownvalue,
                        icon: Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
                              ));
                        }).toList(),
                        onChanged: (val) {
                          setState(() {
                            dropdownvalue = val as String;
                          });
                        }),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.02),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Text(
                        'Does the care recipient suffer from any medical conditions? Please share with us any relevant information to help us learn more about your needs',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(deviceSize.height * 0.005),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: TextField(
                        style: TextStyle(
                            color: Colors.blue.shade900, fontSize: 11),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.grey)),
                            hintText: '',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.grey,
                                fontSize: 11)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(deviceSize.height * 0.005),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Text(
                        'This infornation will help the caregiver learn more about your needs.',
                        style: TextStyle(
                            fontSize: deviceSize.width * 0.025,
                            fontWeight: FontWeight.w300,
                            color: Color.fromARGB(255, 5, 107, 36)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.02),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Text(
                        'Does the care recipient have an accessible phone. What\'s the phone number?',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(deviceSize.height * 0.005),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: TextField(
                        style: TextStyle(
                            color: Colors.blue.shade900, fontSize: 11),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.grey)),
                            hintText: '+ 961',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.grey,
                                fontSize: 11)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(deviceSize.height * 0.005),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Text(
                        'We will not share this information with caregivers until after the booking is confirmed.',
                        style: TextStyle(
                            fontSize: deviceSize.width * 0.025,
                            fontWeight: FontWeight.w300,
                            color: Color.fromARGB(255, 5, 107, 36)),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(deviceSize.height * 0.05),
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Colors.greenAccent //elevated btton background color
                        ),
                    onPressed: () => {
                      /*Navigator.of(context).pushNamed(
                            MyCareRequestSammury.routeName,
                          ),*/
                      Navigator.of(context).pushNamed(
                        MyCareRequestSummaryBookNow.routeName,
                      ),
                    },
                    child: Text("Next"),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
