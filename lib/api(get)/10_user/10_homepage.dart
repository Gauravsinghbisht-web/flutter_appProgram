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

    try {    //try is check for error safety

      var response = await http.get(   //sends get request to the server 
        Uri.parse(
          "https://jsonplaceholder.typicode.com/users",  // parse is convert url to uri
        ),
      );

      if (response.statusCode == 200) {
        users = jsonDecode(response.body);  // here is convert json string to dart list
       }
      else {
        print("Failed to load users");

      }
    } catch (e) {  //it is catch errors like- no internet, wrong url, server error
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
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
      ),

      body: isLoading

          ? Center(
              child: CircularProgressIndicator(), //show circle(loading) animation.
            )

          : ListView.builder(
              itemCount: users.length, //total number of users

              itemBuilder: (context, index) {  //each user one by one
                return Card(

                  margin: EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 6,
                  ),

                  elevation: 25,    //for shadow

                  child: ListTile(  //for row

                    leading: CircleAvatar(
                      radius: 35,
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
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
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