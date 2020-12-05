import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key key, this.title, this.onPress}) : super(key: key);
  final String title;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        color: kPrimaryColor,
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Text(
          'Continue',
          style: TextStyle(
              color: Colors.white, fontSize: getProportionateScreenWidth(18)),
        ),
      ),
    );
  }
}
