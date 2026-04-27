import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter/reset.dart';
import 'counter/add.dart';
import 'counter/subtract.dart';
import 'counter/reset.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResetPage(),
    );
  }
}