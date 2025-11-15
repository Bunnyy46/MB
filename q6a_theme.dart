import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple),
    home: Home(),
  ),
);

class Home extends StatelessWidget {
  @override
  build(c) => Scaffold(
    appBar: AppBar(title: Text("Theme")),
    backgroundColor: Colors.amber,
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hello", style: TextStyle(fontSize: 40)),
          ElevatedButton(onPressed: () {}, child: Text("Click")),
        ],
      ),
    ),
  );
}
