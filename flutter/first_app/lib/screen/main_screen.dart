import 'package:first_app/screen/my_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyContainer(text: "Six"),
              
            ],
          ),
          Spacer(),
          MyContainer(text: "Zero"),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              MyContainer(text: "Three"),
              MyContainer(text: "Four"),
            ],
          ),
          MyContainer(text:"One"),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyContainer(text: "Five"),
            ],
          )]
          
      )
    )
  ;}
}