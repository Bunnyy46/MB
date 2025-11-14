import 'package:flutter/material.dart';

class Example2B extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (ctx, size) {
          bool mobile = size.maxWidth < 600;
          return Container(
            color: mobile ? Colors.pink : Colors.blue,
            child: Center(
              child: Text(mobile ? "Mobile View" : "Desktop View"),
            ),
          );
        },
      ),
    );
  }
}
