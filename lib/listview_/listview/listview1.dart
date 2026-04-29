import 'package:flutter/material.dart';

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<String> users = [
    "Rahul",
    "Amit",
    "Priya",
    "Neha",
    "Karan"
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selectable List"),
      ),
      body: ListView.separated(
        itemCount: users.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(users[index]),
            tileColor: selectedIndex == index
                ? Colors.blue.shade100
                : null,
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
          );
        },
      ),
    );
  }
}
