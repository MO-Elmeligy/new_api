import 'package:flutter/material.dart';
import 'package:weather_app/pages/home.dart';//package:appname/folder name/page name 


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//اخفاء علامة المبتدئين
      home: WelcomeScreen(),//استدعاء اول صفحة
    );
  }
}



