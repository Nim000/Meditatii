import 'package:first_app/screen/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MainScreen(),
      // home: Scaffold(
      //   body: ListView(
      //     children: [
      //       for (int i in List.generate(100, (index) => index))
      //         ListTile(
      //           title: Text("Element is the $i'th in a list"),
      //           subtitle: Row(
      //             children: [
      //               Icon(Icons.add),
      //               Icon(Icons.close),
      //               Icon(Icons.circle)
      //             ]
      //           ),
      //         ),
      //     ],
      //   ),
      // ),
    );
  }
}