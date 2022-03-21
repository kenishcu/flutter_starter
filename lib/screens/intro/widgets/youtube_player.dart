import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePLayer extends StatefulWidget {

  const YoutubePLayer({Key? key}) : super(key: key);

  @override
  _YoutubePlayerState createState() => _YoutubePlayerState();
}

class _YoutubePlayerState extends State<YoutubePLayer> {

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: '1_s4yyvMaeU',
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
        ),
      ),
    );
  }

}