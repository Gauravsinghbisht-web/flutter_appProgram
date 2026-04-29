import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic GridView"),
      ),
      body: GridView.count(
        crossAxisCount: 2, // 2 columns
        children: List.generate(10, (index) {
          return Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "Item ${index + 1}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
