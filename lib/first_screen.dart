import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_route_font/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Screen"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             ElevatedButton(onPressed: (){
               Navigator.push(context, CupertinoPageRoute(builder: (context)=>SecondScreen()));
             }, child: Text("Go to Second Screen - Push")),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
            }, child: Text("Go to Second Screen - Push Replacement")),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/second-screen');
            }, child: Text("Go to Second Screen - Push Named")),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context, '/second-screen');
            }, child: Text("Go to Second Screen - Push Replacement Named")),
          ],
        ),
      )
    );
  }
}
