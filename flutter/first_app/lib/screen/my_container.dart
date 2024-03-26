import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyContainer extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  MyContainer({required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
  margin: const EdgeInsets.all(15.0),
  padding: const EdgeInsets.all(3.0),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.blueAccent)
  ),
  child: Text(text)
  );}
}