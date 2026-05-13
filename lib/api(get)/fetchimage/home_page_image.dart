import 'package:flutter/material.dart';
import 'user_service.dart';

class imageapi extends StatefulWidget {
  @override
  State<imageapi> createState() => _HomePageState();
}

class _HomePageState extends State<imageapi> {

  Map<String, dynamic>? user;

  @override
  void initState() {
    super.initState();
    getUser();
  }

  Future<void> getUser() async {

    user = await UserService.fetchUser();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("GET API Image"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: Center(

        child: user == null

            ? CircularProgressIndicator()

            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

            Image.network(
                  user!['results'][0]['picture']['large'],
                    width: 150, height: 150,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
    }
    return CircularProgressIndicator();
  },
  errorBuilder: (context, error, stackTrace) {
    return Icon(Icons.error, size: 50);
  },
),

             SizedBox(height: 20),
                  Text(
                    user!['results'][0]['name']['first'],

                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 20),

                  ElevatedButton(

                    onPressed: () {

                      getUser();

                    },

                    child: Text("Load New User"),
                  ),
                ],
              ),
      ),
    );
  }
}