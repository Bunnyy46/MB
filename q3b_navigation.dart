import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: FirstPage()));

class FirstPage extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Next"),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => SecondPage()),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Back"),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
