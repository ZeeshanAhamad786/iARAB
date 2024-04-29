import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iarab/view/home_screen/inbox_screen/chat_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/color/custom_color.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
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
              "Inbox",
              style: TextStyle(
                  color: CustomColor.mainCustomBlackBoldColor,
                  fontFamily: "medium",
                  fontSize: 17.sp),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 3.h,
          ),
          ListView.builder(

padding: EdgeInsets.symmetric(horizontal: 3.h),
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (context, int) {

                return GestureDetector(
                  onTap: () {
                    Get.to(()=>ChatScreen());
                  },
                  child: Column(
                    children: [SizedBox(height: 1.6.h,),
                      Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: CustomColor.mainCustomBlackBoldColor.withOpacity(0.1)
                                  ,
                                blurRadius: 8,
                                offset: Offset(0, 1))
                          ],color: Colors.white,borderRadius: BorderRadius.circular(10)),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/png/profilepng.png"),
                            ),
                            title: Text(
                              "Usama",
                              style: TextStyle(
                                  fontSize: 14.5.sp,
                                  color: CustomColor.mainCustomBlackBoldColor,
                                  fontFamily: "medium"),
                            ),
                            trailing: Text(
                              "05:49 pm",
                              style: TextStyle(
                                  fontSize: 13.5.sp,
                                  color: CustomColor.mainCustomBlackBoldColor,
                                  fontFamily: "medium"),
                            ),
                          )),
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
