// ignore_for_file: slash_for_doc_comments, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/**
 * This class creates the outroduction widget containing the goodbye
 * and an invitation to view the results
 */
class Outroduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Designs the look of the container for goodbye and results invitation.
    return Material(
      color: Colors.transparent,
      child: Container(
        width: 1100,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        // The column holds the texts for the goodbye and invitation.
        child: Column(
          children: [
            // Each text is wrapped in padding for a cleaner design look
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("Thank you",
                  style: GoogleFonts.architectsDaughter(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent,
                  ),
                  textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Text("Please click the button below to find out your thinking style",
                  style: GoogleFonts.architectsDaughter(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w100,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
