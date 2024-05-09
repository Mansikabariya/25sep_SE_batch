//Create an application with bottom navigation with 3 tabs Gallery,audio and video and design each page with dummy data

import 'package:assignment_advance_ui/BottomNavigationBar/Audio.dart';
import 'package:assignment_advance_ui/BottomNavigationBar/Gallery.dart';
import 'package:assignment_advance_ui/BottomNavigationBar/Video.dart';
import 'package:flutter/material.dart';

class Bottom_Navigation_bar extends StatefulWidget {
  const Bottom_Navigation_bar({super.key});

  @override
  State<Bottom_Navigation_bar> createState() => _Bottom_Navigation_barState();
}

class _Bottom_Navigation_barState extends State<Bottom_Navigation_bar> {

  int? selectedIndex = 0;

  List MyList = [Gallery_Page(), Audio_Page(),Video_Page()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigation Bar",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),

      body: MyList[selectedIndex!],

      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex!,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.photo_album_outlined,),label: "Gallery"),
          BottomNavigationBarItem(icon: Icon(Icons.audio_file_outlined,),label: "Audio"),
          BottomNavigationBarItem(icon: Icon(Icons.video_file_outlined,),label: "Video"),
        ],
        selectedIconTheme: IconThemeData(color: Colors.deepPurple),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        selectedLabelStyle: TextStyle(color: Colors.deepPurple),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}
