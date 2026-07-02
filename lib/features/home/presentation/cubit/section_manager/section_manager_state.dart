part of 'section_manager_cubit.dart';

@freezed
sealed class SectionManagerState with _$SectionManagerState {
  const factory SectionManagerState.data({
    required NewsCategory? selectedRubrique,
    required List<Article> visibleArticles,
  }) = _Data;
}
