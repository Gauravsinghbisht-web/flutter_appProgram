import 'package:flutter/material.dart';
import 'comment_model.dart';
import 'comment_service.dart';

class commentapi extends StatefulWidget {
  const commentapi({super.key});

  @override
  State<commentapi> createState() => _commentapiState();
}

class _commentapiState extends State<commentapi> {

  final CommentService service = CommentService();

  CommentModel? comment;

  @override
  void initState() {
    super.initState();
    getComment();
  }

  Future<void> getComment() async {

    comment = await service.fetchComment();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text('Single Comment API'),
      ),

      body: comment == null
          ? const Center(
              child: CircularProgressIndicator(),
            )

          : Center(
              child: Card(
                color: Colors.brown.shade300,
                margin: const EdgeInsets.all(20),

                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Text(
                        comment!.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),
                      Text(comment!.body),

                      const SizedBox(height: 10),
                      Text('ID : ${comment!.id}'),

                      const SizedBox(height: 10),
                      Text('email : ${comment!.email}', 
                      style: TextStyle(
                      fontWeight: FontWeight.bold,
                      ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
    );
  }
}