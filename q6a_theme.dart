import 'package:flutter/material.dart';

void main() => runApp(ThemeExample());

class ThemeExample extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purple),
      home: Scaffold(
        appBar: AppBar(title: Text("Theme")),
        body: Center(child: Text("Hello", style: TextStyle(fontSize: 40))),
      ),
    );
  }
}
