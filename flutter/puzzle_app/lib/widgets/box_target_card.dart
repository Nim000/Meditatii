import 'package:flutter/material.dart';
import 'package:puzzle_app/model/box_target.dart';

class BoxTargetCard extends StatefulWidget {
  BoxTargetCard({required this.boxTarget});
  final BoxTarget boxTarget;

  @override
  State<BoxTargetCard> createState() => _BoxTargetCardState();
}

class _BoxTargetCardState extends State<BoxTargetCard> {
  @override
  Widget build(BuildContext context) {
    if (widget.boxTarget.boxValue != null)
      widget.boxTarget.boxValue.componnent.color;
    return const Placeholder();
  }
}
