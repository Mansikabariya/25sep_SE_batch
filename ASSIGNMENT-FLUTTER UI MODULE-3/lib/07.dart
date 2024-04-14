//Write a program to show four images around Textview. 

import 'package:flutter/material.dart';

class ImageText extends StatefulWidget {
  const ImageText({super.key});

  @override
  State<ImageText> createState() => _ImageTextState();
}

class _ImageTextState extends State<ImageText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images Around Text"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/image1.jpg",height: 150, width: 150),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/image2.jpg",height: 150,width: 150),
              
              Text("Nature",style: TextStyle(color: Colors.green,fontSize: 20),),
              
              Image.asset("assets/images/image3.jpg",height: 150,width: 150),
            ],
          ),
          Image.asset("assets/images/image4.jpg",height: 150,width: 150),
        ],
      )
    );
  }
}
