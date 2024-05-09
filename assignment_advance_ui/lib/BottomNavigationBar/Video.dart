import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video_Page extends StatefulWidget {
  const Video_Page({super.key});

  @override
  State<Video_Page> createState() => _Video_PageState();
}

class _Video_PageState extends State<Video_Page> {

   String? videoId = YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=yZhCTwcjXMA&ab_channel=ShobhitNirwan");

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
      ),
      body: Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: videoId!,
          flags: YoutubePlayerFlags(
            autoPlay: false,
            mute: false,
          ),
          ),
          showVideoProgressIndicator: true,
        ),
    ),
    );
  }
}