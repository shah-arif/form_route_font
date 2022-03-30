import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_route_font/first_screen.dart';
import 'package:form_route_font/form.dart';
import 'package:form_route_font/second_screen.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      // FirstScreen(),
      FormScreen(),

      initialRoute: '/',
      routes: {
        '/first-screen': (context)=> FirstScreen(),
        '/second-screen': (context)=> SecondScreen(),
      },
    );
  }
}
