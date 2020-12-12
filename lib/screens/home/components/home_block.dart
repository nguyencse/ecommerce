import 'package:ecommerce/screens/home/components/body.dart';
import 'package:ecommerce/screens/home/components/header_block.dart';
import 'package:ecommerce/screens/home/models/home_item.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class HomeBlock extends StatefulWidget {
  const HomeBlock({
    Key key,
    this.type = TYPE_CATE,
    this.headerLeft,
    this.headerRight,
    this.items,
  }) : super(key: key);

  final int type;
  final String headerLeft;
  final String headerRight;
  final List<HomeItem> items;

  static const int TYPE_CATE = 0;
  static const int TYPE_PRODUCT = 1;

  @override
  _HomeBlockState createState() => _HomeBlockState();
}

class _HomeBlockState extends State<HomeBlock> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(16),
          ),
          child: HeaderBlock(
            titleLeft: widget.headerLeft,
            titleRight: widget.headerRight,
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(16),
        ),
        if (widget.type == HomeBlock.TYPE_CATE)
          buildListCates()
        else if (widget.type == HomeBlock.TYPE_PRODUCT)
          buildListProducts(),
      ],
    );
  }

  Widget buildListCates() {
    return SizedBox(
      height: getProportionateScreenHeight(100),
      child: ListView.separated(
        separatorBuilder: (ctx, idx) => SizedBox(width: 10),
        itemBuilder: (ctx, idx) => BannerProduct(
          title: widget.items[idx].title,
          subitle: widget.items[idx].subtitle,
          background: widget.items[idx].background,
        ),
        itemCount: widget.items.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }

  Widget buildListProducts() {
    return Container();
  }
}
