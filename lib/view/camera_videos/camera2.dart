import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iarab/view/camera_videos/post_screen.dart';
class Camera2 extends StatelessWidget {
  const Camera2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(onTap:() {
          Get.to(()=>PostScreen());
        },
          child: Container(
      
              width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,  child: Image.asset("assets/png/camera2video.png",fit: BoxFit.fitWidth,)),
        ),
      ),
    );
  }
}
