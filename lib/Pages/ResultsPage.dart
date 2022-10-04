import 'package:flutter/material.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({super.key});

  @override
  State<ResultsPage> createState() => ResultsPageState();
}

class ResultsPageState extends State<ResultsPage> {
  String currentResultImage = 'images/IdealistResult.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/thinkit_bg.png'),
                fit: BoxFit.cover)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,

                  // Buttons
                  children: [
                    const Spacer(),

                    // Idealist
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentResultImage = getResult(0);
                        }); 
                      },
                      child: const Text('Idealist'),
                    ),
                    const Spacer(),

                    // Synthesist
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentResultImage = getResult(1);
                        });
                      },
                      child: const Text('Synthesist'),
                    ),
                    const Spacer(),

                    // Pragmatist
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentResultImage = getResult(2);
                        });
                      },
                      child: const Text('Pragmatist'),
                    ),
                    const Spacer(),

                    // Analyst
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentResultImage = getResult(3);
                        });
                        
                      },
                      child: const Text('Analyst'),
                    ),
                    const Spacer(),

                    // Realist
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentResultImage = getResult(4);
                        });
                      },
                      child: const Text('Realist'),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),

            // Results
            Expanded(
              // child: Stack(children: <Widget>[
              //   Image.asset('assets/images/notepad.png'),
              //   Center(
              //       child: Container(
              //           padding: const EdgeInsets.all(75.0), child: Text(text))),
              // ]),

              child: Container(
                constraints: BoxConstraints(
                    maxHeight: 500,
                    maxWidth: 500,
                    minWidth: 500,
                    minHeight: 500),

                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(currentResultImage),
                )),
                // padding: const EdgeInsets.all(10.0),
                // child: Container(
                //   // constraints: BoxConstraints(maxHeight: 100, maxWidth: 100),
                //   color: Color.fromARGB(255, 228, 110, 110).withOpacity(0.9),
                //   // margin: const EdgeInsets.all(150.0),

                //   // constraints: BoxConstraints(maxWidth: 200, maxHeight: 500),
                //   // padding: const EdgeInsets.all(75.0),
                //   // alignment: Alignment.center,
                //   // child: Text(
                //   //   text,
                //   //   // textAlign: TextAlign.center,
                //   // ),
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String getResult(int choice){
  List<String> assetNames = [
    'images/IdealistResult.png',
    'images/SynthesistResult.png',
    'images/empty_notepad.png', //'images/PragmatistResult.png,'
    'images/AnalystResult.png',
    'images/RealistResult.png',

  ];

  return assetNames[choice];
}
