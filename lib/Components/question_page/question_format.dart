// ignore_for_file: use_key_in_widget_constructors, slash_for_doc_comments

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/**
 * The question_format widget creates a question box. 
 * This widget takes a string as its sole parameter
 * The string will come from the list of questions
 */

class Question extends StatelessWidget {
  // variable declarations
  final String questionText;

  // constructor
  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // Designs the shape and look of the questions box
    return Material(
      color: Colors.transparent,
      child: Container(
        width: 1000,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.all(20),
        // Designs the look of the text in the box
        child: Text(
          questionText,
          style: GoogleFonts.architectsDaughter(
            fontSize: 20,
            color: Colors.red,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
