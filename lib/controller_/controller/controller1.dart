import 'package:flutter/material.dart';

class ControllerPage extends StatefulWidget {
  const ControllerPage({super.key});

  @override
  State<ControllerPage> createState() => _ControllerPageState();
}

class _ControllerPageState extends State<ControllerPage> {
  // Controller
  TextEditingController nameController = TextEditingController();

  String displayText = "";

  void showText() {
    setState(() {
      displayText = nameController.text;
    });
  }

  @override
  void dispose() {
    nameController.dispose(); // important
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Controller Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Enter your name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: showText,
              child: const Text("Show Text"),
            ),

            const SizedBox(height: 20),

            Text(
              displayText,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
