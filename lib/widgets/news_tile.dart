import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  ArticleModel articleModel;
  NewsTile({required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            articleModel.image ??
                'https://c1.wallpaperflare.com/preview/713/756/915/press-camera-the-crowd-journalist.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              overflow: TextOverflow.ellipsis),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          articleModel.subTitle ?? "",
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
