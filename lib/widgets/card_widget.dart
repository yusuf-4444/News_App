import 'package:flutter/material.dart';
import 'package:news_app/models/card_model.dart';
import 'package:news_app/views/card_view.dart';

class CardsCategory extends StatelessWidget {
  const CardsCategory({
    super.key,
    required this.model,
  });

  final CardModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CardView(
                category: model.text,
              );
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        width: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(model.image),
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            model.text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
