import 'package:flutter/material.dart';
import 'package:puzzle_app/model/box_target.dart';
import 'package:puzzle_app/model/box_value.dart';
import 'package:puzzle_app/model/component.dart';
import 'package:puzzle_app/widgets/box_target_card.dart';

class TestPage2 extends StatefulWidget {
  TestPage2({super.key});

  @override
  State<TestPage2> createState() => _TestPage2State();
}

class _TestPage2State extends State<TestPage2> {
  List<BoxTarget> boxTargetsList = [BoxTarget(), BoxTarget()];

  List<BoxValue> boxValuesList = [
    BoxValue(
      componnent: Componnent(
        height: 0,
        width: 0,
        color: Colors.red,
      ),
    ),
  ];

  @override
  void initState() {
    boxValuesList[0].setEmptyBox(boxTargetsList[0]);
  }

  void moveBoxValue(BoxValue value, BoxTarget target) {
    print(value);
    print(target);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BoxTargetCard(
                boxTarget: boxTargetsList[0],
                moveBoxValue: moveBoxValue,
              ),
              BoxTargetCard(
                boxTarget: boxTargetsList[1],
                moveBoxValue: moveBoxValue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
