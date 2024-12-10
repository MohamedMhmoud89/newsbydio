import 'package:flutter/material.dart';
import 'package:news_app/models/category_models.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
    required this.categorys,
  });

  final List<categoryModels> categorys;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemCount: categorys.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, num) {
            return CategoryCard(categorymodels: categorys[num]);
          }),
    );
  }
}
