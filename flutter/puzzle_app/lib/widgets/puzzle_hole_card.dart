import 'package:flutter/material.dart';
import 'package:puzzle_app/helper/UI_size_helper.dart';

class PuzzleHoleCard extends StatefulWidget {
  const PuzzleHoleCard({super.key});

  @override
  State<PuzzleHoleCard> createState() => _PuzzleHoleCardState();
}

class _PuzzleHoleCardState extends State<PuzzleHoleCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: UISizeHelper.defaultCardSize,
      width: UISizeHelper.defaultCardSize,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 39, 39, 39),
          ),
          BoxShadow(
            color: Color.fromARGB(179, 255, 255, 255),
            spreadRadius: -5.0,
            blurRadius: 20.0,
          ),
        ],
      ),
    );
  }
}
