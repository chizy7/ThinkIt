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
        constraints: const BoxConstraints(
                                maxHeight: 600,
                                maxWidth: 650,
                                minWidth: 650,
                                minHeight: 400),
        margin: const EdgeInsets.all(15.0),
        alignment: Alignment.center,
        height: all,
        decoration: BoxDecoration(
                           
            color: Color.fromARGB(255, 240, 125, 163).withOpacity(0.8),
            borderRadius: BorderRadius.circular(20)),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(15.0),
                child: const AutoSizeText(
                  "Press the buttons to read about your thinking style!",
                  style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Aleo',
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                    maxLines: 1,
                ),
              ),

              IconButton(
                onPressed: ()=>update("images/IdealistResult.png"),
                icon: Image.asset('images/idealist_button.png'),
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(maxHeight: all/9, maxWidth: all/1.5),
                iconSize: all/3,
              ),

              IconButton(
                onPressed: ()=>update("images/SynthesistResult.png"),
                icon: Image.asset('images/synthesist_button.png'),
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(maxHeight: all/9, maxWidth: all/1.5),
                iconSize: all/3,
              ),

              IconButton(
                onPressed: ()=>update("images/PragmatistResult.png"),
                icon: Image.asset('images/prag_button.png'),
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(maxHeight: all/9, maxWidth: all/1.5),
                iconSize: all/3,
              ),

              IconButton(
                onPressed: ()=>update("images/AnalystResult.png"),
                icon: Image.asset('images/analyst_button.png'),
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(maxHeight: all/9, maxWidth: all/1.5),
                iconSize: all/3,
              ),

              IconButton(
                onPressed: ()=>update("images/RealistResult.png"),
                icon: Image.asset('images/realist_button.png'),
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(maxHeight: all/9, maxWidth: all/1.5),
                iconSize: all/3,
              ),
            ],
          ),
        ),
      )
    ];
  }
}
