import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyForm()));

class MyForm extends StatelessWidget {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(decoration: InputDecoration(labelText: "Name")),
              TextFormField(decoration: InputDecoration(labelText: "Email")),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: "Password"),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }
}
