import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_route_font/animation_code.dart';
import 'package:form_route_font/animation_drawing.dart';

class AnimationNav extends StatelessWidget {
  const AnimationNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>AnimationDrawing()));}, child: Text("Drawing Based Animation")),
            ElevatedButton(onPressed: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>AnimationCode()));}, child: Text("Code Based Animation")),
          ],
        ),
      ),
    );
  }
}
