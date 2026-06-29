import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/news_model.dart';



class NewsApi{


Future<List<News>> getNews() async{


final response = await http.get(

Uri.parse(
"https://dummyjson.com/posts"
)

);



if(response.statusCode == 200){


final data = jsonDecode(response.body);


List posts = data['posts'];



return posts

.map((e)=>News.fromJson(e))

.toList();


}

else{

throw Exception("API Error");

}


}


}