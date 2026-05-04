import 'package:flutter/material.dart';

class counterpage extends StatefulWidget {
  const counterpage({super.key});

  @override
  State<counterpage> createState() => _counterpageState();
}

class _counterpageState extends State<counterpage> {
  int count = 0;

  void increment(){
    setState(() {
      count ++;
    });
  }

  void decrement(){
    setState((){
      count --;
    });
  }

  void reset(){
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SetState example"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("count : $count",
            style: TextStyle(fontSize: 30),
            ),
        
        
            SizedBox(height: 20),
            ElevatedButton(onPressed: increment, child: Text("increment"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white),
            ),
        
            SizedBox(height: 20),
            ElevatedButton(onPressed: decrement, child: Text("decrement"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              foregroundColor: Colors.white),
            ),
        
            SizedBox(height: 20),
            ElevatedButton(onPressed: reset, child: Text("reset"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red.shade400,
              foregroundColor: Colors.teal
            ),
            ),
          ],
        ),
      )
      );
  }
}