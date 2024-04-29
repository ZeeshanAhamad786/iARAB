import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/color/custom_color.dart';

class FollowerScreen extends StatefulWidget {
  FollowerScreen({Key? key}) : super(key: key);

  @override
  State<FollowerScreen> createState() => _FollowerScreenState();
}

class _FollowerScreenState extends State<FollowerScreen> {
  // Define your list of data here
  List<Map<String, dynamic>> data = [
    {
      "leading": "assets/png/animated1.png",
      "title": "zeeshan",
      "subtitle": "hello world",
      "isFollowing": false,
    },
    {
      "leading": "assets/png/animated2.png",
      "title": "usman",
      "subtitle": "random click",
      "isFollowing": false,
    },
    {
      "leading": "assets/png/animated3.png",
      "title": "zarish",
      "subtitle": "love",
      "isFollowing": false,
    },
    {
      "leading": "assets/png/animated4.png",
      "title": "saba",
      "subtitle": "loving",
      "isFollowing": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                    color: CustomColor.mainCustomBlackBoldColor,
                  ),
                ),
                subtitle: Text(
                  data[index]["subtitle"]!,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: "regular",
                    color: CustomColor.mainCustomBlackBoldColor,
                  ),
                ),
                trailing: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        // Set the button color based on isFollowing
                        return data[index]["isFollowing"]!
                            ? CustomColor.mainPinkColor
                            : Colors.white;
                      },
                    ),
                    side: MaterialStateProperty.all<BorderSide?>(
                      BorderSide(color: CustomColor.mainPinkColor),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      // Toggle isFollowing value
                      data[index]["isFollowing"] =
                      !data[index]["isFollowing"]!;
                    });
                  },
                  child: Text(
                    data[index]["isFollowing"]! ? "Follow back" : "Following",
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontFamily: "regular",
                      color: data[index]["isFollowing"]!
                          ? Colors.white
                          : CustomColor.mainPinkColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.h),
                child: Divider(
                  color: Color(0xffEDEDED),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
