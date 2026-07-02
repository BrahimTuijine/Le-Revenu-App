part of '../../../../core/router/router.dart';

@TypedGoRoute<HomeRoute>(
  path: '/home',
  routes: [TypedGoRoute<VideoShortRoute>(path: 'video')],
)
class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
    create: (_) => getIt<HomeCubit>()..load(),
    child: const HomeScreen(),
  );
}

