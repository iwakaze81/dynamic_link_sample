import 'package:dynamic_link_sample/model/food.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'foods_provider.freezed.dart';

final foodsProvider = StateNotifierProvider<FoodsStateNotifer, FoodsState>(
    (_) => FoodsStateNotifer());

@freezed
class FoodsState with _$FoodsState {
  factory FoodsState({
    @Default(<Food>[]) List<Food> foods,
  }) = _FoodsState;
}

class FoodsStateNotifer extends StateNotifier<FoodsState> {
  FoodsStateNotifer() : super(FoodsState()) {
    fetch();
  }

  Future<void> fetch() async {
    final foods = [
      Food(
        id: '1',
        name: 'Meat plate',
        description:
            'This is meat plate. Lorem ipsum dolor sit amet. Et distinctio libero aut commodi labore qui quia possimus. Ut repudiandae quia 33 quisquam enim aut vitae tenetur eos doloribus voluptatum quo nihil debitis sed maxime.',
        image: 'assets/image/meat.jpg',
        price: 19.45,
      ),
      Food(
        id: '2',
        name: 'Salad bowl',
        description:
            'This is salad bowl. Ut amet aliquid ab veritatis quasi sed doloribus error ut laudantium reiciendis. Ab quas libero est fugit dolores et omnis suscipit. In debitis consectetur aut porro.',
        image: 'assets/image/salad.jpg',
        price: 8.75,
      ),
      Food(
        id: '3',
        name: 'Stew',
        description:
            'This is stew. Et odit magni ut excepturi distinctio rem reiciendis consequatur est velit enim qui perferendis optio ut perspiciatis quaerat qui quam fugit. Nam ipsum quibusdam aut impedit assumenda aut ipsum nostrum.',
        image: 'assets/image/stew.jpg',
        price: 12.98,
      ),
      Food(
        id: '4',
        name: 'Hamburger',
        description:
            'This is Hamburger.  Eum asperiores eligendi sit labore rerum est consequatur doloremque qui sint repellat. Non laboriosam magni cum voluptatem ipsum hic voluptas laboriosam sed ipsam fugit et voluptatem voluptatum ut quia commodi.',
        image: 'assets/image/hamburger.jpg',
        price: 7.82,
      ),
      Food(
        id: '5',
        name: 'Pizza',
        description:
            'This is Hamburger. Eum asperiores eligendi sit labore rerum est consequatur doloremque qui sint repellat. Non laboriosam magni cum voluptatem ipsum hic voluptas laboriosam sed ipsam fugit et voluptatem voluptatum ut quia commodi.',
        image: 'assets/image/pizza.jpg',
        price: 16.45,
      ),
    ];

    state = state.copyWith(foods: foods);
  }
}
