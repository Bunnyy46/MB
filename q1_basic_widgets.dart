import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Basic Widgets")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello Flutter!", style: TextStyle(fontSize: 20)),
              Image.network('https://flutter.dev/images/flutter-logo-sharing.png', width: 80),
              Container(
                color: Colors.amber,
                padding: EdgeInsets.all(10),
                child: Text("Inside Container"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
