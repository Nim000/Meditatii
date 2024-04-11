import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, color: Colors.blue);
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
            LongPressDraggable<int>(
              // Data is the value this Draggable stores.
              data: 10,
              feedback: Container(
                color: Color.fromARGB(255, 255, 0, 0),
                height: 100,
                width: 100,
                child: const Icon(Icons.directions_run),
              ),
              childWhenDragging: Container(
                height: 100.0,
                width: 100.0,
                color: Color.fromARGB(255, 255, 230, 0),
                child: const Center(
                  child: Text('Child When Dragging'),
                ),
              ),
              child: Container(
                height: 100.0,
                width: 100.0,
                color: Color.fromARGB(255, 0, 60, 255),
                child: const Center(
                  child: Text('Draggable'),
                ),
              ),
            ),
            DragTarget<int>(
              builder: (
                BuildContext context,
                List<dynamic> accepted,
                List<dynamic> rejected,
              ) {
                return Container(
                  height: 100.0,
                  width: 100.0,
                  color: const Color.fromARGB(255, 0, 212, 201),
                  child: Center(
                    child: Text('Value is updated to:'),
                  ),
                );
              },
              onAcceptWithDetails: (DragTargetDetails<int> details) {},
            ),
            DragTarget<int>(
              builder: (
                BuildContext context,
                List<dynamic> accepted,
                List<dynamic> rejected,
              ) {
                return Row(
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      color: Color.fromARGB(255, 18, 212, 0),
                      child: Center(
                        child: Text('Value is updated to:'),
                      ),
                    ),
                  ],
                );
              },
              onAcceptWithDetails: (DragTargetDetails<int> details) {},
            ),
          ],
        ),
      ),
    );
  }
}
