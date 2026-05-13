import 'dart:convert';
import 'package:http/http.dart' as http;

class UserService {

  static Future<Map<String, dynamic>>
      fetchUser() async {

    try {

      var response = await http.get(
        Uri.parse("hhttps://jsonplaceholder.typicode.com/photos/1")
      );

      if (response.statusCode == 200) {

        return jsonDecode(response.body);

      } else {

        throw Exception("Failed to load user");
      }

    } catch (e) {

      throw Exception(e.toString());

    }
  }
}