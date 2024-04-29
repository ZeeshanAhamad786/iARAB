import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AllPostScreen extends StatefulWidget {
  const AllPostScreen({Key? key}) : super(key: key);

  @override
  State<AllPostScreen> createState() => _AllPostScreenState();
}

class _AllPostScreenState extends State<AllPostScreen> {
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
                Image.asset("assets/png/post5.png"),
                Image.asset("assets/png/post6.png"),
                Image.asset("assets/png/post6.png"),
                Image.asset("assets/png/post6.png"),
                Image.asset("assets/png/post6.png"),
                Image.asset("assets/png/post6.png"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
