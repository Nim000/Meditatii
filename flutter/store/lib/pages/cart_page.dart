import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView(
            children: [
              ListTile(),
              Container(alignment: Alignment.centerLeft, child: Text("Total:")),
            ],
          ),
        ],
      ),
    );
  }
}
