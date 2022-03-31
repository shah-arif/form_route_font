import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';

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
            Container(height: 200,child: Lottie.network("https://assets9.lottiefiles.com/packages/lf20_jqepseig.json")),
            Text("Rive"),
            Container(
              height: 200,
              child: RiveAnimation.network(
                'https://cdn.rive.app/animations/vehicles.riv',artboard: 'Truck',
                animations: [
                  'curves','bounce','drive','idle'
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
