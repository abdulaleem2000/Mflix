


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Trailer extends StatefulWidget{
  final String videoKey;

  const Trailer({Key? key, required this.videoKey}) : super(key: key);

  @override
  TrailerState createState() =>TrailerState(videoKey);

}

class TrailerState extends State<Trailer>{
  late YoutubePlayerController controller;
  final String videoKey;

  TrailerState(this.videoKey);
  @override
  void initState(){
    super.initState();
    String url = 'https://www.youtube.com/watch?v='+videoKey;
    print(videoKey);
    controller = YoutubePlayerController(
        initialVideoId: videoKey,
    flags: const YoutubePlayerFlags(
      mute: false,
      loop:false,
      autoPlay: true
    )
    );
    YoutubePlayer(
      controller: controller,
      showVideoProgressIndicator: true,
    );
  }
  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
    player: YoutubePlayer(
      controller: controller,
    ),
    builder: (context,player)=>Scaffold(
      body: Column(

        children: [
          SizedBox(height: 30,),
          Text('Movie Trailer',style:TextStyle(
            fontSize: 24,
            letterSpacing: 5
          )),
          SizedBox(height: 30,),
          player,
          SizedBox(height: 16,),

        ],
      )
    ),
  );

}