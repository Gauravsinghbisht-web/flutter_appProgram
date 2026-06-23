
import 'package:flutter/material.dart';
import 'delete_service.dart';

class DeletePage extends StatefulWidget {
  const DeletePage({super.key});

  @override
  State<DeletePage> createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {

  final DeleteService service = DeleteService();
  String result = 'No Action Yet';
  void deleteData() async {
    final response = await service.deletePost();
    setState(() {
      result = response;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delete API"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(result,
            style: TextStyle(
              fontSize: 20,
            ),
            ),

            SizedBox(height: 20),
            ElevatedButton(onPressed: deleteData, 
            child: Text("Delete Post"),
            ),
          ],
        ),
      ),
    );
  }
}