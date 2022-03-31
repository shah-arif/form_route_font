import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_route_font/responsive_layout.dart';
import 'package:form_route_font/resposive_ratio.dart';
import 'package:form_route_font/theme_cutomization.dart';

import 'DynamicText.dart';
import 'animation.dart';
import 'custom_font.dart';
import 'first_screen.dart';
import 'form.dart';

class NavigationList extends StatelessWidget {
  const NavigationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Topic List"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>FirstScreen()));}, child: Text("First Screen")),
            ElevatedButton(onPressed: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>FormScreen()));}, child: Text("Form Screen")),
            ElevatedButton(onPressed: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>AnimationNav()));}, child: Text("Animations")),
            ElevatedButton(onPressed: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>ThemeCustom()));}, child: Text("Theme Customization")),
            ElevatedButton(onPressed: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>ResponsiveLayout()));}, child: Text("Responsive Layout")),
            ElevatedButton(onPressed: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>ResponsiveRatio()));}, child: Text("Responsive Aspect Ratio")),
            ElevatedButton(onPressed: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>DynamicText()));}, child: Text("Dynamic Text")),
            ElevatedButton(onPressed: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>CustomFontText()));}, child: Text("Custom Font")),
          ],
        ),
      ),
    );
  }
}
