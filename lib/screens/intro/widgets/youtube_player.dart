import 'package:flutter/material.dart';
import 'package:itrapp/controllers/index.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:get/get.dart';

class YoutubePLayer extends GetView<IntroController> {

  const YoutubePLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: "f7kMpqvP2kY",
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );

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
