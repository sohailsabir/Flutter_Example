import 'package:flutter/material.dart';

import 'gridview.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final MyGridView myGridView = MyGridView();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("GridView"),
        ),
        body: myGridView.build(),
      ),
    );
  }
}
