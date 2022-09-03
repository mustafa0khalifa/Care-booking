import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/forgetPassProvider.dart';
import 'package:flutter_application_10000/screens/ForgetPassword/forgetPassword.dart';
import 'package:country_picker/country_picker.dart';

import '../../auth/mainAuth.dart';

class EnterNumber extends StatefulWidget {
  static const routeName = '/EnterNumber-screen';
  @override
  _EnterNumberState createState() => _EnterNumberState();
}

class _EnterNumberState extends State<EnterNumber> {
  final _numberController = TextEditingController();
  final ForgetPassProvidere forget = ForgetPassProvidere();
  String contryCode = '961';

  void _clickSend() {
    print(_numberController.text);
    if (_numberController.text == '0000') {
      forget.changeForgetSteta();
      Navigator.of(context).pushNamed(
        ForgetPassword.routeName,
      );
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Now Enter the verification code "),
        duration: Duration(seconds: 2),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error Number !!!"),
        duration: Duration(seconds: 2),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
        height: deviceSize.height,
        width: deviceSize.width,
        padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: deviceSize.width * 0.9,
                child: Text(
                  "Enter the mobile number associated with FAN account, and we will send you a verification code",
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              SizedBox(
                width: deviceSize.width * 0.85,
                height: deviceSize.height * 0.072,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        width: deviceSize.width * 0.1,
                        height: deviceSize.height * 0.072,
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
                    SizedBox(
                      width: deviceSize.width * 0.75,
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: deviceSize.width * 0.035,
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica',
                        ),
                        decoration: InputDecoration(
                          labelText: 'Mobile',
                          fillColor: Color(0xffe9ecef),
                          filled: true,
                          labelStyle: TextStyle(
                              color: Color(0xff495057),
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.035),
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: deviceSize.width * 0.0433)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Colors.greenAccent //elevated btton background color
                        ),
                    onPressed: () {
                      // ignore: avoid_print
                      print("Tap Send");
                      _clickSend();
                    },
                    child: Text("Send"),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(left: deviceSize.width * 0.0433)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Colors.redAccent //elevated btton background color
                        ),
                    onPressed: () {
                      // ignore: avoid_print
                      print("Tap Cancel");
                      forget.cancelForgetSteta();
                      Navigator.of(context).pushNamed(AuthScreen.routeName);
                    },
                    child: Text("Cnacel"),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(left: deviceSize.width * 0.0433)),
                ],
              )
            ],
          ),
        ));
  }
}
