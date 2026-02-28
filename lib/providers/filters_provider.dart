import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter { glutenFree, lactoseFree, vegetarian, vegan }

class FilterNotifier extends StateNotifier<Map<Filter, bool>> {
  FilterNotifier()
    : super({
        Filter.glutenFree: false,
        Filter.lactoseFree: false,
        Filter.vegetarian: false,
        Filter.vegan: false,
      });

  void setFilters(Map<Filter, bool> chosenFilters) {
    state = chosenFilters;
  }

  void setFilter(Filter filter, bool isActive) {
    state = {...state, filter: isActive};
  }

  void updateGlutenFree(bool isActive) {
    state = {...state, Filter.glutenFree: isActive};
  }

  void updateLactoseFree(bool isActive) {
    state = {...state, Filter.lactoseFree: isActive};
  }

  void updateVegetarian(bool isActive) {
    state = {...state, Filter.vegetarian: isActive};
  }

  void updateVegan(bool isActive) {
    state = {...state, Filter.vegan: isActive};
  }

  void resetFilters() {
    state = {
      Filter.glutenFree: false,
      Filter.lactoseFree: false,
      Filter.vegetarian: false,
      Filter.vegan: false,
    };
  }
}

final filterProvider = StateNotifierProvider<FilterNotifier, Map<Filter, bool>>(
  (ref) => FilterNotifier(),
);
