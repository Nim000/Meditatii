import 'package:flutter/material.dart';
import 'package:puzzle_app/helper/UI_size_helper.dart';
import 'package:puzzle_app/model/component.dart';
import 'package:puzzle_app/widgets/puzzle_box_card.dart';

class ComponnentCard extends StatelessWidget {
  ComponnentCard({required this.componnent});
  Componnent componnent;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      alignment: Alignment.center,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              PuzzleBoxCard(size: UISizeHelper.defaultCardSize),
              PuzzleBoxCard(size: UISizeHelper.defaultCardSize),
            ],
          ),
          PuzzleBoxCard(size: UISizeHelper.defaultCardSize),
        ],
      ),
    );
  }
}
