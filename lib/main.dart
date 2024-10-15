import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int a=0;
  void update(){
    setState(() {
       a=a+1;
    });
 
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:Column(
          
          children: [
          Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            
            GestureDetector(
              onTap: (){
               update();
               print(a);
              },
              child: Container(
                color: (a>=3)?Colors.red:Colors.black,
                height:50,
                width:50, 
              ),
            ),
              
          ],)
        ],),
      ),);
  }
}