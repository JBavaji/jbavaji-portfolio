import 'package:flutter/material.dart';
import 'package:portfolio/app_config/assets_data.dart';
import 'package:video_player/video_player.dart';

class AssetVideoPlayer extends StatefulWidget {
  const AssetVideoPlayer({Key? key}) : super(key: key);

  @override
  State<AssetVideoPlayer> createState() => _AssetVideoPlayerState();
}

class _AssetVideoPlayerState extends State<AssetVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(AppAssets.homeBannerVideo);

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build1(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(55),
        child: VideoPlayer(_controller),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double _aspectRatio = 9 / 16;

    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          height: size.height,
          width: size.width,
          child: AspectRatio(
            aspectRatio: _aspectRatio,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                VideoPlayer(_controller),
                VideoProgressIndicator(_controller, allowScrubbing: true),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
