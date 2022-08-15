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
                child: Image.asset('assets/images/auth/Asset 4@1x.png')),
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
                        fontSize: deviceSize.width * 0.04,
                        color: Colors.blue,
                        fontFamily: 'Helvetica',
                      ),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        filled: true,
                        labelStyle: TextStyle(
                            backgroundColor: Colors.white,
                            color: Color.fromARGB(255, 141, 139, 139),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 254, 255, 255),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 255, 255))),
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
                        fontSize: deviceSize.width * 0.04,
                        color: Colors.blue,
                        fontFamily: 'Helvetica',
                      ),
                      decoration: InputDecoration(
                        labelText: 'Password',
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        filled: true,
                        labelStyle: TextStyle(
                            backgroundColor: Colors.white,
                            color: Color.fromARGB(255, 141, 139, 139),
                            fontFamily: 'Helvetica',
                            fontSize: deviceSize.width * 0.04),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 254, 255, 255),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 255, 255))),
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
                  SizedBox(
                    width: deviceSize.width * 0.9,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Color(0xffcbcbcb),
                          ),
                          child: SizedBox(
                            width: deviceSize.width * 0.1913,
                            child: Consumer<AuthProvidere>(
                              builder: (_, foo, __) => CheckboxListTile(
                                activeColor: Colors.green,
                                value: AuthProvidere.valueCheckbox,
                                onChanged: (val) {
                                  foo.changeCheckboxState();
                                },
                              ),
                            ),
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
                                    fontSize: deviceSize.width * 0.035),
                              ),
                              EasyRichTextPattern(
                                targetString: 'and',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 99, 97, 97),
                                    fontFamily: 'Helvetica',
                                    fontSize: deviceSize.width * 0.035),
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
                      child: Text('Sign in'),
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
                    child: EasyRichText(
                      "Forget Password",
                      patternList: [
                        EasyRichTextPattern(
                            targetString: 'Forget Password',
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
                              }),
                      ],
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
                    child: EasyRichText(
                      "Don't have an account: Create one Now",
                      patternList: [
                        EasyRichTextPattern(
                            targetString: 'Don\'t have an account:',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Helvetica',
                                fontSize: deviceSize.width * 0.035)),
                        EasyRichTextPattern(
                          targetString: 'Create one Now',
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
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
