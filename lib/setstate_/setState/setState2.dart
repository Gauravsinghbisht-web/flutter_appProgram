import 'package:flutter/material.dart';

class Textfeildexample extends StatefulWidget {
  const Textfeildexample({super.key});

  @override
  State<Textfeildexample> createState() => _TextfeildexampleState();
}

class _TextfeildexampleState extends State<Textfeildexample> {
 String name ="";
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfeild + setState"),
        backgroundColor: Colors.purple,
      ),
      body: Padding(padding: const EdgeInsets.all(80),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Enter your name",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              setState(() {
                name = value;
              });
            }
          ),
          SizedBox(height: 20),
          Text("hello, $name",
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
      )
      );
    
  }
}