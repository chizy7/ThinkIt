import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:thinkit/Components/navbar.dart';
import 'package:thinkit/Components/question_page/question_implementation.dart';

class ResultsIntro extends StatelessWidget {
  final List resultList;
  const ResultsIntro(this.resultList, {super.key});
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      child: const Text(
                        "Here are your results!",
                        style: TextStyle(
                            fontFamily: 'Aleo',
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      child: const Text(
                        "You are:",
                        style: TextStyle(
                            // fontFamily: 'Aleo',
                            // fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      child: Text(
                        "${resultList[0]}% Idealist\n"
                        "${resultList[1]}% Synthesist\n"
                        "${resultList[2]}% Pragmatist\n"
                        "${resultList[3]}% Analyst\n"
                        "${resultList[4]}% Realist",
                        style: TextStyle(
                            // fontFamily: 'Aleo',
                            // fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Lottie.network(
                    'https://assets6.lottiefiles.com/packages/lf20_4ehp0dcr.json',
                    height: 700),
                flex: 2,
              )
              // Container(
              //     child: GestureDetector(
              //   onTap: () {}, // Image tapped
              //   child: Image.asset(
              //     'assets/startbutton.png',
              //     width: 250,
              //     height: 140.5,
              //   ),
              // )),
            ],
          )),
    ];
  }
}
