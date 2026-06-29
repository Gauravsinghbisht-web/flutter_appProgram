import 'package:flutter/material.dart';
import 'home.dart';


class Home extends StatefulWidget{


@override
State<Home> createState()=>_HomeState();

}

class _HomeState extends State<Home>{
bool darkMode = false;
@override
Widget build(BuildContext context){


return MaterialApp(
themeMode : darkMode ? ThemeMode.dark: ThemeMode.light,
darkTheme : ThemeData(
brightness: Brightness.dark),

theme:

ThemeData(brightness: Brightness.light),
home: Scaffold(
appBar: AppBar(
title: Text("Dark Mode"),
actions:[Switch(
value: darkMode,
onChanged:(value){
setState((){
darkMode=value;});
}
)
],
),

body: Center(
child: Text("Hello Flutter",
style: TextStyle(fontSize:30),
),
),
),
);
}

}