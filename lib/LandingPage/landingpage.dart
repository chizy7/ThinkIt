import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Test The Way You Think!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Welcome to ThinkIt! This is the place to put your mind tho the test and see what type if thinker are. Happy Thinking, just dont think to hard",
                style: TextStyle(fontSize: 16.0, color: Colors.black),
              ),
            ),
            MaterialButton(
              color: Colors.pink,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: const Text(
                  "Start Quiz",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    ];
  }
}
