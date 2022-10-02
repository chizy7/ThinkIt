// ignore_for_file: use_key_in_widget_constructors, slash_for_doc_comments

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/**
 * The answer_button widget creates an answer button. 
 * This widget takes a function and a string as a paramter
 * The string will come from the list of answers
 * The function comes from the helper functions in @question_implementation.dart
 */

class Answer extends StatelessWidget {
  // variable declarations
  final String answerText;
  // VoidCallback since our helper functions neither take nor receive data
  final VoidCallback selectHandler;
  // constructor
  const Answer(this.answerText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    // sized box creates a shape for the button
    return SizedBox(
      width: 900,
      height: 60,
      child: OutlinedButton(
        onPressed: selectHandler,
        style: OutlinedButton.styleFrom(
          shape: const StadiumBorder(),
          side: const BorderSide(color: Colors.pinkAccent),
        ),
        // the text widget allows us to design our 
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: GoogleFonts.architectsDaughter(
            fontSize: 20, fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
