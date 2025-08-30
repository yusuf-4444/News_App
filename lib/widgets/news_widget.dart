import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsCategory extends StatelessWidget {
  const NewsCategory({
    super.key,
    required this.article,
  });

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius:
                BorderRadiusGeometry.circular(6),
            child: CachedNetworkImage(
              imageUrl: article.image,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  Container(
                    color: Colors.grey[300],
                  ),
              errorWidget:
                  (context, url, error) =>
                      Icon(Icons.error),
            ),
          ),
          SizedBox(height: 1),
          Text(
            article.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 1),
          Text(
            article.descreption,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
