import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/router/routes_export.dart';

part 'section_manager_cubit.freezed.dart';
part 'section_manager_state.dart';

@injectable
class SectionManagerCubit extends Cubit<SectionManagerState> {
  SectionManagerCubit()
    : super(
        SectionManagerState.data(selectedRubrique: null, visibleArticles: []),
      );

  void selectRubrique(
    NewsCategory? selectedRubrique,
    List<Article> latestArticles,
  ) {
    final List<Article> visibleArticles = selectedRubrique == null
        ? latestArticles
        : latestArticles
              .where((article) => article.category == selectedRubrique)
              .toList();
    emit(
      SectionManagerState.data(
        selectedRubrique: selectedRubrique,
        visibleArticles: visibleArticles,
      ),
    );
  }
}
