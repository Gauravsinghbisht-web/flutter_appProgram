import 'package:flutter/material.dart';

class ButtonExample extends StatefulWidget {
  const ButtonExample({super.key});

  @override
  State<ButtonExample> createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Count: $count",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: increment,
              child: Text("Increase"),
            ),
            ElevatedButton(
              onPressed: reset,
              child: Text("Reset"),
            ),
            ElevatedButton(
              onPressed: decrement,
              child: Text("Decrease"),
            ),
          ],
        ),
      ),
    );
  }
}
