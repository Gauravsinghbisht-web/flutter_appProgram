import 'package:flutter/material.dart';

class SnackBarExample extends StatefulWidget {
  const SnackBarExample({super.key});

  @override
  State<SnackBarExample> createState() => _SnackBarExampleState();
}

class _SnackBarExampleState extends State<SnackBarExample> {
  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
     content: Text("This is a SnackBar Message"),
     backgroundColor: Colors.green,
      duration: Duration(seconds: 2),
    action: SnackBarAction(
     label: "UNDO",
     textColor: Colors.white,
          onPressed: () {
            // action when clicked
            print("Undo clicked");
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text("SnackBar Example"),
      backgroundColor: Colors.lightBlue,
      ),
     body: Center(
     child: ElevatedButton(
          style: ElevatedButton.styleFrom(
           backgroundColor: Colors.orangeAccent,
          ),
          onPressed: showSnackBar,
          child: Text("Show SnackBar"),
        ),
      ),
    );
  }
}
