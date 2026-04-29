import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Example"),
      ),
    body: Center(
        child: Stack(
          children: [
            // Background container
  Container(
        width: 200,
                height: 200,
              color: Colors.blue,
            ),

            // Positioned widget (top-left)
    Positioned(
       top: 10,
      left: 10,
     child: Container(
     width: 50,
     height: 50,
        color: Colors.red,
              ),
            ),
            
            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
