import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/screens/meals.dart';
import 'package:meals_app/widgets/category_grid_item.dart';
import 'package:meals_app/model/category.dart';
import 'package:meals_app/model/meals.dart';

class Categories extends StatelessWidget {
  const Categories({super.key ,required this.onToggleFavorite , required this.availabeMeals});

 final void Function(Meal meal) onToggleFavorite;
 final List<Meal> availabeMeals;

  void _selectCategory(BuildContext context, Category category) {
    final filteredMeals = availabeMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) =>
            MealsScreen(title: category.title, meals: filteredMeals , onToggleFavorite: onToggleFavorite,),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        // ignore: non_constant_identifier_names
        for (final Category in availableCategories)
          CategoryGridItem(
            category: Category,
            onSelectCatgory: () {
              _selectCategory(context, Category);
            },
          ),
      ],
    );
  }
}
