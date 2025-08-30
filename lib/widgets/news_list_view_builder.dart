import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/NewsListView.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.category,
  });
  final String category;

  @override
  State<NewsListViewBuilder> createState() =>
      _NewsListViewBuilderState();
}

class _NewsListViewBuilderState
    extends State<NewsListViewBuilder> {
  late Future<List<ArticleModel>> future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    future = NewsService(
      dio: Dio(),
    ).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data ?? [],
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 200),
              child: Center(
                child: Text(
                  "Oops There was an ERROR, Try Again Later!",
                ),
              ),
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 200,
              ),
              child: Center(
                child:
                    CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
    );
  }
}
