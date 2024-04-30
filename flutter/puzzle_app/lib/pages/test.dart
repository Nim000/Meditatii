import 'package:flutter/material.dart';
import 'package:puzzle_app/model/component.dart';
import 'package:puzzle_app/widgets/componnent_card.dart';
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
    Componnent componnent = Componnent(height: 3, width: 3);
    return Scaffold(
      body: Center(child: ComponnentCard(componnent: componnent)),
    );
  }
}
