import 'package:flutter/material.dart';

class ShoppingIcon extends StatelessWidget {
  ShoppingIcon({required this.num});
  int num;
  Widget circle() {
    double size = 16;
    return Container(
      alignment: Alignment.center,
      height: size,
      width: size,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(180),
        color: Colors.red,
      ),
      child: Text(
        "$num",
        style: TextStyle(color: Colors.white, fontSize: 10),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Row(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Icon(
  //         Icons.shopping_cart,
  //         color: Colors.white,
  //       ),
  //       circle(),
  //     ],
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    double iconPadding = 5;
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: EdgeInsets.only(right: iconPadding, top: iconPadding),
          child: const Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ),
        circle(),
      ],
    );
  }
}
