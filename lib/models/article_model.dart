class ArticleModel {
  String? image;
  String title;
  String? subTitle;

  ArticleModel(
      {required this.title, required this.image, required this.subTitle});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      title: json['title'],
      image: json['urlToImage'],
      subTitle: json['description'],
    );
  }
}

// class Source {
//   String? id;
//   String name;
//
//   Source({
//     required this.id,
//     required this.name
// });
// }
