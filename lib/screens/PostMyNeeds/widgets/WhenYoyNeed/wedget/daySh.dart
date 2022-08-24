import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/PostMyNeedsProvider/scheduleDateProvider.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:date_format/date_format.dart';

class DaySh extends StatefulWidget {
  var width;
  var height;
  var day;
  var index;
  var color;
  DaySh({
    required this.width,
    required this.height,
    required this.day,
    required this.index,
    required this.color,
  });

  @override
  State<StatefulWidget> createState() {
    return DayState();
  }
}

class DayState extends State<DaySh> {
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
    dateTime = DateFormat.yMd().format(DateTime.now());

    Widget _addRemoveButton(int ind) {
      return Consumer<ScheduleDateProvider>(
          builder: (_, foo, __) => SizedBox(
                height: widget.height * 0.05,
                child: IconButton(
                    iconSize: widget.width * 0.05,
                    onPressed: () => {
                          //foo.removeShInDay(widget.index),
                          foo.removeShInDayList(widget.index, ind * 2)
                        },
                    icon: Icon(
                      Icons.remove_circle_outline_rounded,
                      color: Colors.red,
                      size: widget.width * 0.05,
                    )),
              ));
    }

    List<Widget> _getFriends() {
      List<Widget> friendsTextFieldsList = [];
      print(ScheduleDateProvider.DateDay[widget.index]);
      for (int i = 0;
          i < ScheduleDateProvider.DateDay[widget.index].length / 2;
          i++) {
        friendsTextFieldsList.add(Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Shift ${i + 1}',
                style: TextStyle(
                    color: Color(0xff28306e),
                    fontFamily: 'Helvetica_Bold',
                    fontWeight: FontWeight.bold,
                    fontSize: widget.width * 0.035)),
            Row(
              children: [
                SizedBox(
                  width: widget.width * 0.33,
                  child: Text(
                      'From : ${ScheduleDateProvider.DateDay[widget.index][i * 2]}',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica_Bold',
                          fontSize: widget.width * 0.03)),
                ),
                Padding(padding: EdgeInsets.only(left: widget.width * 0.05)),
                SizedBox(
                  width: widget.width * 0.33,
                  child: Text(
                      'To : ${ScheduleDateProvider.DateDay[widget.index][(i * 2) + 1]}',
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica_Bold',
                          fontSize: widget.width * 0.03)),
                ),
                _addRemoveButton(i)
              ],
            ),
            Divider(
              thickness: 1,
            ),
          ],
        ));
      }
      return friendsTextFieldsList;
    }

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: Color(0xffD3CFC8))),
      child: Container(
        margin: EdgeInsets.only(left: widget.width * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: widget.width * 0.22,
                  child: Text(
                    '${widget.day}',
                    maxLines: 2,
                    style: TextStyle(
                        color: widget.color,
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.bold,
                        fontSize: widget.width * 0.04),
                  ),
                ),
                Consumer<ScheduleDateProvider>(
                  builder: (_, foo, __) => IconButton(
                      onPressed: () => {
                            // foo.removeAllShInDay(widget.index),
                            foo.changeclickDayNo(widget.index),
                            foo.removeAllShInDayList(widget.index)
                          },
                      icon: Icon(
                        Icons.remove_circle_outline_rounded,
                        color: Colors.red,
                        size: widget.width * 0.05,
                      )),
                ),
                Consumer<ScheduleDateProvider>(
                  builder: (_, foo, __) => IconButton(
                      onPressed: () => {foo.changeclickShDay(widget.index)},
                      icon: !ScheduleDateProvider.clickSh[widget.index]
                          ? Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Color(0xff28306e),
                              size: widget.width * 0.05,
                            )
                          : Icon(
                              Icons.keyboard_arrow_up_outlined,
                              color: Color(0xff28306e),
                              size: widget.width * 0.05,
                            )),
                )
              ],
            ),
            Consumer<ScheduleDateProvider>(
                builder: (_, foo, __) => ScheduleDateProvider
                        .clickSh[widget.index]
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Add Shift',
                              style: TextStyle(
                                  color: Color(0xff28306e),
                                  fontFamily: 'Helvetica_Bold',
                                  fontSize: widget.width * 0.035)),
                          Padding(
                              padding:
                                  EdgeInsets.only(top: widget.height * 0.005)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: widget.height * 0.05,
                                width: widget.width * 0.33,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  readOnly: true,
                                  onTap: () => {_selectTimeFrom(context)},
                                  controller: _fromController,
                                  style: TextStyle(
                                    fontSize: widget.width * 0.03,
                                    color: Color(0xff495057),
                                    fontFamily: 'Helvetica',
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'From',
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
                                      child: InkWell(
                                        child: Icon(
                                          color: Color(0xff495057),
                                          Icons.more_time_sharp,
                                          size: widget.width * 0.07,
                                        ),
                                        onTap: () => {_selectTimeFrom(context)},
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: widget.width * 0.05)),
                              SizedBox(
                                height: widget.height * 0.05,
                                width: widget.width * 0.33,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  onTap: () => {_selectTimeTo(context)},
                                  readOnly: true,
                                  controller: _toController,
                                  style: TextStyle(
                                    fontSize: widget.width * 0.03,
                                    color: Color(0xff495057),
                                    fontFamily: 'Helvetica',
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'To',
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
                                      child: InkWell(
                                        child: Icon(
                                          color: Color(0xff495057),
                                          Icons.more_time_sharp,
                                          size: widget.width * 0.07,
                                        ),
                                        onTap: () => {_selectTimeTo(context)},
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Consumer<ScheduleDateProvider>(
                                builder: (_, foo, __) => IconButton(
                                    onPressed: () => {
                                          foo.addSh(_fromController.text,
                                              _toController.text, widget.index),
                                          //   foo.addShInDay(widget.index)
                                        },
                                    icon: Icon(
                                      Icons.add_circle_outline,
                                      color: Colors.green,
                                      size: widget.width * 0.05,
                                    )),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          ..._getFriends(),
                        ],
                      )
                    : SizedBox()),
          ],
        ),
      ),
    );
  }
}
