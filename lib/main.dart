import 'package:flutter/material.dart';
import 'package:flutter_test6/constant.dart';
import 'package:flutter_test6/screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'clubhouse UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: kBackground),
        scaffoldBackgroundColor: kBackground,
        primaryColor: Colors.white,
        accentColor: kAccentcolor,
        iconTheme: IconThemeData(color:Colors.black),

      ),
      home: HomeScreen(

      ),
    );
  }
}
