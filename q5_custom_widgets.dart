import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(),
            MyCardBox(),
          ],
        ),
      ),
    );
  }
}

// Custom Button Widget
class MyButton extends StatelessWidget {
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text("My Custom Button"),
    );
  }
}

// Custom Card Widget
class MyCardBox extends StatelessWidget {
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text("My Custom Card"),
      ),
    );
  }
}
