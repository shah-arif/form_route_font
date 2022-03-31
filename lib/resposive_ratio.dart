import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveRatio extends StatelessWidget {
  const ResponsiveRatio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 8/2,
                child: Container(
                  color: Colors.orange,
                ),
              ),
              AspectRatio(
                aspectRatio: 4/2,
                child: Container(
                  color: Colors.blueGrey,
                  child: FractionallySizedBox(
                    heightFactor: 0.5,
                    widthFactor: 0.5,
                    child: Container(
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
