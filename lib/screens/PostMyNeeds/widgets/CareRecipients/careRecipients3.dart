import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/Categories/widgets/reviewCaterorie.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/CategoriesProvider.dart';
import '../../../../providers/PostMyNeedsProvider/careRecipientsProvider.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
import '../Categories/widgets/buildCaterorie.dart';
import 'careRecipients2.dart';

class CareRecipients3 extends StatefulWidget {
  static const routeName = '/careRecipients3-screen';

  @override
  _CareRecipientsAeaState createState() => _CareRecipientsAeaState();
}

class _CareRecipientsAeaState extends State<CareRecipients3> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    String dropdownvalue = 'My child';
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
          margin: EdgeInsets.all(deviceSize.width * 0.03),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '4',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '5',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '6',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '7',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.1,
                      height: deviceSize.width * 0.1,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xff28306e),
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '8',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '9',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.06)),
                Text(
                  'Tell us more about the care recipients',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.01),
                ),
                SizedBox(
                  width: deviceSize.width * 0.8,
                  child: Text(
                    'Full Name',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: deviceSize.width * 0.04),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.005),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: deviceSize.height * 0.05,
                          width: deviceSize.width * 0.5,
                          child: TextField(
                            style: TextStyle(
                              fontSize: deviceSize.width * 0.03,
                              color: Colors.blue,
                              fontFamily: 'Helvetica',
                            ),
                            decoration: InputDecoration(
                              hintText: '',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff28306e), width: 1.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255))),
                            ),
                            //autofocus: ,
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.4,
                          child: Text(
                            'Why do we ask this for?',
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.01),
                ),
                SizedBox(
                  width: deviceSize.width * 0.8,
                  child: Text(
                    'Date of Birth',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: deviceSize.width * 0.04),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.005),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: deviceSize.height * 0.05,
                      width: deviceSize.width * 0.4,
                      child: TextField(
                        style: TextStyle(
                          fontSize: deviceSize.width * 0.03,
                          color: Colors.blue,
                          fontFamily: 'Helvetica',
                        ),
                        decoration: InputDecoration(
                          hintText: '',
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xff28306e), width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                        //autofocus: ,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Icon(
                      Icons.date_range_outlined,
                      size: deviceSize.width * 0.07,
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        'Why do we ask this for?',
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.03),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.01),
                ),
                SizedBox(
                  width: deviceSize.width * 0.8,
                  child: Text(
                    'Gender',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: deviceSize.width * 0.04),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.005),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Male",
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.03),
                        ),
                        Consumer<CareRecipientsProvider>(
                          builder: (_, foo, __) => Radio(
                              activeColor: Colors.greenAccent,
                              value: 'Male',
                              groupValue: CareRecipientsProvider.genderGroub,
                              onChanged: (value) {
                                foo.changeGenderGroub(value as String);
                              }),
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                              color: Color(0xff28306e),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.03),
                        ),
                        Consumer<CareRecipientsProvider>(
                          builder: (_, foo, __) => Radio(
                              activeColor: Colors.greenAccent,
                              value: 'Female',
                              groupValue: CareRecipientsProvider.genderGroub,
                              onChanged: (value) {
                                foo.changeGenderGroub(value as String);
                              }),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.4,
                          child: Text(
                            'Why do we ask this for?',
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.01),
                ),
                SizedBox(
                  width: deviceSize.width * 0.8,
                  child: Text(
                    'Weight',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: deviceSize.width * 0.04),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.005),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: deviceSize.height * 0.05,
                      width: deviceSize.width * 0.4,
                      child: TextField(
                        style: TextStyle(
                          fontSize: deviceSize.width * 0.03,
                          color: Colors.blue,
                          fontFamily: 'Helvetica',
                        ),
                        decoration: InputDecoration(
                          hintText: '',
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xff28306e), width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                        //autofocus: ,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.1,
                      child: Text(
                        'kgs',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.03),
                      ),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        'Why do we ask this for?',
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.03),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.01),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  padding: EdgeInsets.all(deviceSize.height * 0.01),
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
                            fontSize: deviceSize.width * 0.035),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(deviceSize.height * 0.005),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        'Why do we ask this for?',
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.03),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(deviceSize.height * 0.005),
                    ),
                    SizedBox(
                      height: deviceSize.height * 0.05,
                      width: deviceSize.width * 0.8,
                      child: TextField(
                        style: TextStyle(
                          fontSize: deviceSize.width * 0.03,
                          color: Colors.blue,
                          fontFamily: 'Helvetica',
                        ),
                        decoration: InputDecoration(
                          hintText: '',
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xff28306e), width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                        //autofocus: ,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.01),
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
                            fontSize: deviceSize.width * 0.035),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(deviceSize.height * 0.005),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.4,
                      child: Text(
                        'Why do we ask this for?',
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.03),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(deviceSize.height * 0.005),
                    ),
                    SizedBox(
                      height: deviceSize.height * 0.05,
                      width: deviceSize.width * 0.8,
                      child: TextField(
                        style: TextStyle(
                          fontSize: deviceSize.width * 0.03,
                          color: Colors.blue,
                          fontFamily: 'Helvetica',
                        ),
                        decoration: InputDecoration(
                          hintText: '+ 961',
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xff28306e), width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                        //autofocus: ,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ],
                ),
                Consumer<CategoriesProvider>(
                  builder: (_, foo, __) => Container(
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
                                .pushNamed(CareRecipients2.routeName),
                          },
                          child: Text("Next"),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
