import 'dart:async';

import 'package:flutter/material.dart';

import '../../../home/presentation/models/video_playlist.dart';
import '../widgets/swipe_hint.dart';
import '../widgets/video_short_page.dart';

/// Full-screen player for the short videos, reached with a hero animation
/// from the home rail.
///
/// Works like TikTok: a vertical [PageView] over the whole playlist — swipe
/// up/down to change video. A one-shot animated hint tells the user the
/// screen is swipeable; it disappears after a few seconds or on first swipe.
///
/// The playback is simulated (fake data, no real media): a controller
/// animates the progress over the real duration of the video, and can be
/// paused/resumed by tapping the screen.
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
