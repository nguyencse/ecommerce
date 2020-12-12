import 'package:ecommerce/screens/home/models/Product.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductView extends StatelessWidget {
  const ProductView({
    Key key,
    this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: getProportionateScreenWidth(140),
          height: getProportionateScreenHeight(140),
          decoration: BoxDecoration(
            color: Color(0xFFE8E8EB),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(
            product.thumbnail,
            width: getProportionateScreenWidth(100),
            height: getProportionateScreenHeight(100),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          width: getProportionateScreenWidth(140),
          child: Text(
            product.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 2),
          width: getProportionateScreenWidth(140),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$' + product.price,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: getProportionateScreenWidth(20),
                height: getProportionateScreenHeight(20),
                decoration: BoxDecoration(
                  color: Color(0xFFE8E8EB).withAlpha(150),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  'assets/icons/Heart Icon_2.svg',
                  width: 10,
                  height: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
