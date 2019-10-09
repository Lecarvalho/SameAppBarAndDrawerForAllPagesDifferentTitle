import 'package:flutter/material.dart';
import 'package:same_appbar_and_drawer_all_pages_changes_title_dynamically/page1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) {
        return Scaffold(
          // appBar: MyAppBar(),
          drawer: Drawer(
            child: Center(child: Text("Drawer")),
          ),
          body: child,
        );
      },
      home: Page1(),
    );
  }
}

class MyAppBar extends AppBar {
  MyAppBar({String title, Function onPressed})
      : super(
          title: Text(title),
          leading: onPressed != null
              ? IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: onPressed,
                )
              : null,
        );

  // @override
  // Widget build(BuildContext context) {
  //   return AppBar(
  //     title: Text("Main"),
  //     leading: IconButton(
  //       icon: Icon(Icons.menu),
  //       onPressed: () => Scaffold.of(context).openDrawer(),
  //     ),
  //   );
  // }
}
