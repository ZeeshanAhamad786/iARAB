import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iarab/view/splash_screens/logo_screen_splash.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (BuildContext,ORIENTATION,ScreenType){
      return  GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true),

        home: LogoScreenSplash(),
      );
    });
  }
}
