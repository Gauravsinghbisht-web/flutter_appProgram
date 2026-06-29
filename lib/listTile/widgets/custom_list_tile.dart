import 'package:flutter/material.dart';



class CustomListTile extends StatelessWidget{


@override
Widget build(BuildContext context){


return Card(


margin: EdgeInsets.all(10),


child: ListTile(


leading: CircleAvatar(


child: Icon(Icons.person),


),



title: Text(

"Gaurav Bisht",

style: TextStyle(

fontWeight: FontWeight.bold

),

),



subtitle: Text(

"Flutter Developer"

),



trailing: Icon(

Icons.arrow_forward_ios

),



onTap:(){


print("ListTile Clicked");


},


),


);


}


}