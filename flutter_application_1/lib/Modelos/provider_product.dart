class ProviderProduct {
  String? id;
  String? name;
  String? category;
  String? imageUrl;
  String? oldPrice;
  String? price;

  ProviderProduct({
    this.id,
    this.name,
    this.category,
    this.imageUrl,
    this.oldPrice,
    this.price,
  });

  factory ProviderProduct.fromJson(Map<String, dynamic> json) {
    return ProviderProduct(
      id: json['id']?.toString(),
      name: json['name']?.toString(),
      category: json['category']?.toString(),
      imageUrl: json['imageUrl']?.toString(),
      oldPrice: json['oldPrice']?.toString(),
      price: json['price']?.toString(),
    );
  }
}
