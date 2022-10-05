import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:thinkit/Components/navbar.dart';
import 'package:thinkit/Pages/question_implementation.dart';

class HomeIntro extends StatelessWidget {
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
                        "Test The Way You Think!",
                        style: TextStyle(
                            fontFamily: 'Aleo',
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      child: const Text(
                        "How does your brain work at solving problems?",
                        style: TextStyle(
                            // fontFamily: 'Aleo',
                            // fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      child: const Text(
                        "Take our quiz to find out.",
                        style: TextStyle(
                            // fontFamily: 'Aleo',
                            // fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      alignment: Alignment.topLeft,
                      // decoration: BoxDecoration(color: Colors.green),
                      padding: const EdgeInsets.all(15.0),
                      child: Builder(builder: (context) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      QuestionImplementation()),
                            );
                          },
                          child: Image.asset(
                            'assets/images/startbutton.png',
                            width: 300.0,
                            height: 210.75,
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Lottie.network(
                    'https://assets8.lottiefiles.com/packages/lf20_uio5iafn.json',
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
