class ProductData {
  final String name;
  final double price;
  final String image;

  ProductData({required this.name, required this.image, required this.price});

  factory ProductData.fromJson(Map<String, dynamic> json) {
    return ProductData(
        name: json['name'],
        image: json['photos'][0]['url'],
        price: json['current_price'][0]['NGN'][0]);
  }
}
