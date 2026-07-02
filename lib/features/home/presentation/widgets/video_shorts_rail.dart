import 'package:flutter/material.dart';

import '../../../../core/extensions/context.dart';
import '../../../../core/extensions/num.dart';
import '../../domain/entities/home_entities_export.dart';
import 'video_short_card.dart';

/// "L'actualité en vidéos courtes": brand-colored section title and
/// horizontal, snapping rail of video thumbnails.
class VideoShortsRail extends StatelessWidget {
  const VideoShortsRail({
    required this.videos,
    required this.onVideoTap,
    super.key,
  });

  final List<VideoShort> videos;
  final ValueChanged<VideoShort> onVideoTap;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.fromLTRB(20.fw, 20.fh, 20.fw, 12.fh),
        child: Row(
          children: [
            Container(width: 8.fw, height: 8.fw, color: context.primary),
            8.fw.bw,
            Text(
              "L'actualité en vidéos courtes",
              style: context.display.copyWith(
                fontSize: 17,
                color: context.primary,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: VideoShortCard.height,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 20.fw),
          itemCount: videos.length,
          separatorBuilder: (_, _) => 11.fw.bw,
          itemBuilder: (_, index) {
            final video = videos[index];
            return VideoShortCard(video: video, onTap: () => onVideoTap(video));
          },
        ),
      ),
    ],
  );
}
