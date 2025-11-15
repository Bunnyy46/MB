import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(title: Text("column & row & stack")),
        body:Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
         children:[
           Row(
             mainAxisAlignment:MainAxisAlignment.center,
             children:[
               Icon(Icons.star,color:Colors.orange),
               Icon(Icons.favorite,color:Colors.blue),
               Icon(Icons.thumb_up,color:Colors.red),
               
             ],
           ),
           SizedBox(height:20),
           Stack(
             alignment:Alignment.center,
             children:[
               Container(height:20,width:20,color:Colors.black),
               Container(height:10,width:10,color:Colors.cyan),
             ],
           ),
         ],
          
        ),
        ),
      ),
    );
  }
}
