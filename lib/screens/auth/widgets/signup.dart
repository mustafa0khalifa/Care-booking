import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/authProvider.dart';
import 'package:flutter_application_10000/screens/BookingsDashboard/bookingsDashboard.dart';
import 'package:flutter_application_10000/screens/auth/mainAuth.dart';
import 'package:flutter_application_10000/screens/auth/widgets/signin.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../PostMyNeeds/widgets/afterPostingRequest.dart';

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
        Navigator.of(context).pushNamed(
          BookingsDashboard.routeName,
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
                "Create your account",
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
                      "Mobile Number",
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
                        labelText: 'M-Number',
                      ),
                      //autofocus: ,
                      keyboardType: TextInputType.number,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_passFocusNode);
                      },
                      focusNode: _mobileFocusNode,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Invalid number!';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _authData['mobileNumber'] = value!;
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
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_confPassFocusNode);
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
                      "Confirm Password",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000)),
                    ),
                  ),
                  SizedBox(
                    width: deviceSize.width * 0.51,
                    child: TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Confirm Password'),
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
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
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
                  Expanded(
                    child: EasyRichText(
                      "I agree to FAN Terms and Services and Privacy Policies",
                      patternList: [
                        EasyRichTextPattern(
                          targetString: 'italic',
                          style: const TextStyle(fontStyle: FontStyle.italic),
                        ),
                        EasyRichTextPattern(
                          targetString: 'Terms and Services',
                          style: const TextStyle(color: Colors.blue),
                        ),
                        EasyRichTextPattern(
                          targetString: 'Privacy Policies',
                          style: const TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: deviceSize.width * 0.6,
                child: TextButton(
                  child: Text('Sign up now'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.teal,
                    onSurface: Colors.grey,
                  ),
                  onPressed: () {
                    print('Pressed');
                    _submit();
                  },
                ),
              ),
              Text(
                "OR",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                width: deviceSize.width * 0.6,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red //elevated btton background color
                      ),
                  icon: Image.asset(
                      width: deviceSize.width * 0.076,
                      fit: BoxFit.contain,
                      'assets/images/google.png'),
                  onPressed: () {},
                  label: Text("Sign up using Gmail"),
                ),
              ),
              SizedBox(
                width: deviceSize.width * 0.6,
                child: ElevatedButton.icon(
                  icon: Image.asset(
                      width: deviceSize.width * 0.076,
                      fit: BoxFit.contain,
                      'assets/images/facebook.png'),
                  onPressed: () {},
                  label: Text("Sign up using Facebook"),
                ),
              ),
              SizedBox(
                height: deviceSize.height * 0.0127,
              ),
              Center(
                child: EasyRichText(
                  "Already a member? Sign in",
                  patternList: [
                    EasyRichTextPattern(
                      targetString: 'italic',
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    ),
                    EasyRichTextPattern(
                      targetString: 'Sign in',
                      style: const TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // ignore: avoid_print
                          print("Tap Sign up");
                          auth.changeAuthSteta();
                          Navigator.of(context).pushNamed(AuthScreen.routeName);
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
