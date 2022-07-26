import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/forgetPassProvider.dart';
import 'package:flutter_application_10000/screens/ForgetPassword/forgetPassword.dart';

import '../../auth/mainAuth.dart';

class EnterCode extends StatefulWidget {
  static const routeName = '/EnterCode-screen';
  @override
  _EnterCodeState createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
  final _codeController = TextEditingController();
  final ForgetPassProvidere forget = ForgetPassProvidere();

  void _clickVerify() {
    if (_codeController.text == '0000') {
      forget.changeForgetSteta();
      Navigator.of(context).pushNamed(
        ForgetPassword.routeName,
      );
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Now Reset Password "),
        duration: Duration(seconds: 2),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error Code !!!"),
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
                  "Enter the verification code ",
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.045),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              TextFormField(
                controller: _codeController,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: deviceSize.width * 0.035,
                  color: Color(0xff28306e),
                  fontFamily: 'Helvetica',
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_locked_outlined),
                  hintText: 'Enter Code',
                  fillColor: Color(0xffe9ecef),
                  filled: true,
                  labelStyle: TextStyle(
                      color: Color(0xff495057),
                      fontFamily: 'Helvetica',
                      fontSize: deviceSize.width * 0.035),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xffced4da), width: 1.0),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xffced4da), width: 1.0),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Color(0xffced4da))),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: EasyRichText("Don't get a code? Resend",
                          patternList: [
                            EasyRichTextPattern(
                              targetString: 'italic',
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: deviceSize.width * 0.045),
                            ),
                            EasyRichTextPattern(
                              targetString: 'Resend',
                              style: const TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ]),
                    ),
                  ),
                ],
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
                      print("Tap Verify Code");
                      _clickVerify();
                    },
                    child: Text("Verify Code"),
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
