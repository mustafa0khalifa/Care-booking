import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/authProvider.dart';
import 'package:flutter_application_10000/screens/PostMyNeeds/widgets/NavBar.dart';
import 'package:flutter_application_10000/screens/auth/mainAuth.dart';

class EnterAfterPost extends StatefulWidget {
  static const routeName = '/enterAfterPost-screen';
  @override
  _EnterAfterPostState createState() => _EnterAfterPostState();
}

class _EnterAfterPostState extends State<EnterAfterPost> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavBar(),
      body: Container(
        height: deviceSize.height,
        width: deviceSize.width,
        padding: EdgeInsets.only(top: 0.10 * deviceSize.height),
        margin: EdgeInsets.all(deviceSize.height * 0.03),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Your care request has been successfully posted. Please complete your account creation to receive updates on your care requests",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000)),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
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
                    AuthProvidere.authMode = 'Signup';
                    Navigator.of(context).pushNamed(AuthScreen.routeName);
                  },
                ),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
              Text(
                "OR",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000)),
              ),
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
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
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
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
              Padding(padding: EdgeInsets.only(top: deviceSize.height * 0.03)),
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
                          print("Tap Sign in");
                          AuthProvidere.authMode = 'Signin';
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
