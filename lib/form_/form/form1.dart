import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String nameError = "";
  String emailError = "";

  void validateForm() {
    setState(() {
      nameError = nameController.text.isEmpty ?
       "Enter Name" : "";
      emailError = emailController.text.contains("@") ?
       "" : "Enter valid Email";
    });

    if (nameError.isEmpty && emailError.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Form Submitted Successfully")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100, // background color
      appBar: AppBar(
        title: Text("Simple Form"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Name",
                errorText: nameError.isEmpty ? null : nameError,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),

            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                errorText: emailError.isEmpty ? null : emailError,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 30),

            ElevatedButton(
              onPressed: validateForm,
              child: Text("Submit"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
