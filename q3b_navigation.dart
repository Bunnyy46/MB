import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: FirstPage()));

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Second Page"),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
