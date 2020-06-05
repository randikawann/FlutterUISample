import 'package:flutter/material.dart';
import 'package:flutter_ui_sample/pages/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/' : (context) => HomePage(),
      'home' : (context) => HomePage(),
    },
  )
  );
}

