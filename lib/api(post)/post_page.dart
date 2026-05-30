import 'package:flutter/material.dart';
import 'post_service.dart';

class PostPage extends StatefulWidget {
  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {

  final PostService service = PostService();

  String result = 'No Data';

  void sendPost() async {

    final response = await service.createPost();//sends data to server

    setState(() {
      result = response;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('POST API Example'),
      ),


      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                onPressed: sendPost,
                child: Text('Send POST Request'),
              ),

              SizedBox(height: 20),

              Text(
                result,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}