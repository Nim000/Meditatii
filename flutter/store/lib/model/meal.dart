import 'dart:math';

class Meal {
  String name;
  String imageURL;
  double? originalPrice;
  double price;
  MealCategory mealCategory;
  bool isSelected;
  Meal({
    required this.name,
    required this.imageURL,
    required this.price,
    required this.mealCategory,
    this.originalPrice,
    this.isSelected = false,
  });
  bool isDiscounted() {
    return originalPrice != null;
  }
}

enum MealCategory { Beverage, Fruit }
