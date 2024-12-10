import 'package:flutter/material.dart';
import 'package:news_app/models/category_models.dart';
import 'package:news_app/widgets/categorys_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'home_page';
  List<categoryModels> categorys = [
    categoryModels(image: 'assets/business.jpg', title: 'business'),
    categoryModels(image: 'assets/entertaiment.jpg', title: 'entertainment'),
    categoryModels(image: 'assets/health.jpg', title: 'health'),
    categoryModels(image: 'assets/science.jpg', title: 'science'),
    categoryModels(image: 'assets/sports.jpg', title: 'sports'),
    categoryModels(image: 'assets/technology.jpeg', title: 'technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloud',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(categorys: categorys),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListViewBuilder(
              category: "general",
            ),
          ],
        ),
      ),
    );
  }
}

// Column(
// children: [
//
//
//
// ],
// ),

// NewListView()
// CategoriesListView(categorys: categorys));
