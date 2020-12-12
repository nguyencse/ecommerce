import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

class HeaderBlock extends StatelessWidget {
  const HeaderBlock({Key key, this.titleLeft, this.titleRight})
      : super(key: key);

  final String titleLeft;
  final String titleRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleLeft,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        Text(
          titleRight,
          style: TextStyle(
            color: kTextColor.withAlpha(120),
          ),
        ),
      ],
    );
  }
}
