import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Shortcut extends StatelessWidget {
  const Shortcut({Key key, this.title, this.svgIcon}) : super(key: key);

  final String title;
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(56),
      child: Column(
        children: [
          Container(
            width: getProportionateScreenWidth(56),
            height: getProportionateScreenHeight(56),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xfff6e7dc),
                borderRadius: BorderRadius.circular(8)),
            child: SvgPicture.asset(
              svgIcon,
              width: getProportionateScreenWidth(24),
              height: getProportionateScreenHeight(24),
            ),
          ),
          SizedBox(height: 4),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
