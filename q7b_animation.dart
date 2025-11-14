import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: AnimBox()));

class AnimBox extends StatefulWidget {
  @override
  State<AnimBox> createState() => _AnimBoxState();
}

class _AnimBoxState extends State<AnimBox> with SingleTickerProviderStateMixin {
  late final c = AnimationController(
    vsync: this,
    duration: Duration(seconds: 1),
  )..repeat(reverse: true);

  late final s = Tween(begin: 50.0, end: 150.0).animate(c);

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: c,
          builder: (_, __) => Container(
            width: s.value,
            height: s.value,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
