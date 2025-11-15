import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: A()));

class A extends StatefulWidget {
  @override
  State<A> createState() => _AState();
}

class _AState extends State<A> with SingleTickerProviderStateMixin {
  late final c = AnimationController(
    vsync: this,
    duration: Duration(seconds: 2),
  )..repeat(reverse: true);

  late final fade = Tween(begin: 0.0, end: 1.0).animate(c);
  late final slide = Tween(begin: Offset(0, 1), end: Offset.zero).animate(c);

  @override
  build(ctx) => Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeTransition(opacity: fade, child: Text("Fade")),
          SlideTransition(position: slide, child: Text("Slide")),
        ],
      ),
    ),
  );
}
