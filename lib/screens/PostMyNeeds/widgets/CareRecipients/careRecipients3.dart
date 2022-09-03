import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/PostMyNeedsProvider/CategoriesProvider.dart';
import '../../../../providers/PostMyNeedsProvider/careRecipientsProvider.dart';
import '../../../BookingsDashboard/bookingsDashboard.dart';
import '../myCareRequestSummary.dart';
import 'careRecipients2.dart';

import 'package:intl/intl.dart';
import 'package:date_format/date_format.dart';
import 'package:country_picker/country_picker.dart';

class CareRecipients3 extends StatefulWidget {
  static const routeName = '/careRecipients3-screen';

  @override
  _CareRecipientsAeaState createState() => _CareRecipientsAeaState();
}

class _CareRecipientsAeaState extends State<CareRecipients3> {
  final _fromController = TextEditingController();
  final _toController = TextEditingController();
  final _dateController = TextEditingController();

  DateTime selectedDate = DateTime.now();

  late String _setTime, _setDate;

  late String _hour, _minute, _time;

  late String dateTime;
  late String contryCode = '961';
  bool isSwitched = false;

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
              mainAxisAlignment: MainAxisAlignment.start,
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
                    padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
                Text(
                  'Tell us more about the care recipients',
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                      fontSize: deviceSize.width * 0.04),
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.01),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: deviceSize.height * 0.06,
                      width: deviceSize.width * 0.8,
                      child: TextField(
                        style: TextStyle(
                          fontSize: deviceSize.width * 0.03,
                          color: Color(0xff495057),
                          fontFamily: 'Helvetica',
                        ),
                        decoration: InputDecoration(
                          constraints: BoxConstraints(
                            maxWidth: deviceSize.width * 0.8,
                            maxHeight: deviceSize.height * 0.05,
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          hintText: 'Full Name',
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
                        ), //autofocus: ,
                        //autofocus: ,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    IconButton(
                      onPressed: () => {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: Icon(
                              Icons.person,
                              size: deviceSize.width * 0.06,
                            ),
                            content: Text(
                              textAlign: TextAlign.center,
                              'We will not share this information with caregivers until the booking is confirmed',
                              style: TextStyle(
                                fontSize: deviceSize.width * 0.035,
                                color: Color(0xff28306e),
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffD3CFC8),
                                      border: Border.all(
                                          color: Color(0xffD3CFC8), width: 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))
                                      //more than 50% of width makes circle
                                      ),
                                  padding: const EdgeInsets.all(14),
                                  child: Text(
                                    "okay",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: deviceSize.width * 0.035,
                                      color: Color(0xff28306e),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      },
                      icon: Icon(
                        Icons.info_outline,
                        size: deviceSize.width * 0.06,
                        color: Color(0xff007bff),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.01),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: deviceSize.height * 0.06,
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
                          constraints: BoxConstraints(
                            maxWidth: deviceSize.width * 0.8,
                            maxHeight: deviceSize.height * 0.05,
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          hintText: 'Date of Birth',
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
                    IconButton(
                      onPressed: () => {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: Icon(
                              Icons.date_range,
                              size: deviceSize.width * 0.06,
                            ),
                            content: Text(
                              textAlign: TextAlign.center,
                              'It will be used to give the caregivers an idea about the @care_recipient\'s age.',
                              style: TextStyle(
                                fontSize: deviceSize.width * 0.035,
                                color: Color(0xff28306e),
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffD3CFC8),
                                      border: Border.all(
                                          color: Color(0xffD3CFC8), width: 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))
                                      //more than 50% of width makes circle
                                      ),
                                  padding: const EdgeInsets.all(14),
                                  child: Text(
                                    "okay",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: deviceSize.width * 0.035,
                                      color: Color(0xff28306e),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      },
                      icon: Icon(
                        Icons.info_outline,
                        size: deviceSize.width * 0.06,
                        color: Color(0xff007bff),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.005),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Row(
                        children: [
                          SizedBox(
                            child: Text(
                              'Gender',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica',
                                  fontWeight: FontWeight.bold,
                                  fontSize: deviceSize.width * 0.04),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.03)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Consumer<CareRecipientsProvider>(
                                builder: (_, foo, __) => Radio(
                                    activeColor: Colors.greenAccent,
                                    value: 'Male',
                                    groupValue:
                                        CareRecipientsProvider.genderGroub,
                                    onChanged: (value) {
                                      foo.changeGenderGroub(value as String);
                                    }),
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    color: Color(0xff28306e),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.03),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: deviceSize.width * 0.1),
                              ),
                              Consumer<CareRecipientsProvider>(
                                builder: (_, foo, __) => Radio(
                                    activeColor: Colors.greenAccent,
                                    value: 'Female',
                                    groupValue:
                                        CareRecipientsProvider.genderGroub,
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
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () => {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: Icon(
                              Icons.male,
                              size: deviceSize.width * 0.06,
                            ),
                            content: Text(
                              textAlign: TextAlign.center,
                              'The gender of your care recipient will be included in the care request',
                              style: TextStyle(
                                fontSize: deviceSize.width * 0.035,
                                color: Color(0xff28306e),
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffD3CFC8),
                                      border: Border.all(
                                          color: Color(0xffD3CFC8), width: 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))
                                      //more than 50% of width makes circle
                                      ),
                                  padding: const EdgeInsets.all(14),
                                  child: Text(
                                    "okay",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: deviceSize.width * 0.035,
                                      color: Color(0xff28306e),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      },
                      icon: Icon(
                        Icons.info_outline,
                        size: deviceSize.width * 0.06,
                        color: Color(0xff007bff),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.005),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Row(
                        children: [
                          TextField(
                            style: TextStyle(
                              fontSize: deviceSize.width * 0.03,
                              color: Color(0xff495057),
                              fontFamily: 'Helvetica',
                            ),
                            decoration: InputDecoration(
                              constraints: BoxConstraints(
                                maxWidth: deviceSize.width * 0.65,
                                maxHeight: deviceSize.height * 0.05,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              hintText: 'Weight',
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
                            ), //autofocus: ,
                            //autofocus: ,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.01)),
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
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () => {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: Icon(
                              Icons.line_weight,
                              size: deviceSize.width * 0.06,
                            ),
                            content: Text(
                              textAlign: TextAlign.center,
                              'This will help the caregiver to estimate the level of physical efort needed while caring for @care_recipient\'s.',
                              style: TextStyle(
                                fontSize: deviceSize.width * 0.035,
                                color: Color(0xff28306e),
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffD3CFC8),
                                      border: Border.all(
                                          color: Color(0xffD3CFC8), width: 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))
                                      //more than 50% of width makes circle
                                      ),
                                  padding: const EdgeInsets.all(14),
                                  child: Text(
                                    "okay",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: deviceSize.width * 0.035,
                                      color: Color(0xff28306e),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      },
                      icon: Icon(
                        Icons.info_outline,
                        size: deviceSize.width * 0.06,
                        color: Color(0xff007bff),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.005),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Row(
                        children: [
                          Text(
                            'Relationship to Client',
                            style: TextStyle(
                                color: Color(0xff28306e),
                                fontFamily: 'Helvetica',
                                fontWeight: FontWeight.bold,
                                fontSize: deviceSize.width * 0.04),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: deviceSize.width * 0.05)),
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
                              onChanged: (val) {
                                setState(() {
                                  dropdownvalue = val as String;
                                });
                              }),
                        ],
                      ),
                    ),
                    /*
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.info_outline,
                        size: deviceSize.width * 0.06,
                        color: Color(0xff007bff),
                      ),
                    ),
                */
                  ],
                ),
                SizedBox(
                  width: deviceSize.width * 0.9,
                  child: Text(
                    'Does the care recipient suffer from any medical conditions?\nPlease share with us any relevant information to help us learn more about your needs',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: deviceSize.width * 0.03),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.005),
                ),
                TextField(
                  textAlign: TextAlign.start,
                  expands: false,

                  style: TextStyle(
                    fontSize: deviceSize.width * 0.03,
                    color: Color(0xff495057),
                    fontFamily: 'Helvetica',
                  ),
                  decoration: InputDecoration(
                    constraints: BoxConstraints(
                      maxWidth: deviceSize.width * 0.9,
                      maxHeight: deviceSize.height * 0.05,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    hintText: '',
                    fillColor: Color(0xffe9ecef),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffced4da), width: 1.0),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffced4da), width: 1.0),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        borderSide: BorderSide(color: Color(0xffced4da))),
                  ), //autofocus: ,
                  //autofocus: ,
                  keyboardType: TextInputType.emailAddress,
                ),
                /*
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.orange[100],
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
                        Text(
                          'Does the care recipient suffer from any medical conditions? Please share with us any relevant information to help us learn more about your needs',
                          style: TextStyle(
                            fontSize: deviceSize.width * 0.025,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff28306e),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
               */
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.005),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        width: deviceSize.width * 0.1,
                        height: deviceSize.height * 0.05,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xffe9ecef),
                            border:
                                Border.all(color: Color(0xffced4da), width: 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5))
                            //more than 50% of width makes circle
                            ),
                        child: Text(
                          '+ ${contryCode}',
                          style: TextStyle(
                            fontSize: deviceSize.width * 0.035,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff28306e),
                          ),
                        ),
                      ),
                      onTap: () => {
                        showCountryPicker(
                          context: context,
                          showPhoneCode:
                              true, // optional. Shows phone code before the country name.
                          onSelect: (Country country) {
                            print('dddddddd');
                            print('dddddddd');
                            print('dddddddd');
                            print('Select country: ${country.phoneCode} ');
                            setState(() {
                              contryCode = country.phoneCode;
                            });

                            print('dddddddd');
                            print('dddddddd');
                            print('dddddddd');
                          },
                        )
                      },
                    ),
                    TextField(
                      textAlign: TextAlign.start,
                      expands: false,

                      style: TextStyle(
                        fontSize: deviceSize.width * 0.03,
                        color: Color(0xff495057),
                        fontFamily: 'Helvetica',
                      ),
                      decoration: InputDecoration(
                        constraints: BoxConstraints(
                          maxWidth: deviceSize.width * 0.7,
                          maxHeight: deviceSize.height * 0.05,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        hintText: 'Phone Number',
                        fillColor: Color(0xffe9ecef),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffced4da), width: 1.0),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffced4da), width: 1.0),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                bottomRight: Radius.circular(5)),
                            borderSide: BorderSide(color: Color(0xffced4da))),
                      ), //autofocus: ,
                      //autofocus: ,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    IconButton(
                      onPressed: () => {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: Icon(
                              Icons.phone,
                              size: deviceSize.width * 0.06,
                            ),
                            content: Text(
                              textAlign: TextAlign.center,
                              'We will not share this information with caregivers until the booking is confirmed',
                              style: TextStyle(
                                fontSize: deviceSize.width * 0.035,
                                color: Color(0xff28306e),
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffD3CFC8),
                                      border: Border.all(
                                          color: Color(0xffD3CFC8), width: 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))
                                      //more than 50% of width makes circle
                                      ),
                                  padding: const EdgeInsets.all(14),
                                  child: Text(
                                    "okay",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: deviceSize.width * 0.035,
                                      color: Color(0xff28306e),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      },
                      icon: Icon(
                        Icons.info_outline,
                        size: deviceSize.width * 0.06,
                        color: Color(0xff007bff),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: deviceSize.width * 0.9,
                  child: Text(
                    'Does the care recipient have an accessible phone?\nWhat’s the phone number?',
                    style: TextStyle(
                        color: Color(0xff28306e),
                        fontFamily: 'Helvetica',
                        fontSize: deviceSize.width * 0.03),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(deviceSize.height * 0.005),
                ),
                TextField(
                  textAlign: TextAlign.start,
                  expands: false,

                  style: TextStyle(
                    fontSize: deviceSize.width * 0.03,
                    color: Color(0xff495057),
                    fontFamily: 'Helvetica',
                  ),
                  decoration: InputDecoration(
                    constraints: BoxConstraints(
                      maxWidth: deviceSize.width * 0.9,
                      maxHeight: deviceSize.height * 0.05,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    hintText: '',
                    fillColor: Color(0xffe9ecef),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffced4da), width: 1.0),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffced4da), width: 1.0),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        borderSide: BorderSide(color: Color(0xffced4da))),
                  ), //autofocus: ,
                  //autofocus: ,
                  keyboardType: TextInputType.emailAddress,
                ),

                /* 
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.orange[100],
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
                        Text(
                          'Does the care recipient have an accessible phone. What\'s the phone number?',
                          style: TextStyle(
                            fontSize: deviceSize.width * 0.025,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff28306e),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
               
               */
                Padding(
                    padding: EdgeInsets.only(top: deviceSize.height * 0.01)),
                Consumer<CareRecipientsProvider>(
                    builder: (_, foo, __) => CareRecipientsProvider
                                .genderGroub ==
                            'Female'
                        ? Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xffD3CFC8), width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))
                                //more than 50% of width makes circle
                                ),
                            padding: EdgeInsets.all(deviceSize.width * 0.02),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'I am Pregnant',
                                      style: TextStyle(
                                          color: Color(0xff28306e),
                                          fontFamily: 'Helvetica',
                                          fontSize: deviceSize.width * 0.04),
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
                                    padding: EdgeInsets.only(
                                        top: deviceSize.height * 0.01)),
                                Text(
                                  'Would you like to share with us your due date?',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.04),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: deviceSize.height * 0.01)),
                                TextField(
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
                                    constraints: BoxConstraints(
                                      maxWidth: deviceSize.width * 0.8,
                                      maxHeight: deviceSize.height * 0.05,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
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
                                        borderSide: BorderSide(
                                            color: Color(0xffced4da))),
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
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: deviceSize.height * 0.005)),
                              ],
                            ),
                          )
                        : SizedBox()),
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
                                .pushNamed(MyCareRequestSummary.routeName),
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
