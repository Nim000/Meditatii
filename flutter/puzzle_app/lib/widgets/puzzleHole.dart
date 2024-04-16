import 'package:flutter/material.dart';

class PuzzleHole extends StatefulWidget {
  const PuzzleHole({super.key});

  @override
  State<PuzzleHole> createState() => _PuzzleHoleState();
}

class _PuzzleHoleState extends State<PuzzleHole> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 39, 39, 39),
          ),
          BoxShadow(
            color: Color.fromARGB(179, 255, 255, 255),
            spreadRadius: -5.0,
            blurRadius: 20.0,
          ),
        ],
      ),
    );
  }
}
