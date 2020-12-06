import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}
