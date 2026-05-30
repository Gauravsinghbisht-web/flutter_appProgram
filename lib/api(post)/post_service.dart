import 'dart:convert';
import 'package:http/http.dart' as http;

class PostService {

  Future<String> createPost() async {

    final url = Uri.parse(//convert string url to uri format.
      'https://dummyjson.com/posts/add',   // dummy Api url.
    );

    final response = await http.post(url,//post request sends to server and wait for server feedback.
      body: jsonEncode({
        'title': 'Flutter',
        'body': 'Learning POST API',
        'userId': 1,
        'year': 2025,
      }),
    );

    if (response.statusCode == 201) {
      return jsonDecode(response.body);// convert json data to map.
    }
     else {
      return 'Failed to create post';
    }
  }
}
