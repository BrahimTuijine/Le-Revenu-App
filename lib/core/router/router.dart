import '../../features/home/presentation/cubit/home/home_cubit.dart';
import '../../features/home/presentation/cubit/section_manager/section_manager_cubit.dart';
import '../gen/injection.dart';
import 'routes_export.dart';

part 'router.g.dart';
part '../../features/video_shorts_player/presentation/routes/video_shorts_player_routes.dart';
part '../../features/home/presentation/routes/home_routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: HomeRoute().location,
    routes: $appRoutes,
  );
}
