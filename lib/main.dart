import 'dart:html';

import 'package:flutter/material.dart';
import 'package:thinkit/LandingPage/index.dart';
import 'package:thinkit/LandingPage/landingpage.dart';
import 'package:thinkit/LandingPage/AboutPage.dart';
import 'package:thinkit/LandingPage/index.dart';

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
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: Colors.green),
      // decoration: const BoxDecoration(
      //     image: DecorationImage(
      //   image: AssetImage('assets/thinkit_bg.png'),
      // )),
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(15.0),
            // decoration: BoxDecoration(color: Colors.red),
            child: LandingPage(),
          ),
          Container(
            child: AboutPage(),
          ),
          Container(
            child: index(),
          ),
        ]),
      ),
    ));
  }
}
