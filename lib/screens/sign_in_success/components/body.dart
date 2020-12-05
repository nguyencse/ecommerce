import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          Image.asset(
            'assets/images/success.png',
            height: SizeConfig.screenHeight * 0.4,
          ),
          SizedBox(height: getProportionateScreenWidth(20)),
          Text(
            'Sign In Success',
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(28),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          SizedBox(
            width: SizeConfig.screenWidth * 0.5,
            child: DefaultButton(
              title: 'Back to home',
              onPress: () {},
            ),
          ),
        ],
      ),
    );
  }
}
