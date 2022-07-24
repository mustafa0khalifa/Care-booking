import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/forgetPassProvider.dart';
import 'package:flutter_application_10000/screens/ForgetPassword/forgetPassword.dart';

import '../../PostMyNeeds/widgets/BrowseCaregivers/browseCaregivers.dart';
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
      Navigator.of(context).pushNamed(
        BrowseCaregivers.routeName,
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.0127)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000)),
                  ),
                  SizedBox(
                    width: deviceSize.width * 0.76,
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Password'),
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
                  )
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.0127)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Confirm Password",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000)),
                  ),
                  SizedBox(
                    width: deviceSize.width * 0.76,
                    child: TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Confirm Password'),
                      obscureText: true,
                      focusNode: _confPassFocusNode,
                      controller: _confirmPasswordController,
                      validator: (value) {
                        if (value != _passwordController.text) {
                          return 'Passwords do not match!';
                        }
                      },
                    ),
                  )
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.0383)),
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
                      Navigator.of(context).pushNamed(AuthScreen.routeName);
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
