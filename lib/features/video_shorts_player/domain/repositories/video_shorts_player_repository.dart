import 'package:dartz/dartz.dart';
import 'package:forge_annotation/forge_annotation.dart';

import '../../../../core/errors/failures/failures.dart';
import '../../domain/entities/video_shorts_player_entities_export.dart';

abstract class VideoShortsPlayerRepository {
  @GET(endPoint: 'exemple')
  Future<Either<Failure, VideoShortsPlayerEntity>> exemple();
}
