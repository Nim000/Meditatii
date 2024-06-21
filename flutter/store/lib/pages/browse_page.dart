import 'package:flutter/material.dart';
import 'package:store/model/dummy_data.dart';
import 'package:store/model/meal.dart';
import 'package:store/widgets/meal_card.dart';

class BrowsePage extends StatefulWidget {
  const BrowsePage({super.key});

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  MealCategory? category;
  @override
  Widget build(BuildContext context) {
    List<Meal> meals = [];
    if (category == null) {
      meals.addAll(DummyData.mealslist);
    } else {
      for (Meal meal in DummyData.mealslist) {
        if (meal.mealCategory == category) {
          meals.add(meal);
        }
      }
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        toolbarHeight: 40,
        leading: Container(), // Remove the default back button
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(
              flex: 1,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (category == MealCategory.Beverage) {
                    category = null;
                  } else {
                    category = MealCategory.Beverage;
                  }
                });
              },
              child: const Icon(
                Icons.emoji_food_beverage,
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (category == MealCategory.Fruit) {
                    category = null;
                  } else {
                    category = MealCategory.Fruit;
                  }
                });
              },
              child: const Icon(
                Icons.restaurant_menu,
              ),
            ),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 600),
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 4 / 5,
            children: [for (Meal meal in meals) MealCard(meal: meal)],
          ),
        ),
      ),
    );
  }
}
