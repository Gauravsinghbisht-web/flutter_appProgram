import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  TextEditingController controller = TextEditingController();
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Text",
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  text = controller.text;
                });
              },
              child: const Text("Show Text"),
            ),

            const SizedBox(height: 20),

            Text(
              text,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
