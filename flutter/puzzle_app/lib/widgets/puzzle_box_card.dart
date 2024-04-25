import 'package:flutter/material.dart';

class PuzzleBoxCard extends StatelessWidget {
  PuzzleBoxCard({super.key, required this.size});
  double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 153, 255),
          border: Border.all(color: Colors.black, width: 2)),
    );
  }
}
