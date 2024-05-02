import 'dart:convert';
import 'dart:developer';

import 'package:flutter_5iw2/core/models/photo.dart';
import 'package:flutter_5iw2/core/models/post.dart';
import 'package:flutter_5iw2/core/models/user.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future<List<Post>> getPosts() async {
    try {
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      // Simulate call length for loader display
      await Future.delayed(const Duration(seconds: 1));

      if (response.statusCode < 200 || response.statusCode >= 400) {
        throw Error();
      }

      final data = json.decode(response.body);
      return (data as List<dynamic>?)?.map((e) {
            return Post.fromJson(e);
          }).toList() ?? [];
    } catch (error) {
      log('Error occurred while retrieving posts.', error: error);
      rethrow;
    }
  }

  static Future<List<User>> getUsers() async {
    try {
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      // Simulate call length for loader display
      await Future.delayed(const Duration(seconds: 1));

      if (response.statusCode < 200 || response.statusCode >= 400) {
        throw Error();
      }

      final data = json.decode(response.body);
      return (data as List<dynamic>?)?.map((e) {
            return User.fromJson(e);
          }).toList() ?? [];
    } catch (error) {
      log('Error occurred while retrieving users.', error: error);
      rethrow;
    }
  }

  static Future<List<Photo>> getPhotos() async {
    try {
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
      // Simulate call length for loader display
      await Future.delayed(const Duration(seconds: 1));

      if (response.statusCode < 200 || response.statusCode >= 400) {
        throw Error();
      }

      final data = json.decode(response.body);
      return (data as List<dynamic>?)?.map((e) {
        return Photo.fromJson(e);
      }).toList() ?? [];
    } catch (error) {
      log('Error occurred while retrieving photos.', error: error);
      rethrow;
    }
  }
}
