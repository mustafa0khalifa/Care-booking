import 'package:flutter/material.dart';
import 'package:flutter_application_10000/providers/forgetPassProvider.dart';
import 'package:flutter_application_10000/screens/ForgetPassword/widgets/enterCode.dart';
import 'package:flutter_application_10000/screens/ForgetPassword/widgets/enterNumber.dart';
import 'package:flutter_application_10000/screens/ForgetPassword/widgets/resetPass.dart';
import 'package:provider/provider.dart';

class ForgetPassword extends StatelessWidget {
  static const routeName = '/forgetPassword-screen';

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Container(
      height: deviceSize.height,
      width: deviceSize.width,
      margin: EdgeInsets.all(deviceSize.height * 0.03),
      child: Consumer<ForgetPassProvidere>(
        builder: (_, foo, __) => Center(
            child: ForgetPassProvidere.ForgetPassMode == 'enterNumber'
                ? EnterNumber()
                : ForgetPassProvidere.ForgetPassMode == 'enterCode'
                    ? EnterCode()
                    : ResetPassword()),
      ),
    ));
  }
}
