import 'dart:math';

import 'package:store/model/meal.dart';

class DummyData {
  static List<String> imagesUrl = [
    "https://images.unsplash.com/photo-1611526740984-fd3cbcebb806?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ];
  static List<Meal> mealslist = createMealList();
  static List<Meal> getSelectedMeals() {
    List<Meal> mealist = [];
    for (int i = 0; i < mealslist.length; i++) {
      if (mealslist[i].isSelected) {
        mealist.add(mealslist[i]);
      }
    }
    return mealist;
  }

  static List<Meal> createMealList() {
    List<Meal> meals = [];
    for (var i = 0; i < 10; i++) {
      bool hasOriginalPrice = Random().nextBool();
      double? originalPrice = null;
      if (hasOriginalPrice) {
        originalPrice =
            double.parse((Random().nextDouble() * 20 + 25).toStringAsFixed(2));
      }
      Meal meal = Meal(
          name: 'Strawberry Juice',
          imageURL: imagesUrl[0],
          price: 25,
          originalPrice: originalPrice,
          mealCategory: MealCategory.Fruit);
      meals.add(meal);
    }
    return meals;
  }
}
