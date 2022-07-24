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
    return Container(
      height: deviceSize.height,
      width: deviceSize.width,
      padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff000000)),
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
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000)),
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
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000)),
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
              Text(
                "___________ or Sign in with ___________",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000)),
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
    );
  }
}
