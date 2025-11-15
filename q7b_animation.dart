import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<MyApp> createState() => _S(); }

class _S extends State<MyApp> {
  bool show = true;

  @override
  Widget build(BuildContext c) => MaterialApp(
    home: Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() => show = !show),
          child: AnimatedOpacity(
            duration: Duration(seconds: 1),
            opacity: show ? 1 : 0,
            child: Text("Hello", style: TextStyle(fontSize: 30)),
          ),
        ),
      ),
    ),
  );
}
