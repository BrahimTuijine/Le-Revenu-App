import 'package:flutter/material.dart';

import '../../../../core/extensions/context.dart';
import '../../../../core/extensions/duration.dart';
import '../../../../core/extensions/num.dart';
import '../../../home/domain/entities/home_entities_export.dart';

class PlaybackProgress extends StatelessWidget {
  const PlaybackProgress({
    required this.playback,
    required this.video,
    super.key,
  });

  final AnimationController playback;
  final VideoShort video;

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
        animation: playback,
        builder: (context, _) {
          final elapsed = video.duration * playback.value;
          return Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: SizedBox(
                  height: 3,
                  child: Stack(
                    children: [
                      Container(color: Colors.white.withValues(alpha: .28)),
                      FractionallySizedBox(
                        widthFactor: playback.value,
                        child: ColoredBox(color: context.primary),
                      ),
                    ],
                  ),
                ),
              ),
              8.fh.bh,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    elapsed.mmss,
                    style:
                        context.h7.copyWith(fontSize: 11, color: Colors.white),
                  ),
                  Text(
                    video.duration.mmss,
                    style: context.h7.copyWith(
                      fontSize: 11,
                      color: Colors.white.withValues(alpha: .6),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      );
}
