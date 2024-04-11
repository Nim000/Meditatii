import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          fit: StackFit.expand,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Center(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
