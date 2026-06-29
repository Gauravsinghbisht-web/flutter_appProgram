import 'package:flutter/material.dart';

import '../database/hive_service.dart';

import '../models/user_model.dart';



class hive extends StatefulWidget{


@override
State<hive> createState()=>_HomeState();


}
class _HomeState extends State<hive>{
TextEditingController name =
TextEditingController();
TextEditingController age =
TextEditingController();

List<UserModel> users=[];
@override
void initState(){super.initState();
loadUsers();
}

void loadUsers(){
users = HiveService.getUsers();
setState((){});
}

void saveUser(){
final user = UserModel(name:name.text,
age:int.parse(age.text));
HiveService.addUser(user);
name.clear();
age.clear();
loadUsers();
}

void delete(int index){
HiveService.deleteUser(index);
loadUsers();
}

@override
Widget build(BuildContext context){
return Scaffold(
appBar: AppBar(
title: Text("Hive Example")),
body: Column(children:[
TextField(
controller:name,
decoration : InputDecoration(hintText:"Name")),


TextField(controller:age,
keyboardType:
TextInputType.number,

decoration:
InputDecoration(hintText:"Age")),

ElevatedButton(
onPressed:saveUser,
child:Text("Save"),),

Expanded(
child:ListView.builder(
itemCount:users.length,
itemBuilder:(context,index){

return ListTile(
title:Text(users[index].name),


subtitle:Text(users[index].age.toString()),
trailing:IconButton(
icon:Icon(Icons.delete),
onPressed:(){
delete(index);
},
),
);
},
),
)
],
),
);
}
}