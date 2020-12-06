import 'package:ecommerce/components/icon_btn_with_counter.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 16),
                width: SizeConfig.screenWidth * 0.6,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search product',
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20),
                      vertical: getProportionateScreenHeight(9),
                    ),
                  ),
                ),
              ),
              Spacer(),
              IconBtnWithCounter(
                onPress: () {},
                svgIcon: 'assets/icons/Cart Icon.svg',
              ),
              SizedBox(width: getProportionateScreenWidth(10)),
              IconBtnWithCounter(
                onPress: () {},
                svgIcon: 'assets/icons/Bell.svg',
                counter: 3,
              ),
              SizedBox(width: getProportionateScreenWidth(16)),
            ],
          ),
        ],
      ),
    );
  }
}
