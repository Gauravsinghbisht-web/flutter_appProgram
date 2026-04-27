import 'package:flutter/material.dart';


class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  int count = 0;
  void increment() {
    setState(() {
      count ++ ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text("Add Count"),
      ),
      body: Center(
        child: Text ('$count',
        style: TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton : FloatingActionButton (
        backgroundColor: Colors.blue.shade800,
        onPressed: increment,
        child: Icon(Icons.add),
      ),
    );
    }
}