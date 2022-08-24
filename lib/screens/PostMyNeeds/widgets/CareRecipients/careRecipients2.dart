import 'package:flutter/material.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/myCareRequestSummary.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/careRecipientsProvider.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
import '../Categories/widgets/reviewCaterorie.dart';
import 'careRecipients3.dart';

import 'package:intl/intl.dart';
import 'package:date_format/date_format.dart';

class CareRecipients2 extends StatefulWidget {
  static const routeName = '/careRecipients2-screen';

  @override
  _CareRecipientsAeaState createState() => _CareRecipientsAeaState();
}

class _CareRecipientsAeaState extends State<CareRecipients2> {
  final _fromController = TextEditingController();
  final _toController = TextEditingController();
  final _dateController = TextEditingController();

  DateTime selectedDate = DateTime.now();

  late String _setTime, _setDate;

  late String _hour, _minute, _time;

  late String dateTime;

  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        _dateController.text = DateFormat.yMd().format(selectedDate);
      });
  }

  Future<Null> _selectTimeFrom(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null)
      setState(() {
        selectedTime = picked;
        _hour = selectedTime.hour.toString();
        _minute = selectedTime.minute.toString();
        _time = _hour + ' : ' + _minute;
        _fromController.text = _time;
        _fromController.text = formatDate(
            DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
            [hh, ':', nn, " ", am]).toString();
      });
  }

  Future<Null> _selectTimeTo(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null)
      setState(() {
        selectedTime = picked;
        _hour = selectedTime.hour.toString();
        _minute = selectedTime.minute.toString();
        _time = _hour + ' : ' + _minute;

        _toController.text = _time;
        _toController.text = formatDate(
            DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
            [hh, ':', nn, " ", am]).toString();
      });
  }

  @override
  void initState() {
    _fromController.text = DateFormat.yMd().format(DateTime.now());
    _toController.text = DateFormat.yMd().format(DateTime.now());

    _fromController.text = formatDate(
        DateTime(2019, 08, 1, DateTime.now().hour, DateTime.now().minute),
        [hh, ':', nn, " ", am]).toString();

    _toController.text = formatDate(
        DateTime(2019, 08, 1, DateTime.now().hour, DateTime.now().minute),
        [hh, ':', nn, " ", am]).toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    bool isSwitched = true;
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
          child: Column(
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
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Color(0xffD3CFC8))),
                child: Container(
                  margin: EdgeInsets.all(deviceSize.width * 0.03),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.03)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'I am Pregnant',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.045),
                          ),
                          Switch.adaptive(
                              value: isSwitched,
                              onChanged: (newValue) {
                                setState(() {
                                  isSwitched = newValue;
                                });
                              }),
                        ],
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.03)),
                      Text(
                        'Would you like to share with us your due date?',
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.045),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.03)),
                      SizedBox(
                        height: deviceSize.height * 0.05,
                        width: deviceSize.width * 0.8,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          readOnly: true,
                          onTap: () => {_selectDate(context)},
                          controller: _dateController,
                          style: TextStyle(
                            fontSize: deviceSize.width * 0.03,
                            color: Color(0xff495057),
                            fontFamily: 'Helvetica',
                          ),
                          decoration: InputDecoration(
                            hintText: '08 / 17 / 2022',
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
                                borderSide:
                                    BorderSide(color: Color(0xffced4da))),
                            suffixIcon: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffe9ecef),
                                  border: Border.all(
                                    color: Color(0xffced4da),
                                  ),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5))
                                  //more than 50% of width makes circle
                                  ),
                              child: Icon(
                                color: Color(0xff495057),
                                Icons.date_range_outlined,
                                size: deviceSize.width * 0.07,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.03)),
                    ],
                  ),
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
                        padding: EdgeInsets.only(left: deviceSize.width * 0.2)),
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
                            .pushNamed(MyCareRequestSummary.routeName),
                      },
                      child: Text("Next"),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
