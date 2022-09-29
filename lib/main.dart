import 'package:flutter/material.dart';
import 'package:thinkit/navbar/navbar.dart';
import 'package:thinkit/Views/HomeIntro.dart';

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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Colors.orange,
              Colors.yellow,
            ])),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              margin: const EdgeInsets.all(15.0),
              // padding: const EdgeInsets.all(15.0), this is redundant as its the over lay
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(15.0),
                  child: Navbar(),
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(15.0),
                  //   padding:
                  //       EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),

                  child: HomeIntro(),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
