class SneakerModel {
  int id;
  String name;
  double price;
  String image;
  String description;
  int quantity;
  Rating rating;

  SneakerModel({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.description,
    required this.quantity,
    required this.rating,
  });

  factory SneakerModel.fromJson(Map<String, dynamic> json) {
    return SneakerModel(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as double,
      image: json['image'] as String,
      description: json['description'] as String,
      quantity: json['quantity'] as int,
      rating: Rating.fromJson(json['rating']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'image': image,
      'description': description,
      'quantity': quantity,
      'rating': rating.toJson(),
    };
  }
}

class Rating {
  double rate;
  int count;


  Rating({
    required this.rate,
    required this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      rate: json['rate'] as double,
      count: json['count'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'rate': rate,
      'count': count,
    };
  }
}

