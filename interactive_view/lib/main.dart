import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.brown,
          title: Text(" InteractiveViewer"),
        ),
        body: InteractiveViewer(
          boundaryMargin: EdgeInsets.all(200.0),
          minScale: 0.5,
          maxScale: 1.6,
          child: Center(
            child: FlutterLogo(
              size: 90,
            ),
          ),
        ),
      ),
    );
  }
}
