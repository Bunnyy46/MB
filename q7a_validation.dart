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
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(decoration: InputDecoration(labelText: "Name")),
              TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                validator: (v) => v!.contains("@") ? null : "Invalid Email",
              ),
              ElevatedButton(onPressed: () {}, child: Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }
}
