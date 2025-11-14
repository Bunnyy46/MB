import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(),
          MyCardBox(),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(c) => ElevatedButton(
        onPressed: () {},
        child: Text("My Custom Button"),
      );
}

class MyCardBox extends StatelessWidget {
  @override
  Widget build(c) => Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text("My Custom Card"),
        ),
      );
}
