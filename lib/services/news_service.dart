import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService({required this.dio});

  Future<List<ArticleModel>> getNews({
    required String category,
  }) async {
    try {
      final response = await dio.get(
        "https://newsapi.org/v2/top-headlines?apiKey=6c9393c4668748b48aadf508bc669556&country=us&category=$category",
      );

      Map<String, dynamic> jsonData =
          response.data;

      List<dynamic> articles =
          jsonData["articles"];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel =
            ArticleModel.fromJson(article);

        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      print('Error fetching news: $e');
      return [];
    }
  }
}
