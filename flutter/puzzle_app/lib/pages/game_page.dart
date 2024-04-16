import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyContainer extends StatelessWidget {
  MyContainer({this.color = Colors.blue});
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, color: color);
  }
}

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Draggable<int>(
              // Data is the value this Draggable stores.
              data: 10,
              feedback: MyContainer(),
              childWhenDragging: MyContainer(
                color: Colors.grey,
              ),
              child: MyContainer(),
            ),
            DragTarget<int>(
              builder: (
                BuildContext context,
                List<dynamic> accepted,
                List<dynamic> rejected,
              ) {
                print(accepted);
                print(rejected);
                return MyContainer(color: Colors.grey);
              },
              onAcceptWithDetails: (DragTargetDetails<int> details) {},
            ),
          ],
        ),
      ),
    );
  }
}
