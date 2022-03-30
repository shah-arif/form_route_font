import 'package:flutter/material.dart';

class ThemeCustom extends StatelessWidget {
  const ThemeCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme App Bar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry"),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){}, child: Text("Elevated Button Theme"))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add_circle),),
    );
  }
}
