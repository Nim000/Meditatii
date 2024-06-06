import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:store/model/dummy_data.dart';
import 'package:store/model/meal.dart';
import 'package:store/widgets/list_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  Widget totalPriceWidget(double height, double price) {
    return Container(
      height: height,
      alignment: Alignment.centerRight,
      child: Text("Total:"),
    );
  }

  @override
  Widget build(BuildContext context) {
    const double tileHeight = 175;
    const double totalPriceHeight = 100;
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          List<Meal> meals = DummyData.getSelectedMeals();
          int nrOfTiles = meals.length;
          double totalHeight = nrOfTiles * tileHeight + totalPriceHeight;
          if (constraints.maxHeight < totalHeight)
            return Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      for (int i = 0; i < nrOfTiles; i++)
                        ListCard(meal: meals[i], height: tileHeight)
                    ],
                  ),
                ),
                totalPriceWidget(totalPriceHeight, 100)
              ],
            );
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (int i = 0; i < nrOfTiles; i++)
                ListCard(meal: meals[i], height: tileHeight),
              totalPriceWidget(totalPriceHeight, 100),
            ],
          );
        },
      ),
    );
  }
}
