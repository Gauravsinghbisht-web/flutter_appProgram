import 'package:flutter/material.dart';

class TextInputScreen extends StatefulWidget {
  @override
  _TextInputScreenState createState() => _TextInputScreenState();
}

class _TextInputScreenState extends State<TextInputScreen> {
  TextEditingController controller = TextEditingController();
  String displayText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Example"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter text",
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  displayText = controller.text;
                });
              },
              child: Text("Submit"),
            ),

            SizedBox(height: 20),

            Text(
              displayText,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
