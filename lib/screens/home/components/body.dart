import 'package:ecommerce/components/icon_btn_with_counter.dart';
import 'package:ecommerce/components/shortcut.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/home/components/home_block.dart';
import 'package:ecommerce/screens/home/models/home_item.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  List<HomeItem> cates = [
    HomeItem(
        title: 'Smartphone',
        subtitle: '18 Brands',
        background: 'assets/images/Image Banner 2.png'),
    HomeItem(
        title: 'Fashion',
        subtitle: '24 Brands',
        background: 'assets/images/Image Banner 3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildTopBar(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildBanner(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildListShortcuts(),
          SizedBox(height: getProportionateScreenHeight(30)),
          HomeBlock(
            type: HomeBlock.TYPE_CATE,
            headerLeft: 'Special for you',
            headerRight: 'See More',
            items: cates,
          ),
        ],
      ),
    );
  }

  Container buildListShortcuts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shortcut(
            title: 'Flash Deal',
            svgIcon: 'assets/icons/Flash Icon.svg',
          ),
          SizedBox(width: getProportionateScreenWidth(10)),
          Shortcut(
            title: 'Bill',
            svgIcon: 'assets/icons/Bill Icon.svg',
          ),
          SizedBox(width: getProportionateScreenWidth(10)),
          Shortcut(
            title: 'Game',
            svgIcon: 'assets/icons/Game Icon.svg',
          ),
          SizedBox(width: getProportionateScreenWidth(10)),
          Shortcut(
            title: 'Daily Gift',
            svgIcon: 'assets/icons/Gift Icon.svg',
          ),
          SizedBox(width: getProportionateScreenWidth(10)),
          Shortcut(
            title: 'More',
            svgIcon: 'assets/icons/Discover.svg',
          ),
        ],
      ),
    );
  }

  Container buildBanner() {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
      width: double.infinity,
      height: getProportionateScreenHeight(80),
      decoration: BoxDecoration(
        color: Color(0xff4B428A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'A Summer Surpise',
            style: TextStyle(
              color: Colors.white,
              fontSize: getProportionateScreenWidth(11),
            ),
          ),
          Text(
            'Cashback 20%',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: getProportionateScreenWidth(20),
            ),
          )
        ],
      ),
    );
  }

  Row buildTopBar() {
    return Row(
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
    );
  }
}

class BannerProduct extends StatelessWidget {
  const BannerProduct({
    Key key,
    this.title,
    this.subitle,
    this.background,
  }) : super(key: key);

  final String title;
  final String subitle;
  final String background;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            background,
            width: SizeConfig.screenWidth * 0.65,
            height: getProportionateScreenHeight(100),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black.withOpacity(0.2)),
          ),
        ),
        Positioned(
          top: 5,
          left: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                subitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
