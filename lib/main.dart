// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false ,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
         primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Color(0xff0A0E21),
      ),
      home:  MyHomePage(),
    );
  }
}
