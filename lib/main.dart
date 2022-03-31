
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_route_font/DynamicText.dart';
import 'package:form_route_font/Navigation.dart';
import 'package:form_route_font/animation.dart';
import 'package:form_route_font/custom_font.dart';
import 'package:form_route_font/first_screen.dart';
import 'package:form_route_font/form.dart';
import 'package:form_route_font/responsive_layout.dart';
import 'package:form_route_font/resposive_ratio.dart';
import 'package:form_route_font/second_screen.dart';
import 'package:form_route_font/theme_cutomization.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'animation_drawing.dart';
import 'languages.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale("en","US"),
      fallbackLocale: Locale("en","US"),
      theme: ThemeData(
        // brightness: Brightness.dark,
        textTheme: GoogleFonts.notoSerifTextTheme(
          Theme.of(context).textTheme.apply(fontSizeFactor: 1.2),
        ),
        // TextTheme(
        //   headline6: TextStyle(
        //     fontSize: 30,
        //   ),
        //   bodyText2: TextStyle(
        //     fontSize: 30,
        //     color: Colors.orange
        //   )
        // ),
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
            primary: Colors.blueGrey,
            textStyle: TextStyle(fontSize: 15)
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      home: NavigationList(),

      initialRoute: '/',
      routes: {
        '/first-screen': (context)=> FirstScreen(),
        '/second-screen': (context)=> SecondScreen(),
      },
    );
  }
}
