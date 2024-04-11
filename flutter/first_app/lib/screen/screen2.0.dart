import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyBlock extends StatefulWidget {
  const MyBlock({super.key});

  @override
  State<MyBlock> createState() => _MyBlockState();
}

class _MyBlockState extends State<MyBlock> {
  MainAxisAlignment alignment = MainAxisAlignment.start;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          mainAxisAlignment: alignment,
          children: [
            Container(
                height: 100,
                width: 200,
                alignment: Alignment.center,
                child: Text(
                  "pisici",
                  style: TextStyle(color: Color.fromARGB(169, 255, 255, 255)),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 51, 1, 34),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 1,
                    ))),
          ],
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                if (alignment == MainAxisAlignment.start) {
                  alignment = MainAxisAlignment.end;
                } else {
                  alignment = MainAxisAlignment.start;
                }
              });
            },
            child: Icon(Icons.cable_sharp))
      ],
    ));
    return const Placeholder();
  }
}
// ignore: must_be_immutable