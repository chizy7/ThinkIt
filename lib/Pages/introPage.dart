// ignore_for_file: use_key_in_widget_constructors, unused_element, slash_for_doc_comments, unused_field

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thinkit/Components/question_page/answer_button.dart';
import 'package:thinkit/Components/question_page/question_format.dart';
import 'package:thinkit/Components/question_page/quiz_outroduction.dart';
import 'package:thinkit/Components/question_page/quiz_introduction.dart';
import 'package:thinkit/Components/question_page/question_resources.dart';
import 'package:thinkit/Components/question_page/question_implementation.dart';

class IntroPage extends StatefulWidget {
  @override
  State<IntroPage> createState() => _IntroPage();
}

class _IntroPage extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    // Designs the entire page
    // The first child contains the wallpaper
    return Material(
        color: Colors.transparent,
        child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/thinkit_bg.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            // Scroll view implementation to allow for a more dynamic page that
            // changes based on screen resolutions.
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // A column for the outroduction and view results button
              children: [
                Introduction(),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    width: 500,
                    height: 60,
                    // This button will take us to the next page
                    child: Builder(builder: (context) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuestionImplementation()),
                          );
                        },
                        child: OutlinedButton(
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => QuestionImplementation());
                            Navigator.push(context, route);
                          },
                          style: OutlinedButton.styleFrom(
                            shape: const StadiumBorder(),
                            side: const BorderSide(color: Colors.pinkAccent),
                          ),
                          child: Text(
                            "Ready To be Begin?",
                            style: GoogleFonts.architectsDaughter(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    })),
                const SizedBox(
                  height: 30,
                ),
              ],
            )));
  }
}
