import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({Key key, this.text, this.image}) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'TOKYO',
          style: TextStyle(
              fontSize: getProportionateScreenHeight(36), color: kPrimaryColor),
        ),
        Text(text, textAlign: TextAlign.center),
        Spacer(flex: 2),
        Image.asset(
          image,
          width: getProportionateScreenWidth(235),
          height: getProportionateScreenHeight(265),
        ),
      ],
    );
  }
}
