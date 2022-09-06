import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/authProvider.dart';
import 'package:flutter_application_10000/screens/BookingsDashboard/bookingsDashboard.dart';
import 'package:flutter_application_10000/screens/auth/mainAuth.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../PostMyNeeds/widgets/afterPostingRequest.dart';
import 'package:country_picker/country_picker.dart';

class Signup extends StatefulWidget {
  static const routeName = '/signup-screen';
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final AuthProvidere auth = AuthProvidere();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final FocusNode _mobileFocusNode = FocusNode();
  final FocusNode _passFocusNode = FocusNode();
  final FocusNode _confPassFocusNode = FocusNode();
  String contryCode = '961';

  Map<String, String> _authData = {
    'email': '',
    'mobileNumber': '',
    'password': '',
    'confirmPassword': '',
  };
  var _isLoading = false;
  final _passwordController = TextEditingController();

  void alert(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error Occurred'),
            content: Text(message),
            actions: [
              TextButton(
                child: Text('ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  bool checkPassword(String pass, String confirmPass) {
    if (pass == confirmPass) {
      if (pass == 'cloud.system') return true;
    }

    return false;
  }

  void _submit() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();

    final String email = _authData['email'] as String;
    final String mobileNumber = _authData['mobileNumber'] as String;
    final String password = _authData['password'] as String;
    final String confirmPassword = _authData['confirmPassword'] as String;

    if (email == 'Ali.Hamdar@gmail.com' &&
        checkPassword(password, confirmPassword)) {
      auth.login();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Sign Up Ok ..."),
        duration: Duration(seconds: 2),
      ));

      //////
      final prefs = await SharedPreferences.getInstance();
      if (prefs.getString('fromPostMyNeeds') == 'true') {
        auth.changeFromPostMyNeeds('false');
        Navigator.of(context).pushNamed(
          AfterPostingRequest.routeName,
        );
      } else {
        Navigator.pushAndRemoveUntil<void>(
          context,
          MaterialPageRoute<void>(
              builder: (BuildContext context) => BookingsDashboard()),
          (Route<dynamic> route) => false,
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Sign Up Error !!!"),
        duration: Duration(seconds: 2),
      ));
    }
  }

  @override
  void dispose() {
    _mobileFocusNode.dispose();
    _passFocusNode.dispose();
    _confPassFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: deviceSize.height * 0.77,
            child: Container(
              padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
              margin: EdgeInsets.all(deviceSize.height * 0.03),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      color: Color.fromARGB(255, 248, 199, 217),
                      padding: EdgeInsets.all(3),
                      child: Text(
                        "Create your account",
                        style: TextStyle(
                            color: Color(0xff28306e),
                            fontFamily: 'Helvetica-Bold',
                            fontSize: deviceSize.width * 0.045),
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(top: deviceSize.height * 0.03)),
                    SizedBox(
                      height: deviceSize.height * 0.072,
                      width: deviceSize.width * 0.8,
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: deviceSize.width * 0.035,
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica',
                        ),
                        decoration: InputDecoration(
                          labelText: 'Email',
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
                        //autofocus: ,
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_mobileFocusNode);
                        },
                        validator: (value) {
                          if (value!.isEmpty || !value.contains('@')) {
                            return 'Invalid email!';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _authData['email'] = value!;
                        },
                      ),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.8,
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
                                  border: Border.all(
                                      color: Color(0xffced4da), width: 1),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomLeft: Radius.circular(5))
                                  //more than 50% of width makes circle
                                  ),
                              child: Text(
                                '+ ${contryCode}',
                                style: TextStyle(
                                  fontSize: deviceSize.width * 0.03,
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
                                  print(
                                      'Select country: ${country.phoneCode} ');
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
                            width: deviceSize.width * 0.7,
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
                                    borderSide:
                                        BorderSide(color: Color(0xffced4da))),
                              ),
                              obscureText: true,
                              controller: _passwordController,
                              onFieldSubmitted: (_) {
                                FocusScope.of(context)
                                    .requestFocus(_confPassFocusNode);
                              },
                              focusNode: _passFocusNode,
                              validator: (value) {
                                if (value!.isEmpty || value.length < 5) {
                                  return 'Password is too short!';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _authData['password'] = value!;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      height: deviceSize.height * 0.072,
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
                          FocusScope.of(context)
                              .requestFocus(_confPassFocusNode);
                        },
                        focusNode: _passFocusNode,
                        validator: (value) {
                          if (value!.isEmpty || value.length < 5) {
                            return 'Password is too short!';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _authData['password'] = value!;
                        },
                      ),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      height: deviceSize.height * 0.072,
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
                        validator: (value) {
                          if (value != _passwordController.text) {
                            return 'Passwords do not match!';
                          }
                        },
                        onSaved: (value) {
                          _authData['confirmPassword'] = value!;
                        },
                      ),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.9,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Consumer<AuthProvidere>(
                            builder: (_, foo, __) => Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: Colors.blue,
                              side: BorderSide(
                                  width: 1, color: Color(0xffD3CFC8)),
                              value: AuthProvidere.valueCheckbox,
                              onChanged: (val) {
                                foo.changeCheckboxState();
                              },
                            ),
                          ),
                          Expanded(
                            child: EasyRichText(
                              "I agree to FAN Terms and Services and Privacy Policies",
                              patternList: [
                                EasyRichTextPattern(
                                  targetString: 'I agree to FAN',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 99, 97, 97),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.03),
                                ),
                                EasyRichTextPattern(
                                  targetString: 'and',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 99, 97, 97),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.03),
                                ),
                                EasyRichTextPattern(
                                  targetString: 'Terms and Services',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: deviceSize.width * 0.035),
                                ),
                                EasyRichTextPattern(
                                  targetString: 'Privacy Policies',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: deviceSize.width * 0.035),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: TextButton(
                        child: Text('Sign up now'),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color.fromARGB(255, 71, 201, 188),
                          onSurface: Colors.grey,
                        ),
                        onPressed: () {
                          print('Pressed');
                          _submit();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
              height: deviceSize.height * 0.23,
              width: deviceSize.width,
              padding: EdgeInsets.all(deviceSize.height * 0.03),
              decoration: BoxDecoration(
                  color: Color(0xff28306e),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))
                  //more than 50% of width makes circle
                  ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Text(
                      "______ or Sign in with ______",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Helvetica',
                          fontSize: deviceSize.width * 0.04),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: deviceSize.width * 0.4,
                          height: deviceSize.height * 0.05,
                          child: Container(
                            padding: EdgeInsets.all(deviceSize.width * 0.01),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 248, 248, 248),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    width: deviceSize.width * 0.0765,
                                    'assets/images/google.png'),
                                Text(
                                  'Google',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.04),
                                )
                              ],
                            ),
                          )),
                      Padding(
                          padding:
                              EdgeInsets.only(left: deviceSize.width * 0.03)),
                      SizedBox(
                          width: deviceSize.width * 0.4,
                          height: deviceSize.height * 0.05,
                          child: Container(
                            padding: EdgeInsets.all(deviceSize.width * 0.01),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 248, 248, 248),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    width: deviceSize.width * 0.0765,
                                    'assets/images/facebook.png'),
                                Text(
                                  'Facebook',
                                  style: TextStyle(
                                      color: Color(0xff28306e),
                                      fontFamily: 'Helvetica',
                                      fontSize: deviceSize.width * 0.04),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                  Center(
                    child: EasyRichText(
                      "Already a member? Sign in",
                      defaultStyle: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Helvetica',
                          fontSize: deviceSize.width * 0.035),
                      patternList: [
                        EasyRichTextPattern(
                            targetString: 'Sign in',
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.045),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // ignore: avoid_print
                                print("Tap Sign up");
                                auth.changeAuthSteta();
                                Navigator.pushAndRemoveUntil<void>(
                                  context,
                                  MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          AuthScreen()),
                                  (Route<dynamic> route) => false,
                                );
                              }),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
