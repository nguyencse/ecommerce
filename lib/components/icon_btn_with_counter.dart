import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter(
      {Key key,
      @required this.onPress,
      @required this.svgIcon,
      this.counter = 0})
      : super(key: key);

  final String svgIcon;
  final int counter;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            width: getProportionateScreenWidth(40),
            height: getProportionateScreenHeight(40),
            padding: EdgeInsets.all(getProportionateScreenWidth(10)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(20),
              ),
              color: Colors.grey[200],
            ),
            child: SvgPicture.asset(svgIcon),
          ),
          if (counter != 0)
            Positioned(
              right: getProportionateScreenWidth(4),
              top: getProportionateScreenHeight(4),
              child: Container(
                width: getProportionateScreenWidth(16),
                height: getProportionateScreenHeight(16),
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(2),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  counter.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 10),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
