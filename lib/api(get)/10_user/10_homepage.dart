import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class tenuser extends StatefulWidget {
  @override
  State<tenuser> createState() => _HomePageState();
}

class _HomePageState extends State<tenuser> {

  List<dynamic> users = [];

  bool isLoading = true;

  Future<void> fetchUsers() async {

    try {

      var response = await http.get(
        Uri.parse(
          "https://jsonplaceholder.typicode.com/users",
        ),
      );

      if (response.statusCode == 200) {

        users = jsonDecode(response.body);

      } else {

        print("Failed to load users");

      }

    } catch (e) {

      print("Error: $e");

    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("10 Users API"),
        centerTitle: true,
      ),

      body: isLoading

          ? Center(
              child: CircularProgressIndicator(),
            )

          : ListView.builder(

              itemCount: users.length,

              itemBuilder: (context, index) {

                return Card(

                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),

                  elevation: 5,

                  child: ListTile(

                    leading: CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.person),
                    ),

                    title: Text(
                      users[index]['name'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(height: 5),

                        Text(
                          users[index]['email'],
                        ),

                        SizedBox(height: 5),

                        Text(
                          users[index]['phone'],
                        ),

                        SizedBox(height: 5),

                        Text(
                          users[index]['website'],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}