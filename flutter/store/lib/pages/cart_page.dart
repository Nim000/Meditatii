import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double tileHeight = 175;
    const double totalPriceHeight = 100;
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        int nrOfTiles = 10;
        double totalHeight = nrOfTiles * tileHeight + totalPriceHeight;
        return Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  for (int i = 0; i < nrOfTiles; i++)
                    Container(
                      height: tileHeight,
                      width: 100,
                      color: Colors.amber,
                    )
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Text("Total:"),
            ),
          ],
        );
      }),
    );
  }
}
