// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/widgets/news_tile.dart';
//
// class NewListView extends StatefulWidget {
//   const NewListView({
//     super.key,
//   });
//
//   @override
//   State<NewListView> createState() => _NewListViewState();
// }
//
// class _NewListViewState extends State<NewListView> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }
//
//   Future<void> getGeneralNews() async {
//     articles = await NewsService(dio: Dio(), category: 'general').getUsNews();
//     isLoading = false;
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? SliverFillRemaining(
//         child: Center(
//
//             child: CircularProgressIndicator(
//               color: Colors.orange,
//               strokeWidth: 5,
//             )))
//         : SliverList(
//       delegate: SliverChildBuilderDelegate(
//         childCount: articles.length,
//             (context, index) {
//           return NewsTile(
//             articleModel: articles[index],
//           );
//         },
//       ),
//     );
//   }
// }
