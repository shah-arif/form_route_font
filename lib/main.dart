import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_route_font/first_screen.dart';
import 'package:form_route_font/form.dart';
import 'package:form_route_font/second_screen.dart';
import 'package:form_route_font/theme_cutomization.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 30,
          ),
          bodyText2: TextStyle(
            fontSize: 30,
            color: Colors.orange
          )
        ),
        // scaffoldBackgroundColor: Colors.blueGrey
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.amber,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20)
            )
          )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.blueGrey
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      home:
      // FirstScreen(),
      // FormScreen(),
      ThemeCustom(),

      initialRoute: '/',
      routes: {
        '/first-screen': (context)=> FirstScreen(),
        '/second-screen': (context)=> SecondScreen(),
      },
    );
  }
}
