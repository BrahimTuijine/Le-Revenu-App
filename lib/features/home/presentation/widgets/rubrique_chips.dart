import 'package:flutter/material.dart';

import '../../../../core/extensions/num.dart';
import '../../../../core/shared/widgets/app_chip.dart';
import '../../domain/entities/news_category.dart';

class RubriqueChips extends StatelessWidget {
  const RubriqueChips({
    required this.rubriques,
    required this.selected,
    required this.onSelected,
    super.key,
  });

  final List<NewsCategory> rubriques;
  final NewsCategory? selected;
  final ValueChanged<NewsCategory?> onSelected;

  @override
  Widget build(BuildContext context) {
    final filters = [null, ...rubriques];
    return SizedBox(
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
            selected: rubrique == selected,
            onTap: () => onSelected(rubrique),
          );
        },
      ),
    );
  }
}
