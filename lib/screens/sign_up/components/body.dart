import 'package:ecommerce/components/social_card.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

import 'form_sign_up.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.04),
            Text('Register Account', style: kTextStyleHeading),
            Text(
              'Complete your details or countinue\nwith your social media',
              textAlign: TextAlign.center,
            ),
            FormSignUp(),
            SizedBox(height: getProportionateScreenHeight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                    svgIcon: 'assets/icons/google-icon.svg', onTap: () {}),
                SizedBox(width: 8),
                SocialCard(
                    svgIcon: 'assets/icons/facebook-2.svg', onTap: () {}),
                SizedBox(width: 8),
                SocialCard(svgIcon: 'assets/icons/twitter.svg', onTap: () {}),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.06),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'By continuing your confirm that you agree\nwith our ',
                  style: TextStyle(fontFamily: "Muli", color: kTextColor),
                  children: [
                    TextSpan(
                      text: 'Terms and Conditions',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
