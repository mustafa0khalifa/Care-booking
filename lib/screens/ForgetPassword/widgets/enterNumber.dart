import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/forgetPassProvider.dart';
import 'package:flutter_application_10000/screens/ForgetPassword/forgetPassword.dart';

import '../../auth/mainAuth.dart';

class EnterNumber extends StatefulWidget {
  static const routeName = '/EnterNumber-screen';
  @override
  _EnterNumberState createState() => _EnterNumberState();
}

class _EnterNumberState extends State<EnterNumber> {
  final _numberController = TextEditingController();
  final ForgetPassProvidere forget = ForgetPassProvidere();

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
              Padding(
                padding: EdgeInsets.all(deviceSize.height * 0.038),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Text(
                        "Enter the mobile number associated with FAN account, and we will send you a verification code",
                        style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)),
                      ),
                    ),
                  ],
                ),
              ),
              TextFormField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.blue.shade900, fontSize: 20),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey)),
                    prefixIcon: Icon(Icons.phone_locked_outlined),
                    hintText: 'Enter your number',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.019)),
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
