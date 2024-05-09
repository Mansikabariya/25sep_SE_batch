import 'package:flutter/material.dart';

class Audio_Page extends StatefulWidget {
  const Audio_Page({super.key});

  @override
  State<Audio_Page> createState() => _Audio_PageState();
}

class _Audio_PageState extends State<Audio_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music"),
      ),
      body: Center(child: Text("Audio Page",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.teal),)),
    );
  }
}