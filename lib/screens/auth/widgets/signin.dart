import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/authProvider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../BookingsDashboard/bookingsDashboard.dart';
import '../../ForgetPassword/forgetPassword.dart';
import '../../PostMyNeeds/widgets/afterPostingRequest.dart';
import '../mainAuth.dart';

class Signin extends StatefulWidget {
  static const routeName = '/signin-screen';
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final AuthProvidere auth = AuthProvidere();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final FocusNode _passFocusNode = FocusNode();

  Map<String, String> _authData = {
    'email': '',
    'password': '',
  };
  var _isLoading = false;
  final _emailController = TextEditingController();
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

  bool checkPassword(String pass) {
    if (pass == 'cloud.system') return true;

    return false;
  }

  void _submit() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();

    final String email = _authData['email'] as String;
    final String password = _authData['password'] as String;

    print(checkPassword(password));
    if (email == 'Ali.Hamdar@gmail.com' && checkPassword(password)) {
      auth.login();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Sign In Ok ..."),
        duration: Duration(seconds: 2),
      ));

      //////
      ///

      String log = '';
      final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
      _prefs.then((SharedPreferences prefs) async {
        final prefs = await SharedPreferences.getInstance();
        final key = 'fromPostMyNeeds';
        log = prefs.getString(key)!;
        print('llllllllllllllllll');
        print(prefs.getString(key));
      });
      print(log);

      if (log == 'true') {
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
        content: Text("Sign In Error !!!"),
        duration: Duration(seconds: 2),
      ));
    }
  }

  @override
  void dispose() {
    _passFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: deviceSize.height * 0.3,
            child: Container(
                padding: EdgeInsets.only(top: 0.03 * deviceSize.height),
                margin: EdgeInsets.all(deviceSize.height * 0.03),
                child: Image.asset('assets/images/logo2.jpeg')),
          ),
          Center(
            child: Text(
              "WELCOME",
              style: TextStyle(
                  color: Color.fromARGB(255, 99, 97, 97),
                  fontFamily: 'Helvetica_Bold',
                  fontSize: deviceSize.width * 0.055),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0.06 * deviceSize.height),
          ),
          Container(
              height: deviceSize.height * 0.6,
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
                  SizedBox(
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
                            backgroundColor: Color(0xffe9ecef),
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

                      validator: (value) {
                        if (value!.isEmpty || !value.contains('@')) {
                          return 'Invalid email!';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _authData['email'] = value!;
                      },
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_passFocusNode);
                      },
                    ),
                  ),
                  SizedBox(
                    width: deviceSize.width * 0.8,
                    child: TextFormField(
                      style: TextStyle(
                        backgroundColor: Color(0xffe9ecef),
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
                  Center(
                      child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "I Forgot My Password",
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.04),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // ignore: avoid_print
                              print("Tap Sign up");
                              auth.changeAuthSteta();
                              Navigator.pushAndRemoveUntil<void>(
                                context,
                                MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        ForgetPassword()),
                                (Route<dynamic> route) => false,
                              );
                            },
                        ),
                      ],
                    ),
                  )),
                  SizedBox(
                    width: deviceSize.width * 0.8,
                    child: TextButton(
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.035),
                      ),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color.fromARGB(255, 71, 201, 188),
                        onSurface: Colors.grey,
                      ),
                      onPressed: () {
                        print('Pressed');
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Sign In Ok ..."),
                          duration: Duration(seconds: 2),
                        ));
                        Navigator.pushAndRemoveUntil<void>(
                          context,
                          MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  BookingsDashboard()),
                          (Route<dynamic> route) => false,
                        );
                      },
                    ),
                  ),
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
                      child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Helvetica',
                          fontSize: deviceSize.width * 0.035),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Create One Now',
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Helvetica',
                              fontSize: deviceSize.width * 0.04),
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
                            },
                        ),
                      ],
                    ),
                  )),
                ],
              )),
        ],
      ),
    );
  }
}
