import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Section3 extends StatefulWidget {
  const Section3({super.key});

  @override
  State<Section3> createState() => _Section3State();
}

class _Section3State extends State<Section3> {
  late YoutubePlayerController controller;
  var url = "https://www.youtube.com/watch?v=vBq41qUI2Cs&t=1s";

  @override
  void initState() {
    super.initState();
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      // initialVideoId: myVideoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.green,
          Colors.orange,
        ], stops: [
          0.5,
          1
        ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'See what we\'ve been up to ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 50),
                child: YoutubePlayer(
                  controller: controller,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
