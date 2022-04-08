class ProductParser {
  List<ProductModel> product = [];

  ProductParser.fromJson(json) {
    json.forEach((v) {
      product.add(ProductModel.fromJson(v));
    });
  }
}

class ProductModel {
  int? id;
  String? title;
  String? description;
  String? category;
  String? image;
  double? price;

  ProductModel.fromJson(Map json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
    price = double.parse(json['price'].toString());
  }
  ProductModel({
    this.id,
    this.title,
    this.description,
    this.category,
    this.image,
    this.price,
  });
}
