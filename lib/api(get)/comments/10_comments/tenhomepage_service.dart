import 'package:flutter/material.dart';
import 'tencomments_model.dart';
import 'tencomment_service.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({super.key});

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {

  final CommentService service = CommentService();

  late Future<List<Comment>> futureComments;
  @override
  void initState() {
    super.initState();
    futureComments = service.fetchComments();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('10 Comments API'),
      ),
      body: FutureBuilder<List<Comment>>(
        future: futureComments,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {

            return Center(
              child: Text(snapshot.error.toString()),
            );
          }

          final comments = snapshot.data!;
          return ListView.builder(
            itemCount: comments.length,
            itemBuilder: (context, index) {
              final comment = comments[index];

              return Card(
                margin: const EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [

                      Text(
                        comment.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 5),
                      Text(comment.email),

                      const SizedBox(height: 10),
                      Text(comment.body),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}