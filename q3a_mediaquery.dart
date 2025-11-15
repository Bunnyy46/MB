import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (context) {
            double width = MediaQuery.of(context).size.width;

            // Breakpoint: mobile < 600, desktop ≥ 600
            if (width < 600) {
              return Container(
                color: Colors.pink,
                child: Center(child: Text("Mobile View")),
              );
            } else {
              return Container(
                color: Colors.blue,
                child: Center(child: Text("Desktop View")),
              );
            }
          },
        ),
      ),
    );
  }
}
