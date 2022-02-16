// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
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

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
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
  static List<ProductModel> productFromSnapshot(List snapshot){
    return snapshot.map((data) {
      return ProductModel.fromJson(data);
    }).toList();
  }

  String toString(){
    return 'ProductModel {id: $id, price: $price, title: $title, images: $images, rating: $rating, description: $description}';
  }
}
