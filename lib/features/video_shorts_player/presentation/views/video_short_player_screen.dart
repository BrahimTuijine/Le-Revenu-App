import 'dart:async';

import 'package:flutter/material.dart';

import '../../../home/presentation/models/video_playlist.dart';
import '../widgets/swipe_hint.dart';
import '../widgets/video_short_page.dart';

class VideoShortPlayerScreen extends StatefulWidget {
  const VideoShortPlayerScreen({required this.playlist, super.key});

  final VideoPlaylist playlist;

  @override
  State<VideoShortPlayerScreen> createState() => _VideoShortPlayerScreenState();
}

class _VideoShortPlayerScreenState extends State<VideoShortPlayerScreen> {
  late final PageController _pageController = PageController(
    initialPage: widget.playlist.initialIndex,
  );

  bool _showSwipeHint = true;
  Timer? _hintTimer;

  @override
  void initState() {
    super.initState();
    _hintTimer = Timer(const Duration(seconds: 4), _dismissSwipeHint);
  }

  @override
  void dispose() {
    _hintTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _dismissSwipeHint() {
    if (mounted && _showSwipeHint) setState(() => _showSwipeHint = false);
  }

  @override
  Widget build(BuildContext context) {
    final videos = widget.playlist.videos;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            onPageChanged: (_) => _dismissSwipeHint(),
            itemCount: videos.length,
            itemBuilder: (_, index) => VideoShortPage(video: videos[index]),
          ),
          if (videos.length > 1)
            IgnorePointer(
              child: AnimatedOpacity(
                opacity: _showSwipeHint ? 1 : 0,
                duration: const Duration(milliseconds: 400),
                child: const SafeArea(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 110),
                      child: SwipeHint(),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
