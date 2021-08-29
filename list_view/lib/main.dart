import 'package:flutter/material.dart';

import 'contact_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Using Listview"),
      ),
      backgroundColor: Colors.brown,
      body: ContactPage(),
    ),
  ));
}
