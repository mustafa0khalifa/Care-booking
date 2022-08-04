import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/authProvider.dart';
import 'package:flutter_application_10000/screens/ForgetPassword/forgetPassword.dart';
import 'package:flutter_application_10000/screens/auth/widgets/signup.dart';
import 'package:flutter_application_10000/theme/style.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../BookingsDashboard/bookingsDashboard.dart';
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
        Navigator.of(context).pushNamed(
          BookingsDashboard.routeName,
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
                  color: Color(0xffcbcbcb),
                  fontFamily: 'Helvetica_Bold',
                  fontSize: 24),
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Text(
                        "Email",
                        style: TextStyle(
                            color: Color.fromARGB(255, 253, 254, 255),
                            fontFamily: 'Helvetica',
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xffcbcbcb),
                          fontFamily: 'Helvetica',
                        ),
                        decoration: InputDecoration(
                          labelText: 'info@findnurse.com',
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                          labelStyle: TextStyle(
                              color: Color(0xffcbcbcb),
                              fontFamily: 'Helvetica',
                              fontSize: 12),
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
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(top: deviceSize.height * 0.03)),
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: Text(
                        "Password",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'Helvetica',
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.8,
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xffcbcbcb),
                          fontFamily: 'Helvetica',
                        ),
                        decoration: InputDecoration(
                          labelText: '************',
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                          labelStyle: TextStyle(
                              color: Color(0xffcbcbcb),
                              fontFamily: 'Helvetica',
                              fontSize: 12),
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
                    Padding(
                        padding:
                            EdgeInsets.only(top: deviceSize.height * 0.01)),
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
                                      color: Color(0xffcbcbcb),
                                      fontFamily: 'Helvetica',
                                      fontSize: 12),
                                ),
                                EasyRichTextPattern(
                                  targetString: 'and',
                                  style: TextStyle(
                                      color: Color(0xffcbcbcb),
                                      fontFamily: 'Helvetica',
                                      fontSize: 12),
                                ),
                                EasyRichTextPattern(
                                  targetString: 'Terms and Services',
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 18, 101, 168),
                                      fontSize: 12),
                                ),
                                EasyRichTextPattern(
                                  targetString: 'Privacy Policies',
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 18, 101, 168),
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(top: deviceSize.height * 0.01)),
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
                          _submit();
                        },
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(top: deviceSize.height * 0.01)),
                    Center(
                      child: Text(
                        "______ or Sign in with ______",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'Helvetica',
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(top: deviceSize.height * 0.03)),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                        fontSize: 16),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(top: deviceSize.height * 0.03)),
                    Center(
                      child: EasyRichText(
                        "Don't have an account? Create one Now",
                        patternList: [
                          EasyRichTextPattern(
                              targetString: 'Don\'t have an account?',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontFamily: 'Helvetica',
                                  fontSize: 12)),
                          EasyRichTextPattern(
                            targetString: 'Create one Now',
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: 'Helvetica',
                                fontSize: 12),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // ignore: avoid_print
                                print("Tap Sign up");
                                auth.changeAuthSteta();
                                Navigator.of(context)
                                    .pushNamed(AuthScreen.routeName);
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}


/*


 Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Sign In",
                style: TextStyle(
                    color: Color(0xff28306e),
                    fontFamily: 'Helvetica-Bold',
                    fontSize: 24),
              ),
              SizedBox(
                height: deviceSize.height * 0.0217,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: deviceSize.width * 0.2,
                    child: Text(
                      "Email",
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica',
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: deviceSize.width * 0.51,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'E-Mail',
                      ),
                      //autofocus: ,
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_passFocusNode);
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
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: deviceSize.width * 0.2,
                    child: Text(
                      "Password",
                      style: TextStyle(
                          color: Color(0xff28306e),
                          fontFamily: 'Helvetica',
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: deviceSize.width * 0.51,
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Password'),
                      obscureText: true,
                      controller: _passwordController,
                      onFieldSubmitted: (_) {},
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
                  )
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.0127)),
              Row(
                children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: deviceSize.width * 0.0382)),
                  Expanded(
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.teal,
                        onSurface: Colors.grey,
                      ),
                      onPressed: () {
                        print('Pressed Sigin');
                        _submit();
                      },
                      child: Text("Sign In"),
                    ),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(left: deviceSize.width * 0.0382)),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.0127)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: EasyRichText(
                        "Forgot Password ?",
                        patternList: [
                          EasyRichTextPattern(
                            targetString: 'italic',
                            style: const TextStyle(fontStyle: FontStyle.italic),
                          ),
                          EasyRichTextPattern(
                            targetString: 'Forgot Password ?',
                            style: const TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // ignore: avoid_print
                                print("Tap Forgot Password ?");
                                Navigator.of(context).pushNamed(
                                  ForgetPassword.routeName,
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.0127)),
              Center(
                child: Text(
                  "___________ or Sign in with ___________",
                  style: TextStyle(
                      color: Color(0xff28306e),
                      fontFamily: 'Helvetica',
                      fontSize: 18),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: deviceSize.height * 0.0127)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: deviceSize.width * 0.0255)),
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red //elevated btton background color
                          ),
                      icon: Image.asset(
                          width: deviceSize.width * 0.0765,
                          fit: BoxFit.contain,
                          'assets/images/google.png'),
                      onPressed: () {},
                      label: Text("Google"),
                    ),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(left: deviceSize.width * 0.0255)),
                  Expanded(
                    child: ElevatedButton.icon(
                      icon: Image.asset(
                          width: deviceSize.width * 0.0765,
                          fit: BoxFit.contain,
                          'assets/images/facebook.png'),
                      onPressed: () {},
                      label: Text("Facebook"),
                    ),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(left: deviceSize.width * 0.0255)),
                ],
              ),
              SizedBox(
                height: deviceSize.height * 0.0127,
              ),
              Center(
                child: EasyRichText(
                  "Don't have an account? Create one Now",
                  patternList: [
                    EasyRichTextPattern(
                      targetString: 'italic',
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    ),
                    EasyRichTextPattern(
                      targetString: 'Create one Now',
                      style: const TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          {
                            {
                              // ignore: avoid_print
                              print("Tap Sign in");
                              auth.changeAuthSteta();
                              Navigator.of(context)
                                  .pushNamed(AuthScreen.routeName);
                            }
                          }
                        },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
  

  */