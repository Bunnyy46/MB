import 'package:flutter/material.dart';

void main() {
   runApp(MaterialApp(
   initialRoute: '/',
   routes: {
    '/':(context) => FirstPage(),
    '/second':(context) =>SecondPage()
   },
));
}

class FirstPage extends StatelessWidget{
 Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Naviagting between pages")),
    body:Center(
      child:ElevatedButton(
      child:Text("Go to second PAge"),
       onPressed: () { 
        Navigator.pushNamed(context, '/second');
       },
      ),
    ),
    );
 }
}
class SecondPage extends StatelessWidget{
 Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Second one")),
    body:Center(
      child:ElevatedButton(
      child:Text("Go Back"),
       onPressed: (){
        Navigator.pop(context);
        },
      ),
    ),
  
   );
 }
}
