import 'package:flutter/material.dart';
import 'package:puzzle_app/widgets/puzzleBox.dart';
import 'package:puzzle_app/widgets/puzzleHole.dart';

class TestPage1 extends StatefulWidget {
  const TestPage1({super.key});

  @override
  State<TestPage1> createState() => _TestPage1State();
}

class _TestPage1State extends State<TestPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: PuzzleHole()),
    );
  }
}
