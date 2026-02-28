import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider for the selected tab index
class SelectedTabNotifier extends StateNotifier<int> {
  SelectedTabNotifier() : super(0);

  void selectTab(int index) {
    state = index;
  }

  void selectCategories() {
    state = 0;
  }

  void selectFavorites() {
    state = 1;
  }
}

final selectedTabProvider = StateNotifierProvider<SelectedTabNotifier, int>(
  (ref) => SelectedTabNotifier(),
);
