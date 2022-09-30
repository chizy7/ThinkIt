import 'package:flutter/material.dart';
import 'package:thinkit/Pages/HomePage.dart';

void main() => runApp(thinkit());

class thinkit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Think It!',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}
