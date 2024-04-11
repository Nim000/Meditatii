import 'package:flutter/material.dart';

class GenericPage extends StatelessWidget {
  GenericPage({this.pageNumber = 0});

  int pageNumber;

  void pushPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => GenericPage(
              pageNumber: pageNumber + 1,
            )));
  }

  @override
  Widget build(BuildContext context) {
    String pageName;
    if (pageNumber == 0)
      pageName = "Home Page";
    else
      pageName = "Page $pageNumber";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pageName),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  pushPage(context);
                },
                child: Text("Press me"))
          ],
        ),
      ),
    );
  }
}
