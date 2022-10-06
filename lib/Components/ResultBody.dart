import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:thinkit/Components/navbar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:thinkit/Pages/ResultsPage.dart';

class ResultsBody extends StatelessWidget {
  final ValueChanged<String> update;
  ResultsBody({required this.update});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return pageChildren(constraints.biggest.width);
      },
    );
  }

  Container pageChildren(double all) {
    return Container(
      // constraints: const BoxConstraints(
      //     maxHeight: 600, maxWidth: 650, minWidth: 650, minHeight: 400),
      // margin: const EdgeInsets.all(15.0),
      // alignment: Alignment.center,
      // height: all,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 240, 125, 163).withOpacity(0.8),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 0,
            child: Container(
              padding: const EdgeInsets.all(15.0),
              child: const AutoSizeText(
                "Press the buttons to read about \nyour thinking style!",
                style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Aleo',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                maxLines: 1,
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: InkWell(
              onTap: () => update("images/IdealistResult.png"),
              child: Image.asset(
                'images/idealist_button.png',
                width: 150,
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: InkWell(
              onTap: () => update("images/SynthesistResult.png"),
              child: Image.asset(
                'images/synthesist_button.png',
                width: 150,
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: InkWell(
              onTap: () => update("images/PragmatistResult.png"),
              child: Image.asset(
                'images/prag_button.png',
                width: 150,
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: InkWell(
              onTap: () => update("images/AnalystResult.png"),
              child: Image.asset(
                'images/analyst_button.png',
                width: 150,
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: InkWell(
              onTap: () => update("images/RealistResult.png"),
              child: Image.asset(
                'images/realist_button.png',
                width: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
