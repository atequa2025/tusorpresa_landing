import 'package:flutter/material.dart';
import '../widgets/category_card.dart';

class CategorySelector extends StatelessWidget {
  final ScrollController scrollController;
  const CategorySelector({super.key, required this.scrollController});

  void _scrollTo(double offset) => scrollController.animateTo(offset, duration: const Duration(milliseconds: 600), curve: Curves.ease);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    final categories = [
      {'icon': 'assets/images/cat_desayuno.svg', 'title': 'Desayunos', 'offset': 600.0},
      {'icon': 'assets/images/cat_flores.svg', 'title': 'Flores', 'offset': 1200.0},
      {'icon': 'assets/images/cat_corporativo.svg', 'title': 'Regalos Corporativos', 'offset': 1800.0},
      {'icon': 'assets/images/cat_deco.svg', 'title': 'Decoraciones', 'offset': 2400.0},
    ];

    final content = categories.map((c) => CategoryCard(
      iconPath: c['icon']!,
      title: c['title']!,
      onTap: () => _scrollTo(c['offset'] as double),
    ));

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: isMobile
          ? SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: content.toList().expand((w) => [w, const SizedBox(width: 24)]).toList()),
      )
          : Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: content.toList()),
    );
  }
}