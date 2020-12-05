import 'package:ecommerce/screens/components/body.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  
  static String routeName = '/SplashScreen';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}