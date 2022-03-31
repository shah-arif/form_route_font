import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (_,constrains){
        if (constrains.maxWidth < 520){
          return Container(
            child: Center(child: Text("Mobile")),
          );
        } else if (constrains.maxWidth > 500 && constrains.maxWidth < 1000) {
          return Center(
            child: Container(
              child: Text("Tablet"),
            ),
          );
        } else if (constrains.maxWidth > 1000 && constrains.maxWidth < 2000) {
          return Container(
            child: Center(child: Text("Web")),
          );
        } else {
          return Container(
            child: Center(child: Text("Unknown")),
          );
        }
      }),
    );
  }
}
