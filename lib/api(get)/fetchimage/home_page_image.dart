import 'package:flutter/material.dart';
import 'user_service.dart';

class imageapi extends StatefulWidget {

  @override
  State<imageapi> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<imageapi> {

  Map<String, dynamic>? photo;

  @override
  void initState() {
    super.initState();
    getPhoto();
  }

  Future<void> getPhoto() async {

    photo = await PhotoService.fetchPhoto();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("GET API Image"),
        backgroundColor: Colors.blue,
      ),

      body: Center(

        child: photo == null

            ? const CircularProgressIndicator()

            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.network(
                    photo!['url'],
                    width: 200,
                    height: 200,
                  ),

                  const SizedBox(height: 20),

                  Text(
                    photo!['title'],
                    textAlign: TextAlign.center,

                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}