import 'package:flutter/material.dart';

import 'main.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Page 2",
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Page2"),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back to page 1"),
            )
          ],
        ),
      ),
    );
  }
}
