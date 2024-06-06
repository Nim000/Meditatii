import 'package:flutter/material.dart';
import 'package:puzzle_app/helper/UI_size_helper.dart';
import 'package:puzzle_app/model/box_target.dart';
import 'package:puzzle_app/model/box_value.dart';
import 'package:puzzle_app/model/component.dart';
import 'package:puzzle_app/widgets/componnent_card.dart';
import 'package:puzzle_app/widgets/puzzle_box_card.dart';
import 'package:puzzle_app/widgets/puzzle_hole_card.dart';

class BoxTargetCard extends StatefulWidget {
  BoxTargetCard({required this.boxTarget, required this.moveBoxValue});
  final BoxTarget boxTarget;
  final void Function(BoxValue, BoxTarget) moveBoxValue;

  @override
  State<BoxTargetCard> createState() => _BoxTargetCardState();
}

class _BoxTargetCardState extends State<BoxTargetCard> {
  @override
  Widget build(BuildContext context) {
    if (widget.boxTarget.boxValue != null) {
      BoxValue boxValue = widget.boxTarget.boxValue!;
      Componnent componnent = boxValue.componnent;
      return Draggable<BoxValue>(
        data: boxValue,
        child: PuzzleBoxCard(size: UISizeHelper.defaultCardSize),
        // feedback: PuzzleBoxCard(size: UISizeHelper.largeCardSize),
        feedback: ComponnentCard(componnent: componnent),
        childWhenDragging: PuzzleHoleCard(),
        onDragStarted: () {
          for (int i = 0; i < componnent.getWidth(); i++) {
            for (int j = 0; j < componnent.getHeight(); j++) {
              componnent.get(i, j);
            }
          }
        },
      );
    } else {
      return DragTarget<BoxValue>(
          onAcceptWithDetails: (DragTargetDetails<BoxValue> details) {
        widget.moveBoxValue(details.data, widget.boxTarget);
      }, builder: (
        BuildContext context,
        List<dynamic> accepted,
        List<dynamic> rejected,
      ) {
        return PuzzleHoleCard();
      });
    }
  }
}
