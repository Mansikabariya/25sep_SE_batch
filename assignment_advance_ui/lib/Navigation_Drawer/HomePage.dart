import 'package:assignment_advance_ui/BottomNavigationBar/Audio.dart';
import 'package:assignment_advance_ui/BottomNavigationBar/Gallery.dart';
import 'package:assignment_advance_ui/BottomNavigationBar/Video.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget CurrentPage = Gallery_Page();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Navigation Drawer"),
        backgroundColor: Colors.teal,
      ),
     body: CurrentPage,
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 186, 163, 250),
              ),
            ),
            ListTile(
              leading: Icon(Icons.photo_outlined),
              title: Text("Gallery"),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  CurrentPage = Gallery_Page();
                });
              },
            ),
            ListTile(
                leading: Icon(Icons.music_note_outlined),
                title: Text("Audio"),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    CurrentPage = Audio_Page();
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.play_arrow_outlined),
                title: Text("Video"),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    CurrentPage = Video_Page();
                  });
                },
              ),
          ],
        )
      ),
    );;
  }
}