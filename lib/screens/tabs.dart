import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories.dart';
import 'package:meals_app/screens/filter.dart';
import 'package:meals_app/screens/meals.dart';
import 'package:meals_app/widgets/main_drawer.dart';
import 'package:meals_app/providers/meals_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/favorites_provider.dart';
import 'package:meals_app/providers/navigation_provider.dart';

class TabsScreen extends ConsumerWidget {
  const TabsScreen({super.key});

  void _setScreen(
    BuildContext context,
    WidgetRef ref,
    String identifier,
  ) async {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
      await Navigator.of(
        context,
      ).push<void>(MaterialPageRoute(builder: (ctx) => const FilterScreen()));
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filteredMeals = ref.watch(filteredMealsProvider);
    final selectedTabIndex = ref.watch(selectedTabProvider);

    Widget activePage = Categories(availabeMeals: filteredMeals);
    var activePageTitle = 'Categories';

    if (selectedTabIndex == 1) {
      final favoriteMeals = ref.watch(favoriteMealsProvider);
      activePage = MealsScreen(meals: favoriteMeals);
      activePageTitle = 'Your Favorites';
    }

    return Scaffold(
      appBar: AppBar(title: Text(activePageTitle)),
      drawer: MainDrawer(
        onSelectScreen: (identifier) => _setScreen(context, ref, identifier),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          ref.read(selectedTabProvider.notifier).selectTab(index);
        },
        currentIndex: selectedTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
        ],
      ),
    );
  }
}
