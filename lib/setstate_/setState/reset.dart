import 'package:flutter/material.dart';

void main() {
  runApp(ResetPage());
}
class ResetPage extends StatefulWidget {
  const ResetPage({super.key});

  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  int count = 10;
  void reset() {
    setState(() {
      count = 101;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Reset Counter"),
      ),
      body: Center(
        child: Text('$count',
        style: TextStyle(
          fontSize: 40),
        ),
      ),
       floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade800,
        onPressed: reset,
       ),
    );
  }
}