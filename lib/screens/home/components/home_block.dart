import 'package:ecommerce/screens/home/components/category_view.dart';
import 'package:ecommerce/screens/home/components/header_block.dart';
import 'package:ecommerce/screens/home/components/product_view.dart';
import 'package:ecommerce/screens/home/models/Product.dart';
import 'package:ecommerce/screens/home/models/home_item.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class HomeBlock extends StatefulWidget {
  const HomeBlock(
      {Key key,
      this.type = TYPE_CATE,
      this.headerLeft,
      this.headerRight,
      this.cates,
      this.products})
      : super(key: key);

  final int type;
  final String headerLeft;
  final String headerRight;
  final List<HomeItem> cates;
  final List<Product> products;

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
        itemBuilder: (ctx, idx) => CategoryView(
          title: widget.cates[idx].title,
          subitle: widget.cates[idx].subtitle,
          background: widget.cates[idx].background,
        ),
        itemCount: widget.cates.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }

  Widget buildListProducts() {
    return SizedBox(
      height: getProportionateScreenHeight(250),
      child: ListView.separated(
        separatorBuilder: (ctx, idx) => SizedBox(width: 10),
        itemBuilder: (ctx, idx) => ProductView(product: widget.products[idx]),
        itemCount: widget.products.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}
