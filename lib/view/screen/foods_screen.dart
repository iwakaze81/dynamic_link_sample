import 'package:dynamic_link_sample/provider/foods_provider.dart';
import 'package:dynamic_link_sample/view/component/card/food_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FoodsScreen extends ConsumerWidget {
  const FoodsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final foods = ref.watch(foodsProvider).foods;

    return Scaffold(
      body: SafeArea(
        child: AnimatedList(
          padding: const EdgeInsets.all(4),
          initialItemCount: foods.length,
          itemBuilder: (context, index, animation) {
            return Container(
              margin: const EdgeInsets.only(bottom: 4),
              child: FoodCard(
                food: foods[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
