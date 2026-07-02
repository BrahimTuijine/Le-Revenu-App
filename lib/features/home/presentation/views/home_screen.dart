import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/num.dart';
import '../../../../core/extensions/snackbar.dart';
import '../../../../core/shared/theme_manager_cubit.dart';
import '../cubit/home_cubit.dart';
import '../widgets/article_list_item.dart';
import '../widgets/home_error_view.dart';
import '../widgets/home_header.dart';
import '../widgets/home_sections.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      child: Column(
        children: [
          HomeHeader(
            onSearchTap: () => context.showComingSoon('La recherche'),
            onThemeToggle: context.read<ThemeCubit>().toggleTheme,
          ),
          Expanded(
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) => switch (state) {
                HomeLoading() => const Center(
                  child: CircularProgressIndicator(),
                ),
                HomeError(:final message) => HomeErrorView(message: message),
                HomeLoaded() => _HomeContent(state: state),
              },
            ),
          ),
        ],
      ),
    ),
  );
}

class _HomeContent extends StatelessWidget {
  const _HomeContent({required this.state});

  final HomeLoaded state;

  @override
  Widget build(BuildContext context) {
    final articles = state.visibleArticles;
    return RefreshIndicator(
      onRefresh: context.read<HomeCubit>().refresh,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        padding: EdgeInsets.only(bottom: 24.fh),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeSections(
              featured: state.content.featured,
              videos: state.content.videoShorts,
              rubriques: state.rubriques,
              selectedRubrique: state.selectedRubrique,
              onRubriqueSelected: context.read<HomeCubit>().selectRubrique,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: articles.length,
              itemBuilder: (context, index) =>
                  ArticleListItem(article: articles[index]),
            ),
          ],
        ),
      ),
    );
  }
}
