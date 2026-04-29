import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  final List<String> items = [
    "Apple",
    "Banana",
    "Mango",
    "Orange",
    "Grapes"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Example"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            leading: Icon(Icons.star),
          );
        },
      ),
    );
  }
}
