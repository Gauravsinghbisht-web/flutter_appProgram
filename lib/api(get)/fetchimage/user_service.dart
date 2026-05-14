import 'dart:convert';
import 'package:http/http.dart' as http;

class PhotoService {

  static Future<Map<String, dynamic>> fetchPhoto() async {

    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/photos/1"),
    );

    if (response.statusCode == 200) {

      return jsonDecode(response.body);

    } else {

      throw Exception("Failed to load photo");

    }
  }
}