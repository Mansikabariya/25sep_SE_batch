//Create an application to change background when button is clicked.

import 'package:flutter/material.dart';

class BackgroundChange extends StatefulWidget {
  const BackgroundChange({super.key});

  @override
  State<BackgroundChange> createState() => _BackgroundChangeState();
}

class _BackgroundChangeState extends State<BackgroundChange> {
  Color BG = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG,
      body: Center(
        child: ElevatedButton(onPressed: () {
          setState(() {
            BG = Colors.pinkAccent;
          });
        }, child: Text("Click Here!")),
      ),
    );
  }
}