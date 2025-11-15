import 'package:flutter/material.dart';
  
 void main(){
   runApp(MyApp());
}

class MyApp extends StatelessWidget{
   Widget build(BuildContext context){
     return MaterialApp(
     home:Scaffold(
      body:LayoutBuilder(
       builder:(context ,constraints){
         if(constraints.maxWidth<600){
           return Container(
             color: Colors.pink,
             child: Center(child: Text("Mobile View")),
           );
         }else{
           return Container(
             color: Colors.blue,
             child: Center(child: Text("Desktop View")),
           );
         }
       }
      ),
     ),
     );
   }
}
