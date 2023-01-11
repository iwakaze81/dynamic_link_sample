import 'package:dynamic_link_sample/provider/foods_provider.dart';
import 'package:dynamic_link_sample/view/component/card/food_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FoodsScreen extends ConsumerWidget {
  const FoodsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final foods = ref.watch(foodsProvider).foods;
    final padding = MediaQuery.of(context).padding;
    return Scaffold(
      body: HeroControllerScope(
        controller: HeroController(),
        child: AnimatedList(
          padding: const EdgeInsets.all(4).copyWith(
            top: padding.top,
            bottom: padding.bottom,
          ),
          initialItemCount: foods.length,
          itemBuilder: (context, index, animation) {
            return Container(
              margin: const EdgeInsets.only(bottom: 4),
              child: GestureDetector(
                onTap: () {
                  context.push('/foods/${foods[index].id}');
                },
                child: FoodCard(
                  food: foods[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
