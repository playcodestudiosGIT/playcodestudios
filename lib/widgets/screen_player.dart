import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_platform_interface/video_player_platform_interface.dart';

class ScreenPlayer extends StatefulWidget {
  final String videoUrl;
  const ScreenPlayer({super.key, required this.videoUrl});

  @override
  State<ScreenPlayer> createState() => _ScreenPlayerState();
}

class _ScreenPlayerState extends State<ScreenPlayer> {
  double volume = 0;
  late Uri uriUrl;
  late VideoPlayerController controller;

  Future<void> _initp() async {
    uriUrl = Uri.parse(widget.videoUrl);
    // 'https://drive.google.com/uc?export=download&id=${widget.videoId}');
    controller = VideoPlayerController.networkUrl(
      uriUrl,
      videoPlayerOptions: VideoPlayerOptions(
        webOptions: const VideoPlayerWebOptions(),
      ),
    )
      ..setVolume(volume)
      ..play();
    await controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return const Center(
              child: Icon(Icons.warning),
            );
          }
          return Stack(
            alignment: Alignment.center,
            children: [
              AspectRatio(aspectRatio: 16 / 9, child: VideoPlayer(controller)),
              Positioned(
                  right: 0,
                  top: 0,
                  child: IconButton(
                      icon: (volume == 7)
                          ? const Icon(Icons.volume_off_rounded)
                          : const Icon(Icons.volume_up_rounded),
                      onPressed: () => setState(() {
                            if (volume == 7) {
                              volume = 0;
                            } else {
                              volume = 7;
                            }
                          })))
            ],
          );
        });
  }
}
