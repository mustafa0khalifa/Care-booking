import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/forgetPassProvider.dart';
import 'package:flutter_application_10000/screens/BookingsDashboard/bookingsDashboard.dart';

import '../../auth/mainAuth.dart';

class ResetPassword extends StatefulWidget {
  static const routeName = '/ResetPassword-screen';
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final ForgetPassProvidere forget = ForgetPassProvidere();
  final FocusNode _confPassFocusNode = FocusNode();

  void _clickReset() {
    if (_passwordController.text == _confirmPasswordController.text &&
        _passwordController.text == 'cloud.system') {
      forget.changeForgetSteta();
      Navigator.pushAndRemoveUntil<void>(
        context,
        MaterialPageRoute<void>(
            builder: (BuildContext context) => BookingsDashboard()),
        (Route<dynamic> route) => false,
      );
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Reset Password Password ok ..."),
        duration: Duration(seconds: 2),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error Reset Password !!!"),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              SizedBox(
                width: deviceSize.width * 0.8,
                child: TextFormField(
                  style: TextStyle(
                    fontSize: deviceSize.width * 0.035,
                    color: Color(0xff28306e),
                    fontFamily: 'Helvetica',
                  ),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    fillColor: Color(0xffe9ecef),
                    filled: true,
                    labelStyle: TextStyle(
                        color: Color(0xff495057),
                        fontFamily: 'Helvetica',
                        fontSize: deviceSize.width * 0.035),
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
                  obscureText: true,
                  controller: _passwordController,
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_confPassFocusNode);
                  },
                  validator: (value) {
                    if (value!.isEmpty || value.length < 5) {
                      return 'Password is too short!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              SizedBox(
                width: deviceSize.width * 0.8,
                child: TextFormField(
                  style: TextStyle(
                    fontSize: deviceSize.width * 0.035,
                    color: Color(0xff28306e),
                    fontFamily: 'Helvetica',
                  ),
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    fillColor: Color(0xffe9ecef),
                    filled: true,
                    labelStyle: TextStyle(
                        color: Color(0xff495057),
                        fontFamily: 'Helvetica',
                        fontSize: deviceSize.width * 0.035),
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
                  obscureText: true,
                  focusNode: _confPassFocusNode,
                  controller: _confirmPasswordController,
                  validator: (value) {
                    if (value != _passwordController.text) {
                      return 'Passwords do not match!';
                    }
                  },
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: deviceSize.width * 0.043)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Colors.greenAccent //elevated btton background color
                        ),
                    onPressed: () {
                      // ignore: avoid_print
                      print("Tap Verify Code");
                      _clickReset();
                    },
                    child: Text("Verify Code"),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: deviceSize.width * 0.043)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:
                            Colors.redAccent //elevated btton background color
                        ),
                    onPressed: () {
                      // ignore: avoid_print
                      print("Tap Cancel");
                      forget.cancelForgetSteta();
                      Navigator.pushAndRemoveUntil<void>(
                        context,
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) => AuthScreen()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: Text("Cnacel"),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: deviceSize.width * 0.043)),
                ],
              )
            ],
          ),
        ));
  }
}
