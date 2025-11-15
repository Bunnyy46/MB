import'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:MyApp()));
class MyApp extends StatefulWidget{
  State<MyApp> createState()=>_MyAppState();
}
class _MyAppState extends State<MyApp>{
  int count=0;
  Widget build(BuildContext context){
    return MaterialApp(
    home:Scaffold(
    appBar:AppBar(title:Text("hello")),
      body:Center(
      child:Column(
      mainAxisAlignment:MainAxisAlignment.center,
        children:[
          MyStatelessText(),
        Text("Count:$count"),
          ElevatedButton(
          onPressed:(){
            setState((){
              count++;
            });
          },
            child:Text("increse"),
            ),
        ],
      ),
      ),
    ),
    );
  }
}
class MyStatelessText extends StatelessWidget{
  Widget build(BuildContext context){
    return Text("i never trust");
  }
}
