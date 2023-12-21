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
  late VideoPlayerController videoController;

  @override
  void initState() {
    super.initState();
    final uriUrl = Uri.parse(widget.videoUrl);
    videoController = VideoPlayerController.networkUrl(
            videoPlayerOptions: VideoPlayerOptions(
              webOptions: const VideoPlayerWebOptions(
                allowContextMenu: false,
                allowRemotePlayback: true,
              ),
            ),
            uriUrl)
          ..setVolume(0)
          ..play()
        // ..setLooping()
        ;
  }

  @override
  void dispose() {
    videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: videoController.initialize(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(
                child: CircularProgressIndicator(
              strokeWidth: 2,
            ));
          }
          return AspectRatio(
            aspectRatio: videoController.value.aspectRatio,
            child: VideoPlayer(videoController),
          );
        });
  }
}
