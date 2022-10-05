import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:thinkit/Components/navbar.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomeBody extends StatelessWidget {
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

  List<Widget> pageChildren(double all) {
    return <Widget>[
      Container(
        alignment: Alignment.center,
        height: all,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 240, 125, 163).withOpacity(0.8),
            borderRadius: BorderRadius.circular(20)),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(15.0),
                child: const AutoSizeText(
                  "Test The Way You Think!",
                  style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Aleo',
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  maxLines: 3,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15.0),
                width: all,
                child: const AutoSizeText(
                  'We employ different ways of thinking. Some of us take a creative approach, while others are more analytic; some are focused on the short-term,while others think about the long-term. While weall have unique minds, our tendencies have been summed up into five recognized thinking styles: synthesists - the creative thinkers; idealists - the goal-setters; pragmatists - the logical thinkers; analysts - the rational intellectuals; realists - the perfect problem-solvers. Which type of thinker are you?',
                  style: TextStyle(
                    fontFamily: 'Aleo',
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    color: Colors.black,
                  ),
                  maxLines: 10,
                ),
              ),
            ],
          ),
        ),
      )
    ];
  }
}
