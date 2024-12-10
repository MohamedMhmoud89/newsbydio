import 'package:flutter/material.dart';
import 'package:news_app/screens/category_view.dart';
import 'package:news_app/screens/home_page.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (_) => HomePage(),
        CategoryView.routeName: (_) => CategoryView(
              category: '',
              titleAppBar: '',
            ),
      },
    );
  }
}
