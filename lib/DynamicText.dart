import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DynamicText extends StatelessWidget {
  const DynamicText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('app_name'.tr,style: TextStyle(fontSize: 40),),
                Text('app_title'.tr,style: TextStyle(fontSize: 20),),
                SizedBox(height: 50,),
                ElevatedButton(onPressed: (){
                  Get.updateLocale(Locale("en","US"));
                }, child: Text("English")),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
                  Get.updateLocale(Locale("bn","BD"));
                }, child: Text("Bangla")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}