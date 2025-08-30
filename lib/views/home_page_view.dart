import 'package:flutter/material.dart';
import 'package:news_app/views/cards_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "News",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "Cloud",
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CardsView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 10),
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
