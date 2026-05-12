import 'package:flutter/material.dart';
import 'user_service.dart';

class HomePageapi extends StatefulWidget {
  @override
  State<HomePageapi> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageapi> {

  Map<String, dynamic>? user;

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  void getUserData() async {

    user = await UserService.fetchUser();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("GET API"),
      ),

      body: Center(

        child: user == null
            ? CircularProgressIndicator()

            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Icon(
                    Icons.person,
                    size: 80,
                  ),

                  SizedBox(height: 20),

                  Text(
                    user!['name'],
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    user!['email'],
                    style: TextStyle(fontSize: 18),
                  ),

                  SizedBox(height: 10),

                  Text(
                    user!['phone'],
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
      ),
    );
  }
}