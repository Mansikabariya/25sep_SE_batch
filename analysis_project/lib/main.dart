import 'package:analysis_project/Coffee_1.dart/Screen_1_Coffee.dart';
//import 'package:analysis_project/Coffee_1.dart/Screen_2_Coffee.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen_1_Coffee(),
    );
  }
}