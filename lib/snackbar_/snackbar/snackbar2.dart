import 'package:flutter/material.dart';

class SnackBarTypes extends StatefulWidget {
  const SnackBarTypes({super.key});

  @override
  State<SnackBarTypes> createState() => _SnackBarTypesState();
}

class _SnackBarTypesState extends State<SnackBarTypes> {

  void showSuccessSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("✔ Successfully Saved!"),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 2),
      ),
    );
  }

  void showErrorSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Something went wrong!"),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 5),
      ),
    );
  }

  void showInfoSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("This is an info message"),
        backgroundColor: Colors.blue,
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar Types"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: showSuccessSnackBar,
              child: Text("Success SnackBar"),
            ),

            SizedBox(height: 10),
            ElevatedButton(
              onPressed: showErrorSnackBar,
              child: Text("Error SnackBar"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: showInfoSnackBar,
              child: Text("Info SnackBar"),
            ),

          ],
        ),
      ),
    );
  }
}
