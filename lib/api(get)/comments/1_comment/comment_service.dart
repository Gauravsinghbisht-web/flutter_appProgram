import 'dart:convert';

import 'package:http/http.dart' as http;

import 'comment_model.dart';

class CommentService {

  Future<CommentModel> fetchComment() async {

    final response = await http.get(
      Uri.parse(
        'https://jsonplaceholder.typicode.com/comments/1',
      ),
    );

    if (response.statusCode == 200) {

      Map<String, dynamic> data =
          jsonDecode(response.body);

      return CommentModel.fromJson(data);

    } else {

      throw Exception(
        'Failed to load comment',
      );
    }
  }
}