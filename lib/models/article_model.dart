class ArticleModel {
  final String image;
  final String title;
  final String descreption;

  ArticleModel({
    required this.image,
    required this.title,
    required this.descreption,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json["urlToImage"] ?? "",
      title: json["title"],
      descreption:
          json["description"] ?? "No description",
    );
  }
}
