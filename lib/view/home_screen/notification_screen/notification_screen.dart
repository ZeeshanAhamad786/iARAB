import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/color/custom_color.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<Map<String, String>> data = [
    {
      "leading": "assets/png/animated1.png",
      "title": "zeeshan",
      "subtitle": "Comment on your post",
      "trailing": "assets/png/postMessage.png",
    },{
      "leading": "assets/png/animated2.png",
      "title": "usman",
      "subtitle": "Like your post",
      "trailing": "assets/png/heartPost.png",
    },
    {
      "leading": "assets/png/animated3.png",
      "title": "zarish",
      "subtitle": "Message you",
      "trailing": "assets/png/messageYou.png",
    },
    {
      "leading": "assets/png/animated4.png",
      "title": "saba",
      "subtitle": "Reply on your comment",
      "trailing": "assets/png/replyComment.png",
    },
    {
      "leading": "assets/png/animated4.png",
      "title": "saba",
      "subtitle": "Follow you",
      "trailing": "assets/png/followYou.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: CustomColor.mainCustomBlackBoldColor.withOpacity(0.1),
              offset: Offset(0, 2),
              blurRadius: 4)
        ], color: Colors.white),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Notification",
            style: TextStyle(
                color: CustomColor.mainCustomBlackBoldColor,
                fontFamily: "medium",
                fontSize: 17.sp),
          ),
          centerTitle: true,
        ),
      ),
    ),
      body:
      ListView.builder(
        padding: EdgeInsets.only(top: 3.h),
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
                      color: CustomColor.mainPinkColor),),
                trailing: Transform.scale(
                  scale: 0.6,
                  child: Image.asset(data[index]["trailing"]!,

                  ),
                ),
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
