import 'package:flutter/material.dart';
import 'dart:math';
import 'package:lottie/lottie.dart';
import 'package:thinkit/Components/Navbar.dart';
import 'package:thinkit/Components/ResultsIntro.dart';
import 'package:thinkit/Components/ResultBody.dart';
import 'package:thinkit/Components/Footer.dart';

class resultsPage extends StatefulWidget {
  final List resultList;
  const resultsPage(this.resultList, {super.key});

  @override
  State<resultsPage> createState() => ResultsPageState();
}

class ResultsPageState extends State<resultsPage> {
  String resultsImg = 'images/IdealistResult.png';

  void _update(String img) {
    setState(() => resultsImg = img);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/thinkit_bg.png'),
                fit: BoxFit.cover)),
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

                child: Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(15.0),
                  //   padding:
                  //       EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),

                  child: ResultsIntro(widget.resultList),
                ),
              ),
              Container(
                // margin: const EdgeInsets.all(40.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        flex: 4,
                        child: Container(
                          constraints: const BoxConstraints(
                              maxHeight: 650,
                              maxWidth: 650,
                              minWidth: 650,
                              minHeight: 650),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(resultsImg),
                          )),
                        )),
                    Expanded(
                      flex: 4,
                      child: ResultsBody(update: _update),
                    ),
                  ],
                ),
              ),
              Container(
                // height: 30.0,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 185, 185, 185),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 50.0),
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

String getResult(int choice) {
  List<String> assetNames = [
    'images/IdealistResult.png',
    'images/SynthesistResult.png',
    'images/PragmatistResult.png',
    'images/AnalystResult.png',
    'images/RealistResult.png',
  ];

  return assetNames[choice];
}
