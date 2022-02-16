import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:treinetic/models/productList.dart';

class ProductAPI {
  static Future<List<ProductModel>> getProduct()async {
   // final response = await http.get(Uri.https('https://api.npoint.io/a907f54f4d95e9e31711'));
    try{
      final response = await http.get(Uri.parse('https://api.npoint.io/a907f54f4d95e9e31711'));

      if(response.statusCode==200){
        List jsonResponse = json.decode(response.body);
        return jsonResponse.map((data) => new ProductModel.fromJson(data)).toList();
      }
      else{
        throw Exception('Unexpected error occured!');
      }
    }
    catch (e){
      //return List<ProductModel>();
    }
   //  return ProductModel.productFromSnapshot(snapshot)
  }
}