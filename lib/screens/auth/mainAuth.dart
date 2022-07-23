import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/authProvider.dart';
import 'package:flutter_application_10000/screens/auth/widgets/signin.dart';
import 'package:flutter_application_10000/screens/auth/widgets/signup.dart';
import 'package:provider/provider.dart';

import '../../providers/authProvider.dart';
import 'widgets/signup.dart';

enum AuthMode { Signup, Signin }

class AuthScreen extends StatelessWidget {
  static const routeName = '/auth-screen';

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Container(
      height: deviceSize.height,
      width: deviceSize.width,
      child: Consumer<AuthProvidere>(
        builder: (_, foo, __) => Center(
            child: AuthProvidere.authMode == 'Signup' ? Signup() : Signin()),
      ),
    ));
  }
}
