import 'package:flutter/material.dart';

//import page
import 'pages/homescreen.dart';
import 'pages/inforscreen.dart';

//import constant values
import 'constant.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Covid 19",
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poplins",
        textTheme: TextTheme(
          body1: TextStyle(color: kBodyTextColor),
        ),
      ),
      home: InfoScreen(),
    );
  }
}

// now i am trying to create infoscreens....
