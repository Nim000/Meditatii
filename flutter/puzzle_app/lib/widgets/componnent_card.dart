import 'package:flutter/material.dart';
import 'package:puzzle_app/helper/UI_size_helper.dart';
import 'package:puzzle_app/model/component.dart';
import 'package:puzzle_app/widgets/puzzle_box_card.dart';

class ComponnentCard extends StatelessWidget {
  ComponnentCard({required this.componnent});
  Componnent componnent;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PuzzleBoxCard(size: UISizeHelper.defaultCardSize),
            PuzzleBoxCard(size: UISizeHelper.defaultCardSize),
          ],
        ),
        PuzzleBoxCard(size: UISizeHelper.defaultCardSize),
      ],
    );
  }
}
