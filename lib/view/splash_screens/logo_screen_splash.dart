import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iarab/view/splash_screens/on_boading_screen_1.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LogoScreenSplash extends StatefulWidget {
  const LogoScreenSplash({Key? key}) : super(key: key);

  @override
  State<LogoScreenSplash> createState() => _LogoScreenSplashState();
}

class _LogoScreenSplashState extends State<LogoScreenSplash> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3), (){
    Get.offAll(()=>OnBoadingScreen1());
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(height: 32.h,),
Center(child: Image.asset("assets/png/logo.png",height: 220,width: 220,)),


      ],),
    );
  }
}
