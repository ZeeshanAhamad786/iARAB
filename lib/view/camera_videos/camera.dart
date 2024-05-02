import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iarab/view/camera_videos/camera2.dart';
import 'package:iarab/view/camera_videos/go_live_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controller/utils/color/custom_color.dart';
class Camera extends StatelessWidget {
  const Camera({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        GestureDetector(onTap:() {

        },
          child: Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,  child: Image.asset("assets/png/liveScreen1.png",fit: BoxFit.fitWidth,)),
        ),
        Positioned(bottom: 35,right: 16.h,
            child: GestureDetector(onTap: () {
              Get.to(()=>GoLiveScreen());
            },
                child: Text("Live",style: TextStyle(color: Colors.white,fontSize: 10.px),))),
        Positioned(bottom: 35,right: 22.h,
            child: GestureDetector(onTap: () {
              // Get.to(()=>GoLiveScreen());
            },
                child: Text("Camera",style: TextStyle(color: Colors.white,fontSize: 10.px),))),
        Positioned(bottom: 70,left: 20.5.h,
          child: GestureDetector(
            onTap: () {
              Get.to(()=>Camera2());
            },
            child: Container(
              width: 45,
               height: 45,
              decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 4),
                  color:CustomColor.mainColor                                            ,
                  borderRadius: BorderRadius.circular(40)),
            ),
          ),
        )
      ],)
    );
  }
}
