import 'package:flutter/material.dart';
import '../services/news_api.dart';

import '../models/news_model.dart';



class newss extends StatefulWidget{


@override
State<newss> createState()=>_HomeScreenState();


}



class _HomeScreenState extends State<newss>{


NewsApi api = NewsApi();


late Future<List<News>> news;



@override

void initState(){

super.initState();


news = api.getNews();


}



@override

Widget build(BuildContext context){



return Scaffold(


appBar: AppBar(

title: Text("News App"),

),



body: FutureBuilder<List<News>>(


future: news,


builder:(context,snapshot){



if(snapshot.connectionState ==
ConnectionState.waiting){


return Center(

child:CircularProgressIndicator(),

);


}



if(snapshot.hasData){


return ListView.builder(


itemCount:snapshot.data!.length,


itemBuilder:(context,index){


final item =
snapshot.data![index];



return Card(

child:ListTile(

title:Text(item.title),


subtitle:Text(item.description),


),


);


});


}



return Center(

child:Text("No Data"),

);


},



),


);


}


}