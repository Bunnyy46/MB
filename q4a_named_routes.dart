import 'package:flutter/material.dart';

void main() => runApp(AppWithRoutes());

class AppWithRoutes extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (_) => First(),
        '/second': (_) => Second(),
      },
    );
  }
}

class First extends StatelessWidget {
  @override
  Widget build(c) => Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text("Go"),
            onPressed: () => Navigator.pushNamed(c, '/second'),
          ),
        ),
      );
}

class Second extends StatelessWidget {
  @override
  Widget build(c) => Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text("Back"),
            onPressed: () => Navigator.pop(c),
          ),
        ),
      );
}
