import 'package:flutter/material.dart';
import 'package:news_app/models/card_model.dart';
import 'package:news_app/widgets/card_widget.dart';

class CardsView extends StatelessWidget {
  const CardsView({super.key});

  final List<CardModel> cards = const [
    CardModel(
      text: "Technology",
      image: "assets/technology.jpeg",
    ),

    CardModel(
      text: "business",
      image: "assets/business.jpg",
    ),

    CardModel(
      text: "entertainment",
      image: "assets/entertaiment.jpg",
    ),

    CardModel(
      text: "general",
      image: "assets/general.jpg",
    ),

    CardModel(
      text: "health",
      image: "assets/health.jpg",
    ),

    CardModel(
      text: "science",
      image: "assets/science (1).jpg",
    ),

    CardModel(
      text: "sports",
      image: "assets/sports.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: cards.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CardsCategory(
            model: cards[index],
          );
        },
      ),
    );
  }
}
