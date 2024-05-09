import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video_Page extends StatefulWidget {
  const Video_Page({super.key});

  @override
  State<Video_Page> createState() => _Video_PageState();
}

class _Video_PageState extends State<Video_Page> {

  // String? videoId = YoutubePlayer.convertUrlToId("");

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
      ),
      body: Center(child: Text("Video Player",style: TextStyle(color: Colors.pinkAccent,fontSize: 30,fontWeight: FontWeight.w600),))
    );
  }
}