import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_platform_interface/video_player_platform_interface.dart';

class ScreenPlayer extends StatefulWidget {
  final String videoUrl;
  const ScreenPlayer({super.key, required this.videoUrl});

  @override
  State<ScreenPlayer> createState() => _ScreenPlayerState();
}

class _ScreenPlayerState extends State<ScreenPlayer> {
  late ChewieController chewieController;
  late VideoPlayerController videoPlayerController;
  double volume = 0;

  Future<void> initControllers() async {
    final uriUrl = Uri.parse(widget.videoUrl);
    videoPlayerController = VideoPlayerController.networkUrl(
      uriUrl,
      videoPlayerOptions: VideoPlayerOptions(
          webOptions: const VideoPlayerWebOptions(
        allowContextMenu: false,
        allowRemotePlayback: true,
      )),
    )..setVolume(volume);

    chewieController = ChewieController(
      aspectRatio: 16 / 9,
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      showOptions: false,
      showControls: false,
      autoInitialize: true
    );
  }

  @override
  void initState() {
    initControllers();
    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox.expand(
          child: Chewie(controller: chewieController),
        ),
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
              }),
            ))
      ],
    );
  }
}
