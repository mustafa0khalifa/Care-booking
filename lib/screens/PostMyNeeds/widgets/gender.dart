import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'caregiversInrAea.dart';

class Gender extends StatefulWidget {
  static const routeName = '/gender-screen';
  String groupValueRadio = 'val1';
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                      title: Text("I prefer a male care provider"),
                      leading: Radio(
                          activeColor: Colors.greenAccent,
                          value: 'val1',
                          groupValue: widget.groupValueRadio,
                          onChanged: (value) {
                            setState(() {
                              widget.groupValueRadio = value.toString();
                            }); //selected value
                          })),
                  ListTile(
                      title: Text("I prefer a female care provider"),
                      leading: Radio(
                          activeColor: Colors.greenAccent,
                          value: 'val2',
                          groupValue: widget.groupValueRadio,
                          onChanged: (value) {
                            setState(() {
                              widget.groupValueRadio = value.toString();
                            }); //selected value
                          })),
                  ListTile(
                      title: Text("It doesn’t matter "),
                      leading: Radio(
                          activeColor: Colors.greenAccent,
                          value: 'val3',
                          groupValue: widget.groupValueRadio,
                          onChanged: (value) {
                            setState(() {
                              widget.groupValueRadio = value.toString();
                            }); //selected value
                          })),
                  Container(
                    margin: EdgeInsets.all(deviceSize.height * 0.05),
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors
                              .greenAccent //elevated btton background color
                          ),
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(CaregiversInrAea.routeName);
                      },
                      child: Text("Next"),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
