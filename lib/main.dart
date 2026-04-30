import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter/reset.dart';
import 'package:provider/provider.dart';
import 'counter/add.dart';
import 'counter/subtract.dart';
import 'counter/reset.dart';
import 'form_/form/form2.dart';
import 'textfeild_/textfeild/textfeild2.dart';
import 'controller_/controller/controller1.dart';
import 'counter/add.dart';
import 'form_/form/form1.dart';
import 'package:flutter_application_1/gridview_/gridview/gridview1.dart';
import 'package:flutter_application_1/listview_/listview/listview1.dart';
import 'package:flutter_application_1/gridview_/gridview/gridview2.dart';
import 'package:flutter_application_1/lifting_state/lifting_stateup/lifting_stateup1.dart';
import 'listview_/listview/listview1.dart';
import 'listview_/listview/listview2.dart';
import 'setstate_/setState/add.dart';
import 'setstate_/setState/reset.dart';
import 'setstate_/setState/subtract.dart';
import 'setstate_/setState/reset.dart';
import 'setstate_/setState/setState1.dart';
import 'setstate_/setState/setState2.dart';
import 'snackbar_/snackbar/snackbar1.dart';
import 'snackbar_/snackbar/snackbar2.dart';
import 'stack_positioned/stack&positioned/stack&positioned.dart';
import 'textfeild_/textfeild/textfeild1.dart';
import 'textfeild_/textfeild/textfeild2.dart';
import 'setstate_/setState/image_like.dart';
import 'provider/counter.dart';
import 'provider/counter_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Counter(),
        child: MyApp()),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
    );
  }
}