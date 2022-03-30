import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationDrawing extends StatelessWidget {
  const AnimationDrawing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text("Lottie"),
            Lottie.network("https://assets9.lottiefiles.com/packages/lf20_jqepseig.json"),
            Text("Rive"),
          ],
        ),
      ),
    );
  }
}
