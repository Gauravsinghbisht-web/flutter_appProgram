
import 'package:http/http.dart' as http;
import 'package:http/http.dart%20';

class DeleteService {
  Future<String> deletePost() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/');
     final response = await http.delete(url);

    if (response.statusCode == 200 || 
    response.statusCode == 204) {
      return 'Post Deleted Succesfully';
    } else {
      return 'Delete failed';
    }
  }
}