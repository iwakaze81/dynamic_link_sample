import 'package:dynamic_link_sample/model/food.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'foods_provider.freezed.dart';

final foodsProvider = StateNotifierProvider<FoodsStateNotifer, FoodsState>(
    (ref) => FoodsStateNotifer(ref));

@freezed
class FoodsState with _$FoodsState {
  factory FoodsState({
    @Default(<Food>[]) List<Food> foods,
  }) = _FoodsState;
}

class FoodsStateNotifer extends StateNotifier<FoodsState> {
  FoodsStateNotifer(this._ref) : super(FoodsState()) {
    fetch();
  }

  final Ref _ref;

  Future<void> fetch() async {
    final foods = [
      Food(
        id: '1',
        name: 'Meat plate',
        description: 'This is meat plate.',
        image: 'assets/image/meat.jpg',
      ),
      Food(
        id: '2',
        name: 'Salad bowl',
        description: 'This is salad bowl.',
        image: 'assets/image/salad.jpg',
      ),
      Food(
        id: '3',
        name: 'Stew',
        description: 'This is stew.',
        image: 'assets/image/stew.jpg',
      ),
    ];

    state = state.copyWith(foods: foods);
  }
}
