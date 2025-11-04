import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/project.dart';
import 'package:flutter_application_1/resume.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Homepage(),
      routes:{
        '/home':(context) => Homepage(),
        '/resume':(context) => Resume(),
        '/project':(context) => Project(),
  }
    );
  }
}
