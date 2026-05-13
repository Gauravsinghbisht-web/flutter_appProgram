import 'package:flutter/material.dart';
import 'package:flutter_application_1/api(get)/comments/10_comments/tenhomepage_service.dart';
import 'package:flutter_application_1/api(get)/comments/1_comment/homepage_comments.dart';
import 'package:flutter_application_1/provider/theme_change/home_page.dart';
import 'package:provider/provider.dart';
import 'form_/form/form2.dart';
import 'textfeild_/textfeild/textfeild2.dart';
import 'controller_/controller/controller1.dart';
import 'form_/form/form1.dart';
import 'package:flutter_application_1/gridview_/gridview/gridview1.dart';
import 'package:flutter_application_1/listview_/listview/listview1.dart';
import 'package:flutter_application_1/gridview_/gridview/gridview2.dart';
import 'package:flutter_application_1/lifting_state/lifting_stateup/lifting_stateup1.dart';
import 'listview_/listview/listview1.dart';
import 'listview_/listview/listview2.dart';
import 'setstate_/setState/Counter.dart';
import 'setstate_/setState/setState2.dart';
import 'snackbar_/snackbar/snackbar1.dart';
import 'snackbar_/snackbar/snackbar2.dart';
import 'stack_positioned/stack&positioned/stack&positioned.dart';
import 'textfeild_/textfeild/textfeild1.dart';
import 'textfeild_/textfeild/textfeild2.dart';
import 'setstate_/setState/image_like.dart';
import 'provider/counter_app/counter.dart';
import 'package:provider/provider.dart';
import 'navigation/Home_screen.dart';
import 'navigation/profile_screen.dart';
import 'navigation/search_screen.dart';
import 'provider/counter_app/counter_provider.dart';
import 'provider/theme_change/theme_provider.dart';
import 'provider/theme_change/home_page.dart';
import 'provider/images_like/UI_HomePage.dart';
import 'provider/images_like/provider.dart';
import 'provider/images_like/provider.dart';
import 'package:flutter_application_1/api(get)/user/1_user/api_homepage.dart';
import 'package:flutter_application_1/api(get)/user/1_user/user_service.dart';
import 'package:flutter_application_1/api(get)/user/10_user/10_homepage.dart';
import 'package:flutter_application_1/api(get)/fetchimage/home_page_image.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => Counter(),
            ),
            ChangeNotifierProvider(
              create: (_) => LikeProvider(),
              ),
      ],
      child: MyApp(),
      )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();  //watch: rebuild UI when data change
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeProvider.islight
      ? ThemeData.dark()
      : ThemeData.light(),
      home: CommentPage(),
    );
  }
}