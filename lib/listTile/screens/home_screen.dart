

import 'package:flutter/material.dart';
import '../widgets/custom_list_tile.dart';
import '../widgets/product_card.dart';

class ListTileScreen extends StatelessWidget {
    
    final List product = [
      {
        "name" : "iphone 14",
        "price" : "100000",
        "image" : "https://www.controlz.world/products/apple-iphone-15?srsltid=AfmBOopsc6PLx8WYvss4qRqvhmXA7bAnQCCTXXUlsZeIXkuM-kz9Y8nR"

      },
      {
        "name" : "OnePlus 12",
        "price" : "50000",
        "image" : "https://www.oneplus.in/oneplus-nord-ce4-5g",
    
}
];

@override
Widget build(BuildContext context){

return Scaffold(
appBar: AppBar(
title: Text("Products")),

body: Column(
children:[
CustomListTile(),
SizedBox(height:20),
Expanded(

child: ListView.builder(
itemCount: product.length,
itemBuilder:(context,index){

return ProductCard(
name:product[index]["name"],
price:product[index]["price"],
image:product[index]["image"],

);
},
),
)
],
),
);
}
}