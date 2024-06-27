import 'package:flutter/material.dart';
import 'package:store/model/dummy_data.dart';
import 'package:store/model/meal.dart';

class ListCard extends StatelessWidget {
  ListCard({required this.meal, required this.height, required this.delete});
  Meal meal;
  double height;
  void Function(Meal) delete;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF498D3F)),
            color: Color.fromARGB(0, 255, 193, 7)),
        child: ListTile(
          leading: Container(
            width: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(DummyData.imagesUrl[0]),
              ),
            ),
          ),
          title: Text(meal.name),
          subtitle: Row(
            children: [
              Text(
                '\$${meal.price}   ',
                style: TextStyle(
                    color: Color(0xFF498D3F),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              if (meal.isDiscounted())
                Text(
                  '\$${meal.originalPrice}',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              Spacer(),
              IconButton(
                  onPressed: () {
                    delete(meal);
                  },
                  icon: Icon(Icons.close))
            ],
          ),
        ),
      ),
    );
  }
}
