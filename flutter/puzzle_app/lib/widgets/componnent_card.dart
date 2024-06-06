import 'package:flutter/material.dart';
import 'package:puzzle_app/helper/UI_size_helper.dart';
import 'package:puzzle_app/model/component.dart';
import 'package:puzzle_app/widgets/puzzle_box_card.dart';

class ComponnentCard extends StatelessWidget {
  ComponnentCard({required this.componnent});
  Componnent componnent;

  @override
  Widget build(BuildContext context) {
    const double boxSize = UISizeHelper.defaultCardSize;
    return Container(
      width: componnent.getWidth() * boxSize,
      height: componnent.getHeight() * boxSize,
      alignment: Alignment.center,
      // color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < componnent.getHeight(); i++)
            Row(
              children: [
                for (int j = 0; j < componnent.getWidth(); j++)
                  if (componnent.get(j, i) != null)
                    PuzzleBoxCard(size: boxSize)
                  else
                    SizedBox(width: boxSize, height: boxSize)
              ],
            ),
        ],
      ),
    );
  }
}
