import 'package:flutter/material.dart';

class SubtractPage extends StatefulWidget {
  const SubtractPage({super.key});

  @override
  State<SubtractPage> createState() => _SubtractPageState();
}

class _SubtractPageState extends State<SubtractPage> {
  int count = 0;
  void decrement() {
    setState(() {
      count -- ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade600,
        title: Text("decrement counter"),
      ),
      body: Center(
        child: Text('$count',
        style: TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: decrement,
      child: Icon(Icons.remove),
      ),
    );
  }
}