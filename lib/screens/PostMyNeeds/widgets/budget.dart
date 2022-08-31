import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/budgetProvider.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/CareRecipients/careRecipients.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/CareRecipients/mainRecipients.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../../../providers/PostMyNeedsProvider/CategoriesProvider.dart';
import '../../BookingsDashboard/bookingsDashboard.dart';

class Budget extends StatefulWidget {
  static const routeName = '/budget-screen';

  @override
  _BudgetState createState() => _BudgetState();
}

class _BudgetState extends State<Budget> {
  String dropdownvalue = 'USD';
  var items = ['USD'];
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    Widget BookingDate(
        context, String val1, String val2, String val3, String val4) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: deviceSize.width * 0.35,
            child: Text(
              '${val1}',
              style: TextStyle(
                  color: Color(0xff28306e),
                  fontFamily: 'Helvetica',
                  fontSize: deviceSize.width * 0.03),
            ),
          ),
          SizedBox(
            child: Text(
              '${val2}',
              style: TextStyle(
                  color: Color(0xff28306e),
                  fontFamily: 'Helvetica',
                  fontSize: deviceSize.width * 0.03),
            ),
          ),
          SizedBox(
            child: Text(
              '${val3}',
              style: TextStyle(
                  color: Color(0xff28306e),
                  fontFamily: 'Helvetica',
                  fontSize: deviceSize.width * 0.03),
            ),
          ),
          SizedBox(
            child: Text(
              '${val4}',
              style: TextStyle(
                  color: Color(0xff28306e),
                  fontFamily: 'Helvetica',
                  fontSize: deviceSize.width * 0.03),
            ),
          ),
        ],
      );
    }

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
          "Budget",
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
                      width: deviceSize.width * 0.1,
                      height: deviceSize.width * 0.1,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xff28306e),
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        '7',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xffD3CFC8), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(5))
                          //more than 50% of width makes circle
                          ),
                      width: deviceSize.width * 0.27,
                      padding: EdgeInsets.all(deviceSize.height * 0.01),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Total number of days of booking',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.02)),
                          Text(
                            '8 days',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica_Bold',
                                fontWeight: FontWeight.bold,
                                fontSize: deviceSize.width * 0.035),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.065)),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xffD3CFC8), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(5))
                          //more than 50% of width makes circle
                          ),
                      width: deviceSize.width * 0.27,
                      padding: EdgeInsets.all(deviceSize.height * 0.01),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Total number of shifts',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.02)),
                          Text(
                            '12 shifts',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica_Bold',
                                fontWeight: FontWeight.bold,
                                fontSize: deviceSize.width * 0.035),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.065)),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xffD3CFC8), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(5))
                          //more than 50% of width makes circle
                          ),
                      width: deviceSize.width * 0.27,
                      padding: EdgeInsets.all(deviceSize.height * 0.01),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Total number of hours requested',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.02)),
                          Text(
                            '24 hours',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica_Bold',
                                fontWeight: FontWeight.bold,
                                fontSize: deviceSize.width * 0.035),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.75,
                          child: EasyRichText(
                            'I dont have a specific budget',
                            patternList: [
                              EasyRichTextPattern(
                                targetString: 'I dont have a specific budget',
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.04),
                              ),
                            ],
                          ),
                        ),
                        Consumer<BudgetProvider>(
                            builder: (_, foo, __) => Switch.adaptive(
                                value: BudgetProvider.specificBudget,
                                onChanged: (newValue) {
                                  foo.changeSpecificBudget();
                                })),
                      ],
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.9,
                      child: EasyRichText(
                        'Caregivers who respond will indicate their proposed budgets',
                        patternList: [
                          EasyRichTextPattern(
                            targetString:
                                'Caregivers who respond will indicate their proposed budgets',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontStyle: FontStyle.italic,
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Text(
                        'Currency',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.03)),
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
                                    fontSize: deviceSize.width * 0.035),
                              ));
                        }).toList(),
                        onChanged: (val) {}),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(deviceSize.width * 0.01),
                    decoration: BoxDecoration(
                        color: Colors.orange[100],
                        border: Border.all(color: Color(0xffD3CFC8), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                        //more than 50% of width makes circle
                        ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.note,
                              size: deviceSize.width * 0.06,
                              color: Colors.red,
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: deviceSize.width * 0.01)),
                            Text(
                              'Note',
                              style: TextStyle(
                                fontSize: deviceSize.width * 0.035,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'You cannot change currency to LL since the start date is more than 2 months from now.',
                          style: TextStyle(
                            fontSize: deviceSize.width * 0.025,
                            fontWeight: FontWeight.w400,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD3CFC8), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      //more than 50% of width makes circle
                      ),
                  child: Container(
                      padding: EdgeInsets.all(deviceSize.width * 0.02),
                      color: Color.fromARGB(255, 159, 201, 235),
                      child: EasyRichText(
                        '\$ Caregivers in your area charge an average between 52,250 LBP and 820,000 LBP for this booking.',
                        patternList: [
                          EasyRichTextPattern(
                            targetString: '\$',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica_Bold',
                                fontSize: deviceSize.width * 0.04),
                          ),
                          EasyRichTextPattern(
                            targetString:
                                'Caregivers in your area charge an average between 52,250 LBP and 820,000 LBP for this booking.',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontStyle: FontStyle.italic,
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ],
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Budget',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica',
                          fontSize: deviceSize.width * 0.04),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.03)),
                    TextField(
                      style: TextStyle(
                        fontSize: deviceSize.width * 0.03,
                        color: Color(0xff495057),
                        fontFamily: 'Helvetica',
                      ),
                      decoration: InputDecoration(
                        hintText: '',
                        constraints: BoxConstraints(
                            maxWidth: deviceSize.width * 0.3,
                            maxHeight: deviceSize.height * 0.05),
                        contentPadding: EdgeInsets.symmetric(horizontal: 2),
                        fillColor: Color(0xffe9ecef),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffced4da), width: 1.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffced4da), width: 1.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xffced4da))),
                      ),
                      //autofocus: ,
                      keyboardType: TextInputType.number,
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: deviceSize.width * 0.03)),
                    Text(
                      'USD',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica',
                          fontSize: deviceSize.width * 0.04),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.8,
                          child: Consumer<BudgetProvider>(
                            builder: (_, foo, __) => Slider(
                                value: BudgetProvider.valueSlider,
                                min: 10.0,
                                max: 100.0,
                                divisions: 10,
                                activeColor: Colors.green,
                                inactiveColor: Colors.orange,
                                label: '${BudgetProvider.valueSlider}',
                                onChanged: (double newValue) {
                                  foo.changeValueSlider(newValue);
                                },
                                semanticFormatterCallback: (double newValue) {
                                  return '${newValue.round()} dollars';
                                }),
                          ),
                        ),
                        Consumer<BudgetProvider>(
                          builder: (_, foo, __) => Text(
                            '${BudgetProvider.valueSlider}',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.03),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xffD3CFC8), width: 1),
                          color: Color.fromARGB(255, 159, 201, 235),
                          borderRadius: BorderRadius.circular(5)),
                      child: Container(
                          padding: EdgeInsets.all(deviceSize.width * 0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.tag_faces),
                              SizedBox(
                                width: deviceSize.width * 0.8,
                                child: EasyRichText(
                                  'You have a very high chance of finding a caregiver with this budget',
                                  patternList: [
                                    EasyRichTextPattern(
                                      targetString: '\$',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica_Bold',
                                          fontSize: deviceSize.width * 0.04),
                                    ),
                                    EasyRichTextPattern(
                                      targetString:
                                          'You have a very high chance of finding a caregiver with this budget',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontStyle: FontStyle.italic,
                                          fontSize: deviceSize.width * 0.03),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Text(
                  'Detailed Booking Summary with prices',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                SizedBox(
                  child: Container(
                    padding: EdgeInsets.all(deviceSize.width * 0.01),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD3CFC8), width: 1),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BookingDate(context, 'Monday   11/04/2022', '1:00 PM',
                            '2:00 PM', '21 USD'),
                        Padding(
                            padding:
                                EdgeInsets.only(top: deviceSize.height * 0.02)),
                        BookingDate(context, 'TuesDay  12/04/2022', '1:00 PM',
                            '2:00 PM', '21 USD'),
                        Padding(
                            padding:
                                EdgeInsets.only(top: deviceSize.height * 0.02)),
                        BookingDate(context, 'Monday   18/04/2022', '1:00 PM',
                            '2:00 PM', '21 USD'),
                        Padding(
                            padding:
                                EdgeInsets.only(top: deviceSize.height * 0.02)),
                        BookingDate(context, 'TuesDay  19/04/2022', '1:00 PM',
                            '2:00 PM', '21 USD'),
                      ],
                    ),
                  ),
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
                                .pushNamed(MainRecipients.routeName),
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
