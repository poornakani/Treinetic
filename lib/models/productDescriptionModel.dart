
import 'dart:convert';

ProductDescriptionModel productDescriptionModelFromJson(String str) => ProductDescriptionModel.fromJson(json.decode(str));

String productDescriptionModelToJson(ProductDescriptionModel data) => json.encode(data.toJson());

class ProductDescriptionModel {
  ProductDescriptionModel({
    this.id,
    this.price,
    this.title,
    this.images,
    this.rating,
    this.description,
  });

  String id;
  String price;
  String title;
  String images;
  double rating;
  String description;

  factory ProductDescriptionModel.fromJson(Map<String, dynamic> json) => ProductDescriptionModel(
    id: json["id"],
    price: json["price"],
    title: json["title"],
    images: json["images"],
    rating: json["rating"].toDouble(),
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "price": price,
    "title": title,
    "images": images,
    "rating": rating,
    "description": description,
  };
}
