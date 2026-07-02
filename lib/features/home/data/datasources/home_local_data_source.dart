import 'package:injectable/injectable.dart';

import '../../../../core/data/home_data.dart';
import '../models/home_models_export.dart';

/// Provides the raw home page data.
///
/// Abstracted so the repository does not care whether articles come from a
/// local fake, a cache or a remote API.
abstract class HomeLocalDataSource {
  Future<List<ArticleModel>> fetchArticles();

  Future<List<VideoShortModel>> fetchVideoShorts();
}

/// Fake implementation: serves an in-memory, JSON-shaped payload after a
/// short delay, mimicking a network round-trip.
@LazySingleton(as: HomeLocalDataSource)
class FakeHomeLocalDataSource implements HomeLocalDataSource {
  FakeHomeLocalDataSource({required this.homeData});

  final HomeData homeData;

  final _networkDelay = Duration(milliseconds: 450);

  @override
  Future<List<ArticleModel>> fetchArticles() async {
    await Future<void>.delayed(_networkDelay);
    final now = DateTime.now();
    return homeData.payload(now).map(ArticleModel.fromJson).toList();
  }

  @override
  Future<List<VideoShortModel>> fetchVideoShorts() async {
    await Future<void>.delayed(_networkDelay);
    return homeData.videosPayload.map(VideoShortModel.fromJson).toList();
  }
}
