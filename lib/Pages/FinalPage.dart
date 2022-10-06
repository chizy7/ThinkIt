import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:thinkit/Components/ResultBody.dart';
import 'package:thinkit/Components/Footer.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({super.key});

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  String resultsImg = 'images/IdealistResult.png';

  void _update(String img) {
    setState(() => resultsImg = img);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/thinkit_bg.png'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                    constraints: const BoxConstraints(
                        maxHeight: 600,
                        maxWidth: 600,
                        minWidth: 400,
                        minHeight: 400),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(resultsImg),
                    )),
                  ),
                  ResultsBody(update: _update),
                ],
              ),
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
