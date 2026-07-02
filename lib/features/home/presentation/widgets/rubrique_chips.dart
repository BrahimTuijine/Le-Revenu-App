import '../../../../core/extensions/num.dart';
import '../../../../core/router/routes_export.dart';
import '../../../../core/shared/widgets/app_chip.dart';
import '../cubit/section_manager/section_manager_cubit.dart';

class RubriqueChips extends StatelessWidget {
  const RubriqueChips({
    super.key,
    required this.rubriques,
    required this.latestArticles,
  });

  final List<NewsCategory> rubriques;
  final List<Article> latestArticles;

  @override
  Widget build(BuildContext context) {
    final filters = [null, ...rubriques];
    return BlocBuilder<SectionManagerCubit, SectionManagerState>(
      builder: (context, state) => state.when(
        data: (selectedRubrique, visibleArticles) => SizedBox(
          height: 34.fh,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20.fw),
            scrollDirection: Axis.horizontal,
            itemCount: filters.length,
            separatorBuilder: (_, _) => 8.fw.bw,
            itemBuilder: (_, index) {
              final rubrique = filters[index];
              return AppChip(
                label: rubrique?.label ?? 'Tous',
                selected: rubrique == selectedRubrique,
                onTap: () => context.read<SectionManagerCubit>().selectRubrique(
                  rubrique,
                  latestArticles,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
