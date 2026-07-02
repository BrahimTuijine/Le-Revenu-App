part of '../../../../core/router/router.dart';

class VideoShortRoute extends GoRouteData with $VideoShortRoute {
  const VideoShortRoute(this.$extra);

  /// The playlist (videos + tapped index) is passed as route extra: no
  /// lookup needed on the player side, and the hero animation stays
  /// seamless.
  final VideoPlaylist $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      VideoShortPlayerScreen(playlist: $extra);
}
