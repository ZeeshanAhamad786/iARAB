import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LikedPostScreen extends StatefulWidget {
  const LikedPostScreen({Key? key}) : super(key: key);

  @override
  State<LikedPostScreen> createState() => _LikedPostScreenState();
}

class _LikedPostScreenState extends State<LikedPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GridView(
              padding: EdgeInsets.symmetric(horizontal: 1.h,vertical: 2.h),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 10,mainAxisExtent: 150),
              children: [
                Image.asset("assets/png/post1.png",),
                Image.asset("assets/png/post2.png"),
                Image.asset("assets/png/post3.png"),
                Image.asset("assets/png/post4.png"),

              ],
            ),
          )
        ],
      ),
    );
  }
}
