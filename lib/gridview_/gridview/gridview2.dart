import 'package:flutter/material.dart';

class GridMenuScreen extends StatelessWidget {
  final List<IconData> icons = [
    Icons.home,
    Icons.person,
    Icons.settings,
    Icons.phone,
  ];

  final List<String> titles = [
    "Home",
    "Profile",
    "Settings",
    "Call",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Menu"),
      ),
      body: GridView.count(
        crossAxisCount: 3, // 3 columns
        padding: EdgeInsets.all(10),
        children: List.generate(icons.length, (index) {
          return Card(
            elevation: 38,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icons[index],
                  size: 40,
                  color: Colors.blue,
                ),
                SizedBox(height: 10),
                Text(
                  titles[index],
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
