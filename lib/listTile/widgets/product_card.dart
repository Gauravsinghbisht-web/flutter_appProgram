import 'package:flutter/material.dart';



class ProductCard extends StatelessWidget{


final String name;

final String price;

final String image;



ProductCard({

required this.name,

required this.price,

required this.image,

});





@override
Widget build(BuildContext context){


return Card(


margin: EdgeInsets.all(10),


elevation:5,



child: Padding(


padding: EdgeInsets.all(10),



child: Column(


children:[



Image.network(

image,

height:150,

width:double.infinity,

fit:BoxFit.cover,

),



SizedBox(height:10),



Text(

name,

style:TextStyle(

fontSize:20,

fontWeight:FontWeight.bold

),

),



SizedBox(height:5),



Text(

price,

style:TextStyle(

fontSize:18,

color:Colors.green

),

),



ElevatedButton(


onPressed:(){


print("$name added to cart");


},


child:Text("Add To Cart"),


)


],


),



),


);



}



}