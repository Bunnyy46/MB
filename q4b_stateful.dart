import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: CounterApp()));

class CounterApp extends StatefulWidget {
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int c = 0;

  @override
  Widget build(context) => Scaffold(
        appBar: AppBar(title: Text("Hello")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Stateless Text"),
              Text("Count: $c"),
              ElevatedButton(
                onPressed: () => setState(() => c++),
                child: Text("Increase"),
              )
            ],
          ),
        ),
      );
}
