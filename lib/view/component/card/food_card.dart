import 'package:dynamic_link_sample/model/food.dart';
import 'package:dynamic_link_sample/view/component/card/elevated_card.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    required this.food,
    Key? key,
  }) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context) {
    final cardHeight = MediaQuery.of(context).size.width / 2;

    return ElevatedCard(
      cardHeight: cardHeight,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: cardHeight,
              margin: const EdgeInsets.symmetric(vertical: 6).copyWith(left: 6),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(24)),
                child: Image.asset(
                  food.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 12).copyWith(left: 12),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(food.name,
                        style: Theme.of(context).textTheme.titleLarge),
                    Text(
                      food.description,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
