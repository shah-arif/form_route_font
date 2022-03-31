import 'package:flutter/material.dart';

class DetailedSCreen extends StatelessWidget {
  const DetailedSCreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(tag: '1',
                child: Image.network("https://images.pexels.com/photos/1097456/pexels-photo-1097456.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",)),
          ],
        ),
      ),
    );
  }
}
