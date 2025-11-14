import 'package:flutter/material.dart';

class Example3A extends StatelessWidget {
  @override
  Widget build(context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: w < 600 ? Colors.pink : Colors.blue,
        child: Center(
          child: Text(w < 600 ? "Mobile View" : "Desktop View"),
        ),
      ),
    );
  }
}
