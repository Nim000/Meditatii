import 'package:flutter/material.dart';
import 'package:puzzle_app/model/box_target.dart';
import 'package:puzzle_app/model/box_value.dart';
import 'package:puzzle_app/model/component.dart';
import 'package:puzzle_app/widgets/box_target_card.dart';

class TestPage2 extends StatelessWidget {
  const TestPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BoxTargetCard(boxTarget: BoxTarget()),
              BoxTargetCard(
                boxTarget: BoxTarget(
                  boxValue: BoxValue(
                    componnent: Componnent(
                      height: 0,
                      width: 0,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
