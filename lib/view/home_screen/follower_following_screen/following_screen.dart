import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/color/custom_color.dart';

class FollowingScreen extends StatefulWidget {
  FollowingScreen({Key? key}) : super(key: key);

  @override
  State<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
  // Define your list of data here
  List<Map<String, String>> data = [
    {
      "leading": "assets/png/animated1.png",
      "title": "zeeshan",
      "subtitle": "hello world",
      "trailing": "following",
    },{
      "leading": "assets/png/animated2.png",
      "title": "usman",
      "subtitle": "random click",
      "trailing": "following",
    },
    {
      "leading": "assets/png/animated3.png",
      "title": "zarish",
      "subtitle": "love",
      "trailing": "following",
    },
    {
      "leading": "assets/png/animated4.png",
      "title": "saba",
      "subtitle": "loving",
      "trailing": "following",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                leading: Image.asset(
                  data[index]["leading"]!,
                  width: 48, // Adjust width as needed
                  height: 48, // Adjust height as needed
                ),
                title: Text(
                  data[index]["title"]!,
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: "medium",
                      color: CustomColor.mainCustomBlackBoldColor),
                ),
                subtitle: Text(data[index]["subtitle"]!,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: "regular",
                      color: CustomColor.mainCustomBlackBoldColor),),
                trailing: Text(data[index]["trailing"]!,
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontFamily: "regular",
                      color: CustomColor.mainPinkColor),),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 3.h),
                child: Divider(color: Color(0xffEDEDED),),
              )
            ],
          );
        },
      ),
    );
  }
}
