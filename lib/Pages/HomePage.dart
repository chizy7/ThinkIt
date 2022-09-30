import 'package:flutter/material.dart';
import 'package:thinkit/Components/Navbar.dart';
import 'package:thinkit/Components/HomeIntro.dart';
import 'package:thinkit/Components/HomeBody.dart';
import 'package:thinkit/Components/Footer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/thinkit_bg.png'),
                fit: BoxFit.cover)),

        // decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //         begin: Alignment.topLeft,
        //         end: Alignment.bottomRight,
        //         colors: [
        //       Colors.orange,
        //       Colors.yellow,
        //     ])),
        child: SingleChildScrollView(
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
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.all(15.0),
                        padding: const EdgeInsets.all(15.0),
                        child: HomeBody()),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        child: Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(15.0),
                            child: Footer())),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
