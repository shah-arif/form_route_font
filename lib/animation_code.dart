import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_route_font/detailedScreen.dart';

class AnimationCode extends StatefulWidget {
  const AnimationCode({Key? key}) : super(key: key);

  @override
  State<AnimationCode> createState() => _AnimationCodeState();
}

class _AnimationCodeState extends State<AnimationCode> {
  double _height = 100;
  double _width = 200;
  Color _color = Colors.orange;

  double _fontSize = 30;

  double _ditance = 0;

  double _opacity = 1;
  Alignment _alignment = Alignment.centerRight;


  void animatedContainer(){
    setState(() {
      _height = 200;
      _width = 300;
      _color = Colors.blueGrey;
    });
  }

  // List _col = [Colors.red,Colors.green,Colors.blue,Colors.yellow,Colors.orange,];
  // Random random = Random();
  // int index = 0;
  // int ranIndex = random.nextInt(_col.length);



  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: Duration(seconds: 3),
                  curve: Curves.easeInOutExpo,
                  height: _height,
                  width: _width,
                  decoration: BoxDecoration(
                      color: _color,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  onEnd: (){
                    setState(() {
                      _width = _width == 200 ? 400:200;
                      _color = _color == Colors.blueGrey?Colors.lightBlueAccent:Colors.blueGrey;
                    });
                  },
                ),
                ElevatedButton(onPressed: ()=>animatedContainer(),
                    child: Text("Animate")),
                AnimatedDefaultTextStyle(child: Text("We are learning animated default text style"),
                    style: TextStyle(
                        fontSize: _fontSize,
                        color: Colors.blueGrey
                    ),
                    curve: Curves.easeInBack,
                    duration: Duration(seconds: 2)),
                ElevatedButton(onPressed: (){
                  setState(() {
                    _fontSize = 50;

                  });
                }, child: Text("Aanimate")),
                Container(
                  height: 100,
                  width: 400,
                  color: Colors.black12,
                  child: Stack(
                    children: [
                      AnimatedPositioned(left: _ditance,child: ElevatedButton(onPressed: (){
                        setState(() {
                          _ditance = _ditance == 150 ? 0:150;
                        });
                      }, child: Text("Animate")), duration: Duration(seconds: 3))
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                AnimatedOpacity(
                  opacity: _opacity,
                  duration: Duration(seconds: 2),
                  child: Card(
                    child: ListTile(
                      title: Text("My List Tile"),
                      trailing: ElevatedButton(onPressed: (){
                        setState(() {
                          _opacity = _opacity == 0.2 ?1:0.2 ;
                        });
                      }, child: Text("Change Opacity")),
                    ),
                  ),
                ),
                AnimatedAlign(
                  duration: Duration(seconds: 5),
                  alignment: _alignment,
                    child: Text("My Text")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    _alignment = Alignment.centerLeft;
                  });
                }, child: Text("Change Alignment")),
                Card(
                  elevation: 5,
                  child: ListTile(
                    onTap: ()=>Navigator.push(context, CupertinoPageRoute(builder: (context)=>DetailedSCreen())),
                    leading: Hero(tag: '1',
                    child: Image.network("https://images.pexels.com/photos/1097456/pexels-photo-1097456.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",height: 40,)),
                    title: Text("Sample IMG"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
