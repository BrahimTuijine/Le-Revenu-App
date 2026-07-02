import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/extensions/context.dart';
import '../../../../core/extensions/num.dart';
import '../../../home/domain/entities/home_entities_export.dart';
import '../../../home/presentation/extensions/news_category_ui.dart';
import '../../../home/presentation/widgets/video_short_card.dart';
import 'paused_badge.dart';
import 'playback_progress.dart';
import 'round_icon_button.dart';

class VideoShortPage extends StatefulWidget {
  const VideoShortPage({required this.video, super.key});

  final VideoShort video;

  @override
  State<VideoShortPage> createState() => _VideoShortPageState();
}

class _VideoShortPageState extends State<VideoShortPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _playback = AnimationController(
    vsync: this,
    duration: widget.video.duration,
  );

  bool _muted = false;

  @override
  void initState() {
    super.initState();
    // The video only starts once visible in the player: playback begins
    // here, never on the home rail.
    _playback
      ..forward()
      ..addStatusListener((_) => setState(() {}));
  }

  @override
  void dispose() {
    _playback.dispose();
    super.dispose();
  }

  void _togglePlayback() {
    setState(() {
      if (_playback.isCompleted) {
        _playback.forward(from: 0);
      } else if (_playback.isAnimating) {
        _playback.stop();
      } else {
        _playback.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final video = widget.video;
    return GestureDetector(
      onTap: _togglePlayback,
      behavior: HitTestBehavior.opaque,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Hero(
            tag: VideoShortCard.heroTag(video),
            child: Material(
              type: MaterialType.transparency,
              child: ColoredBox(
                color: video.category.videoPanelColor,
                child: Center(
                  child: Icon(
                    video.category.icon,
                    size: 72,
                    color: Color.lerp(
                      video.category.videoPanelColor,
                      Colors.white,
                      .22,
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (!_playback.isAnimating) const Center(child: PausedBadge()),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundIconButton(
                        icon: Icons.close_rounded,
                        tooltip: 'Fermer',
                        onTap: context.pop,
                      ),
                      RoundIconButton(
                        icon: _muted
                            ? Icons.volume_off_rounded
                            : Icons.volume_up_rounded,
                        tooltip: _muted ? 'Activer le son' : 'Couper le son',
                        onTap: () => setState(() => _muted = !_muted),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    video.category.label.toUpperCase(),
                    style: context.h7.copyWith(
                      fontSize: 11,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                      color: context.primary,
                    ),
                  ),
                  6.fh.bh,
                  Text(
                    video.title,
                    style: context.display.copyWith(
                      fontSize: 21,
                      height: 1.3,
                      color: Colors.white,
                    ),
                  ),
                  14.fh.bh,
                  PlaybackProgress(playback: _playback, video: video),
                  8.fh.bh,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
