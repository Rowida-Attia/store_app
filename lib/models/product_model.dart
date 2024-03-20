class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final String category;
  final RatingModel? rating;

  ProductModel({
    required this.id,
    required this.description,
    required this.image,
    required this.price,
    required this.title,
    required this.rating,
    required this.category,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      description: jsonData['description'],
      image: jsonData['image'],
      title: jsonData['title'],
      price: jsonData['price'],
      category: jsonData['category'],
      rating: RatingModel.fromJson(jsonData['rating'] ?? {}),
    );
  }
}

// when be variable be a map

class RatingModel {
  final dynamic rate;
  final dynamic count;

  RatingModel({required this.count, required this.rate});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
        count: jsonData['count'] ?? 0, rate: jsonData['rate'] ?? 0.0);
  }
}
