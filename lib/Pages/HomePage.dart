import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:thinkit/Components/Navbar.dart';
import 'package:thinkit/Components/HomeIntro.dart';
import 'package:thinkit/Components/HomeBody.dart';
import 'package:thinkit/Components/Footer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
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
                margin: const EdgeInsets.all(40.0),
                // padding: const EdgeInsets.all(15.0), this is redundant as its the over lay
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 5,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ],
                ),

                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    height: 200,
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
                // margin: const EdgeInsets.all(15.0),
                // padding: const EdgeInsets.all(15.0),
                // decoration: BoxDecoration(
                //   color: Colors.white,
                //   boxShadow: [
                //     BoxShadow(
                //       offset: const Offset(0, 1),
                //       blurRadius: 5,
                //       color: Colors.black.withOpacity(0.3),
                //     ),
                //   ],
                // ),
                margin: const EdgeInsets.all(40.0),
                // padding: const EdgeInsets.all(15.0), this is redundant as its the over lay
                // decoration: BoxDecoration(
                //   color: Colors.white.withOpacity(0.9),
                //   borderRadius: BorderRadius.circular(20),
                //   boxShadow: [
                //     BoxShadow(
                //       offset: const Offset(0, 1),
                //       blurRadius: 5,
                //       color: Colors.black.withOpacity(0.3),
                //     ),
                //   ],
                // ),

                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(30.0),
                      child: Row(
                        children: [
                          Expanded(
                            // child: Image.asset('assets/images/Thinker.png'),
                            child: Lottie.network(
                                'https://assets9.lottiefiles.com/packages/lf20_Nwp9LyblGr.json'),
                          ),
                          Expanded(
                            child: HomeBody(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 185, 185, 185),
                ),
              ),
              Container(
                  decoration: const BoxDecoration(
                    color: Colors.pink,
                  ),
                  child: Container(
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(15.0),
                      child: Footer())),
            ],
          ),
        ),
      ),
    );
  }
}
