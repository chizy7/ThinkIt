import 'dart:html';

import 'package:flutter/material.dart';
import 'package:thinkit/LandingPage/landingpage.dart';
import 'package:thinkit/navbar/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/thinkit_bg.png'), fit: BoxFit.cover)),
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(color: Colors.pink),
              child: navbar()),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            child: Container(
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(color: Colors.pink),
                child: LandingPage()),
          )
        ]),
      ),
    ));
  }
}
