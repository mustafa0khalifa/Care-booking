import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/elderlyCareProvider.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
import '../../../../providers/PostMyNeedsProvider/buildCategoriesProvider.dart';
import '../caregiverPreferences.dart';

class ElderlyCare extends StatefulWidget {
  static const routeName = '/elderlyCare-screen';
  String groupValueRadio = 'val1';

  @override
  _ElderlyCareState createState() => _ElderlyCareState();
}

class _ElderlyCareState extends State<ElderlyCare> {
  bool select1Elder = true;
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
          "Elderly Care",
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
                      width: deviceSize.width * 0.1,
                      height: deviceSize.width * 0.1,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xff28306e),
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '5',
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
                      width: deviceSize.width * 0.07,
                      height: deviceSize.width * 0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '8',
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
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'How many elderly need care? ',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica_Bold',
                      fontWeight: FontWeight.bold,
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                          width: deviceSize.width * 0.35,
                          padding: EdgeInsets.all(deviceSize.height * 0.01),
                          decoration: BoxDecoration(
                              color: select1Elder
                                  ? Color(0xff28306e)
                                  : Colors.white,
                              border: Border.all(
                                  color: Color(0xff28306e), width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                              //more than 50% of width makes circle
                              ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.man,
                                size: deviceSize.width * 0.08,
                                color: select1Elder
                                    ? Colors.white
                                    : Color(0xff28306e),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.01)),
                              Text(
                                "1 elder / senior",
                                style: TextStyle(
                                    color: select1Elder
                                        ? Colors.white
                                        : Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.035),
                              ),
                            ],
                          )),
                      onTap: () => {
                        setState(() {
                          select1Elder = true;
                        })
                      },
                    ),
                    InkWell(
                      child: Container(
                          width: deviceSize.width * 0.35,
                          padding: EdgeInsets.all(deviceSize.height * 0.01),
                          decoration: BoxDecoration(
                              color: !select1Elder
                                  ? Color(0xff28306e)
                                  : Colors.white,
                              border: Border.all(
                                  color: Color(0xff28306e), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              )
                              //more than 50% of width makes circle
                              ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.person_add_alt_sharp,
                                size: deviceSize.width * 0.08,
                                color: !select1Elder
                                    ? Colors.white
                                    : Color(0xff28306e),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.01)),
                              Text(
                                "2 elders / seniors",
                                style: TextStyle(
                                    color: !select1Elder
                                        ? Colors.white
                                        : Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.035),
                              ),
                            ],
                          )),
                      onTap: () => {
                        setState(() {
                          select1Elder = false;
                        })
                      },
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Please specify the services',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica_Bold',
                      fontWeight: FontWeight.bold,
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Text(
                  'Basic Care',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.04),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.18,
                          height: deviceSize.height * 0.07,
                          child: Consumer<ElderlyCareProvider>(
                            builder: (_, foo, __) => Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  width: 1, color: Color(0xffD3CFC8)),
                              value: ElderlyCareProvider.companionship,
                              onChanged: (val) {
                                foo.changeCompanionshipCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Companionship',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.18,
                          height: deviceSize.height * 0.07,
                          child: Consumer<ElderlyCareProvider>(
                            builder: (_, foo, __) => Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  width: 1, color: Color(0xffD3CFC8)),
                              value: ElderlyCareProvider.basicNursingCare,
                              onChanged: (val) {
                                foo.changeBasicNursingCareCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Basic nursing care',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.18,
                          height: deviceSize.height * 0.07,
                          child: Consumer<ElderlyCareProvider>(
                            builder: (_, foo, __) => Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  width: 1, color: Color(0xffD3CFC8)),
                              value: ElderlyCareProvider.personalCare,
                              onChanged: (val) {
                                foo.changePersonalCareCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Personal care (e.g washing, dressing)',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.18,
                          height: deviceSize.height * 0.07,
                          child: Consumer<ElderlyCareProvider>(
                            builder: (_, foo, __) => Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  width: 1, color: Color(0xffD3CFC8)),
                              value: ElderlyCareProvider.transportation,
                              onChanged: (val) {
                                foo.changeTransportationCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Transportation',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.18,
                          height: deviceSize.height * 0.07,
                          child: Consumer<ElderlyCareProvider>(
                            builder: (_, foo, __) => Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  width: 1, color: Color(0xffD3CFC8)),
                              value: ElderlyCareProvider.mobilitySupport,
                              onChanged: (val) {
                                foo.changeMobilitySupportCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Mobility support',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.18,
                          height: deviceSize.height * 0.07,
                          child: Consumer<ElderlyCareProvider>(
                            builder: (_, foo, __) => Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  width: 1, color: Color(0xffD3CFC8)),
                              value: ElderlyCareProvider.shopping,
                              onChanged: (val) {
                                foo.changeShoppingCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Errands / Shopping',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.18,
                          height: deviceSize.height * 0.07,
                          child: Consumer<ElderlyCareProvider>(
                            builder: (_, foo, __) => Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  width: 1, color: Color(0xffD3CFC8)),
                              value: ElderlyCareProvider.mealPreparation,
                              onChanged: (val) {
                                foo.changeMealPreparationCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Meal preparation',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.18,
                          height: deviceSize.height * 0.07,
                          child: Consumer<ElderlyCareProvider>(
                            builder: (_, foo, __) => Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  width: 1, color: Color(0xffD3CFC8)),
                              value: ElderlyCareProvider.light,
                              onChanged: (val) {
                                foo.changeLightCheckbox();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Light housekeeping',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.005)),
                Divider(
                  color: Color(0xff28306e),
                  thickness: 1,
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Text(
                  'Nursing Care',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.04),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.18,
                          height: deviceSize.height * 0.07,
                          child: Consumer<ElderlyCareProvider>(
                            builder: (_, foo, __) => Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  width: 1, color: Color(0xffD3CFC8)),
                              value: ElderlyCareProvider.companionship2,
                              onChanged: (val) {
                                foo.changeCompanionshipCheckbox2();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Companionship',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.18,
                          height: deviceSize.height * 0.07,
                          child: Consumer<ElderlyCareProvider>(
                            builder: (_, foo, __) => Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  width: 1, color: Color(0xffD3CFC8)),
                              value: ElderlyCareProvider.basicNursingCare2,
                              onChanged: (val) {
                                foo.changeBasicNursingCareCheckbox2();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Basic nursing care',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.18,
                          height: deviceSize.height * 0.07,
                          child: Consumer<ElderlyCareProvider>(
                            builder: (_, foo, __) => Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  width: 1, color: Color(0xffD3CFC8)),
                              value: ElderlyCareProvider.personalCare2,
                              onChanged: (val) {
                                foo.changePersonalCareCheckbox2();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Personal care (e.g washing, dressing)',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.18,
                          height: deviceSize.height * 0.07,
                          child: Consumer<ElderlyCareProvider>(
                            builder: (_, foo, __) => Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  width: 1, color: Color(0xffD3CFC8)),
                              value: ElderlyCareProvider.transportation2,
                              onChanged: (val) {
                                foo.changeTransportationCheckbox2();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Transportation',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.18,
                          height: deviceSize.height * 0.07,
                          child: Consumer<ElderlyCareProvider>(
                            builder: (_, foo, __) => Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  width: 1, color: Color(0xffD3CFC8)),
                              value: ElderlyCareProvider.mobilitySupport2,
                              onChanged: (val) {
                                foo.changeMobilitySupportCheckbox2();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Mobility support',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.18,
                          height: deviceSize.height * 0.07,
                          child: Consumer<ElderlyCareProvider>(
                            builder: (_, foo, __) => Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  width: 1, color: Color(0xffD3CFC8)),
                              value: ElderlyCareProvider.shopping2,
                              onChanged: (val) {
                                foo.changeShoppingCheckbox2();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width * 0.27,
                          child: Text(
                            'Errands / Shopping',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Consumer<BuildCategoriesProvider>(
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
                                .pushNamed(CaregiverPreferences.routeName),
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
