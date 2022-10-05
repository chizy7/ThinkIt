import 'dart:html';

import 'package:flutter/material.dart';
import 'package:adaptive_navbar/adaptive_navbar.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final sw = MediaQuery.of(context).size.width;
    // return Scaffold(
    //     appBar: AdaptiveNavBar(
    //   // backgroundColor: Colors.transparent,
    //   toolbarHeight: 200,
    //   screenWidth: sw,
    //   title: Image.asset(
    //     'assets/images/thinkit_logo.png',
    //     height: 200,
    //   ),
    //   navBarItems: [
    //     NavBarItem(
    //       text: "Home",
    //       onTap: () {
    //         Navigator.pushNamed(context, "routeName");
    //       },
    //     ),
    //     NavBarItem(
    //       text: "About Us",
    //       onTap: () {
    //         Navigator.pushNamed(context, "routeName");
    //       },
    //     ),
    //     NavBarItem(
    //       text: "About Us",
    //       onTap: () {
    //         Navigator.pushNamed(context, "routeName");
    //       },
    //     ),
    //     NavBarItem(
    //       text: "About Us",
    //       onTap: () {
    //         Navigator.pushNamed(context, "routeName");
    //       },
    //     ),
    //   ],
    // ));
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(
          'assets/images/thinkit_logo.png',
          // height: 200,
          width: 200,
        ),
        // Wrap(
        //   alignment: WrapAlignment.spaceAround,
        //   children: const [
        //     Text(
        //       "Home",
        //       style: TextStyle(
        //           color: Colors.black,
        //           fontSize: 25,
        //           fontWeight: FontWeight.w600),
        //     ),
        //     SizedBox(width: 30),
        //     Text(
        //       "Quiz",
        //       style: TextStyle(
        //           color: Colors.black,
        //           fontSize: 25,
        //           fontWeight: FontWeight.w600),
        //     ),
        //   ],
        // )
      ]),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/images/thinkit_logo.png',
            height: 100,
            width: 150,
          ),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: const [
          //       Text(
          //         "Home",
          //         style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 25,
          //             fontWeight: FontWeight.w600),
          //       ),
          //       SizedBox(
          //         width: 30,
          //       ),
          //       Text(
          //         "Quiz",
          //         style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 25,
          //             fontWeight: FontWeight.w600),
          //       ),
          //       SizedBox(
          //         width: 30,
          //       ),
          //     ],
          //   ),
          // )
        ]),
      ),
    );
  }
}
