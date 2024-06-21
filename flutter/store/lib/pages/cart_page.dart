import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      child: RichText(
        text: TextSpan(
          text: 'Total: ',
          style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
          children: [
            TextSpan(
              text: "$price\$    ",
              style: TextStyle(
                color: Color.fromRGBO(51, 144, 124, 1),
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const double tileHeight = 175;
    const double totalPriceHeight = 100;
    double total = 0;
    List<Meal> meals = DummyData.getSelectedMeals();
    for (Meal meal in meals) {
      total += meal.price;
    }
    int nrOfTiles = meals.length;
    return Scaffold(
      body: Builder(builder: (context) {
        double availableHeight = MediaQuery.of(context).size.height;
        return Column(
          children: [
            // SizedBox(
            //   height: nrOfTiles * tileHeight,
            //   child: ListView.builder(
            //     itemCount: nrOfTiles,
            //     itemBuilder: (context, index) {
            //       return ListCard(meal: meals[index], height: tileHeight);
            //     },
            //   ),
            // ),
            for (Meal meal in meals) ListCard(meal: meal, height: tileHeight),
            Divider(
              color: Colors.black,
            ),
            totalPriceWidget(100, total),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.purple,
                ),
                child: const Text(
                  'PLACE ORDER',
                  style: TextStyle(color: Colors.white, fontSize: 13.0),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        );
      }),
    );
  }
}
