import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:apiflutter/api_service.dart';

class ApiService {
  final String baseUrl = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<Post>> getPosts() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      return body.map((dynamic item){
        return Post.fromMap(item);
      }).toList();
    }
    return[];
    }
}