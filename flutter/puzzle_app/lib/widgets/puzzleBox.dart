import 'package:flutter/material.dart';

class PuzzleBox extends StatelessWidget {
  const PuzzleBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 153, 255),
          border: Border.all(color: Colors.black, width: 2)),
    );
  }
}
