import 'package:flutter/material.dart';
import 'package:same_appbar_and_drawer_all_pages_changes_title_dynamically/main.dart';
import 'package:same_appbar_and_drawer_all_pages_changes_title_dynamically/page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Page 1",
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Page1"),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page2(),
                  ),
                );
              },
              child: Text("Go to page 2"),
            )
          ],
        ),
      ),
    );
  }
}
