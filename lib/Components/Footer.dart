import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return FooterChildren();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class FooterChildren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(
          'assets/images/thinkit_logo.png',
          // height: 200,
          width: 200,
        ),
        Row(
          children: [
            AutoSizeText('Flutter Group 7',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.w600)),
            Lottie.network(
                'https://assets5.lottiefiles.com/private_files/lf30_jscf4cci.json',
                height: 200),
          ],
        ),
      ]),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(
          'assets/images/thinkit_logo.png',
          height: 100,
          width: 100,
        ),
        Row(
          children: [
            AutoSizeText('Flutter Group 7',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600)),
            Lottie.network(
                'https://assets5.lottiefiles.com/private_files/lf30_jscf4cci.json',
                height: 100),
          ],
        ),
      ]),
    );
  }
}
