import 'package:assignment/01.dart';
import 'package:assignment/02.dart';
import 'package:assignment/03.dart';
import 'package:assignment/04.dart';
import 'package:assignment/05.dart';
import 'package:assignment/06.dart';
import 'package:assignment/07.dart';
import 'package:assignment/08.dart';
import 'package:assignment/09.dart';
import 'package:assignment/10.dart';
import 'package:assignment/11.dart';
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
      home: Restaurant(),
    );
  }
}


