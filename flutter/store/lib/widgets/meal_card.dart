import 'package:flutter/material.dart';
import 'package:store/model/dummy_data.dart';
import 'package:store/model/meal.dart';

class MealCard extends StatefulWidget {
  MealCard({required this.meal});
  Meal meal;

  @override
  State<MealCard> createState() => _MealCardState();
}

class _MealCardState extends State<MealCard> {
  @override
  Widget build(BuildContext context) {
    late Color color;
    if (widget.meal.isSelected) {
      color = Color.fromARGB(255, 73, 141, 63);
    } else {
      color = Color(0xFF8A3490);
    }
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.meal.isSelected = !widget.meal.isSelected;
        });
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: color, width: 1.5),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(DummyData.imagesUrl[0]),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Center(
              child: Text(
                'Strawberry Juice',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(221, 49, 49, 49)),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Row(children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (widget.meal.isDiscounted())
                      Text(
                        '\$${widget.meal.originalPrice}',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    SizedBox(
                      width: 30,
                    )
                  ],
                ),
              ),
              Text(
                '\$${widget.meal.price}',
                style: TextStyle(
                    color: color, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Spacer(
                flex: 1,
              )
            ])
          ],
        ),
      ),
    );
  }
}
