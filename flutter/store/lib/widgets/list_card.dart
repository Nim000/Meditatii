import 'package:flutter/material.dart';
import 'package:store/model/dummy_data.dart';
import 'package:store/model/meal.dart';

class ListCard extends StatelessWidget {
  ListCard({required this.meal, required this.height});
  Meal meal;
  double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: Color.fromARGB(0, 255, 193, 7),
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
                  color: Color(0xFF8A3490),
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
            IconButton(onPressed: () {}, icon: Icon(Icons.close))
          ],
        ),
      ),
    );
  }
}
