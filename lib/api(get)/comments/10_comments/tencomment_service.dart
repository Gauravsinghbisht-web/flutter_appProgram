import 'dart:convert';
import 'package:http/http.dart' as http;
import 'tencomments_model.dart';

class CommentService {

Future<List<Comment>> fetchComments() async {
  final url = Uri.parse('https://dummy-json.mock.beeceptor.com/comments',
  );
   
   final response = await http.get(url);
   if (response.statusCode == 200) {
    List data = jsonDecode(response.body);
    return data.map((e) => Comment.fromJson(e)).toList();
   }
   else {
    throw Exception("Falied to load comments");
   }

}
}