class Product {
  String name;
  String price;
  String priceUnit;
  String thumbnail;
  bool isLiked;

  Product(
      {this.name,
      this.price,
      this.priceUnit,
      this.thumbnail,
      this.isLiked = false});
}
