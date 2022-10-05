// ignore_for_file: use_key_in_widget_constructors, slash_for_doc_comments

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/**
 * This class creates the introduction widget containing both the title, quiz
 * guidelines and note.
 */
class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Designs the look of the column for the title, guidelines, and note.
    return Material(
      color: Colors.transparent,
      child: Column(
        children: [
          // Each text is wrapped in padding for a cleaner design look
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Thinking Style Quiz Guidelines",
              style: GoogleFonts.architectsDaughter(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double,
                decorationColor: Colors.blueGrey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
            child: Text(
                "This quiz has no right or wrong answers. "
                "It is a tool to help identify your preferred modes of thinking, questioning, and making decisions. "
                "Each item in this questionnaire is made up of a statement followed by five possible answers. "
                "To be of maximum value to you, it is important that you respond "
                "in terms of the way you actually behave, not how you think you should behave. ",
                style: GoogleFonts.architectsDaughter(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Text(
                "Note: This quiz will close when "
                "you answer the final question.",
                style: GoogleFonts.architectsDaughter(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
                textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}