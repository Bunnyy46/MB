import 'package:flutter/material.dart';

class Example2A extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column Row Stack")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.orange),
                Icon(Icons.favorite, color: Colors.blue),
                Icon(Icons.thumb_up, color: Colors.red),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(height: 20, width: 20, color: Colors.black),
                Container(height: 10, width: 10, color: Colors.cyan),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
