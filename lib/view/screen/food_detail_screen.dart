import 'package:dynamic_link_sample/provider/foods_provider.dart';
import 'package:dynamic_link_sample/view/component/button/elevated_button.dart';
import 'package:dynamic_link_sample/view/component/card/elevated_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FoodDetailScreen extends ConsumerWidget {
  const FoodDetailScreen({required this.id, Key? key}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final food = ref.watch(foodsProvider).foods.firstWhere((e) => e.id == id);
    final paddingTop = MediaQuery.of(context).padding.top;
    final maxWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: paddingTop),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12)
                      .copyWith(top: 48),
                  child: Hero(
                    transitionOnUserGestures: true,
                    tag: food.id,
                    child: ElevatedCard(
                      cardHeight: 360,
                      child: SizedBox(
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(22)),
                          child: Image.asset(
                            food.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(24),
                            topLeft: Radius.circular(24),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Container(
                          margin: const EdgeInsets.only(top: 24),
                          width: double.infinity,
                          padding: const EdgeInsets.all(24),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(24),
                              topLeft: Radius.circular(24),
                            ),
                          ),
                          child: SelectionArea(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  food.name,
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                Text(
                                  '\$ ${food.price}',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  food.description,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0,
              left: 12,
              width: maxWidth - 24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedIconButton(
                    icon: Icons.arrow_back,
                    onPressed: () {
                      context.pop();
                    },
                  ),
                  ElevatedIconButton(
                    icon: Icons.share,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
