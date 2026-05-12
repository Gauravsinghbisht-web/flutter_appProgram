import 'dart:convert';
import 'package:http/http.dart' as http;

class UserService {

  static Future<Map<String, dynamic>?> fetchUser() async {

    var url = Uri.parse(
      "https://jsonplaceholder.typicode.com/users/1",
    );

    var response = await http.get(url);

    if (response.statusCode == 200) {

      return jsonDecode(response.body);

    } else {

      return null;
    }
  }
}