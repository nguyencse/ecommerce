import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static final routeName = '/ForgotPasswordScreen';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Forgot Password'),
      ),
      body: Body(),
    );
  }
}