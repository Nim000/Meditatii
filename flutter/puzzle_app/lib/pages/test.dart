import 'package:flutter/material.dart';
import 'package:puzzle_app/widgets/puzzle_box_card.dart';
import 'package:puzzle_app/widgets/puzzle_hole_card.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: PuzzleHoleCard()),
    );
  }
}
