import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'question_implementation.dart';

class ResultsPage extends StatefulWidget {
  final List resultList;
  const ResultsPage(this.resultList, {super.key});

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
            Padding(padding: const EdgeInsets.fromLTRB(40.0, 0, 0, 0),
              child: Text("These are the results, you are:\n\n\n${widget.resultList[0].toString()}% Idealist\n\n\n${widget.resultList[1].toString()}% Synthesist\n\n\n${widget.resultList[2].toString()}% Pragmatist\n\n\n${widget.resultList[3].toString()}% Analyst\n\n\n${widget.resultList[4].toString()}% Realist", 
              style: GoogleFonts.architectsDaughter(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                //backgroundColor: const Color.fromRGBO(200, 200, 200, 0.8),
                background: Paint()..color = const Color.fromRGBO(255, 255, 255, 0.6)
                ..strokeWidth = 35
                ..strokeJoin = StrokeJoin.round
                ..strokeCap = StrokeCap.round
                ..style = PaintingStyle.stroke

                
                ),
              ),
              
            ),
      
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  

                  // Buttons
                  children: [

                    // Analyst
                    IconButton(
                      icon: Image.asset('images/idealist_button.png'),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(maxHeight: 75, maxWidth: 300),
                      iconSize: 500,
                      onPressed: (){
                        setState(() {
                          currentResultImage = getResult(0);
                        }); 

                      },
                    ),
                    
                    // Synthesist
                    IconButton(
                      icon: Image.asset('images/synthesist_button.png'),
                     padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(maxHeight: 75, maxWidth: 300),
                      iconSize: 500,
                      onPressed: (){
                        setState(() {
                          currentResultImage = getResult(1);
                        }); 

                      },
                    ),

                    // Pragmatist
                    IconButton(
                      icon: Image.asset('images/prag_button.png'),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(maxHeight: 75, maxWidth: 300),
                      iconSize: 500,
                      onPressed: (){
                        setState(() {
                          currentResultImage = getResult(2);
                        }); 

                      },
                    ),

                    // Analyst
                    IconButton(
                      icon: Image.asset('images/analyst_button.png'),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(maxHeight: 75, maxWidth: 300),
                      iconSize: 500,
                      onPressed: (){
                        setState(() {
                          currentResultImage = getResult(3);
                        }); 

                      },
                    ),

                    // Realist
                    IconButton(
                      icon: Image.asset('images/realist_button.png'),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(maxHeight: 75, maxWidth: 300),
                      iconSize: 500,
                      onPressed: (){
                        setState(() {
                          currentResultImage = getResult(4);
                        }); 

                      },
                    ),
                  ],
                ),
              ),
            ),

            // Results
            Expanded(
              child: Container(
                constraints: const BoxConstraints(
                    maxHeight: 500,
                    maxWidth: 500,
                    minWidth: 500,
                    minHeight: 500),

                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(currentResultImage),
                )),
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
    'images/PragmatistResult.png',
    'images/AnalystResult.png',
    'images/RealistResult.png',
  ];

  return assetNames[choice];
}