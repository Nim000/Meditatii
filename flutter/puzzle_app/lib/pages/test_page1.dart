import 'package:flutter/material.dart';
import 'package:puzzle_app/widgets/puzzle_box_card.dart';
import 'package:puzzle_app/widgets/puzzle_hole_card.dart';

class TestPage1 extends StatefulWidget {
  const TestPage1({super.key});

  @override
  State<TestPage1> createState() => _TestPage1State();
}

class _TestPage1State extends State<TestPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: PuzzleHoleCard()),
    );
  }
}
