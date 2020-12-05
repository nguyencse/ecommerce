import 'package:ecommerce/screens/sign_in_success/components/body.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class SignInSuccess extends StatelessWidget {
  static final String routeName = '/SignInSuccess';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        centerTitle: true,
        title: Text('Login Success'),
      ),
      body: SafeArea(child: Body()),
    );
  }
}
