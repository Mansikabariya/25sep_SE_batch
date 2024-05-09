import 'package:assignment_advance_ui/AlertDialogBox.dart';
import 'package:assignment_advance_ui/BottomNavigationBar/Audio.dart';
import 'package:assignment_advance_ui/BottomNavigationBar/Bottom_Navigation_Bar.dart';
import 'package:assignment_advance_ui/BottomNavigationBar/Video.dart';
import 'package:assignment_advance_ui/CityList.dart';
import 'package:assignment_advance_ui/Custom_Toolbar.dart';
import 'package:assignment_advance_ui/Date.dart';
import 'package:assignment_advance_ui/Date_Select.dart';
import 'package:assignment_advance_ui/Exit.dart';
import 'package:assignment_advance_ui/Navigation_Drawer/HomePage.dart';
import 'package:assignment_advance_ui/OptionMenu.dart';
import 'package:assignment_advance_ui/PhoneCall.dart';
import 'package:assignment_advance_ui/Screen.dart';
import 'package:assignment_advance_ui/Screen_2.dart';
import 'package:assignment_advance_ui/Screen_3.dart';
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
      home: Video_Page(),
    );
  }
}