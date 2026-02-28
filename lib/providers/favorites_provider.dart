import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/model/meals.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super(const []);

  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.any((m) => m.id == meal.id);

    if (mealIsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>(
      (ref) => FavoriteMealsNotifier(),
    );
