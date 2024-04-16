import 'package:flutter/material.dart';
import 'package:puzzle_app/widgets/puzzleBox.dart';
import 'package:puzzle_app/widgets/puzzleHole.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: PuzzleHole()),
    );
  }
}
