import 'dart:convert';

import 'package:flutter_5iw2/core/exceptions/api_exception.dart';
import 'package:flutter_5iw2/core/models/product.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future<List<Product>> getProducts() async {
    try {
      final response = await http.get(Uri.parse('https://dummyjson.com/products'));
      if (response.statusCode < 200 || response.statusCode >= 400) {
        throw ApiException(message: 'Error while requesting products', statusCode: response.statusCode);
      }

      final data = json.decode(response.body) as Map<String, dynamic>;
      return (data['products'] as List<dynamic>).map((e) => Product.fromJson(e)).toList();
    } catch (error) {
      throw ApiException(message: 'Unknown error while requesting products');
    }
  }
}
