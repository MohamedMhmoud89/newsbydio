import 'package:flutter/material.dart';
import 'package:news_app/models/category_models.dart';
import 'package:news_app/screens/category_view.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({required this.categorymodels});
  categoryModels categorymodels;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: categorymodels.title,
            titleAppBar: categorymodels.title,
          );
        }));
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: 100,
        width: 180,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(categorymodels.image)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
            child: Text(
          categorymodels.title,
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
