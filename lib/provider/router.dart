import 'package:dynamic_link_sample/view/screen/food_detail_screen.dart';
import 'package:dynamic_link_sample/view/screen/foods_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const FoodsScreen(),
        routes: [
          GoRoute(
            path: 'foods/:id',
            builder: (context, state) {
              final id = state.params['id'];

              return FoodDetailScreen(id: id!);
            },
          ),
        ],
      ),
    ],
  ),
);
