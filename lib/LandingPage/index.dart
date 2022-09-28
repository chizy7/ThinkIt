import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:thinkit/navbar/navbar.dart';

class index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.grey),
      child: const Text(
        "Welcome to ThinkIt! This is the place to put your mind tho the test and see what type if thinker are. Happy Thinking, just dont think to hard",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.black),
      ),
    );
  }
}
