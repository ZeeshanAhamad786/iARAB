import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iarab/utils/color/custom_color.dart';
import 'package:iarab/view/camera_videos/user_live_video.dart';
import 'package:iarab/view/home_screen/comment_screen/comment_screen.dart';
import 'package:iarab/view/home_screen/home_screen/search_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../controller/image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  ImagePickerController imagePickerController=Get.put(ImagePickerController());
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // void showCommentBottomSheet() {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Container(
  //         width: MediaQuery.of(context).size.width,
  //         child: Column(
  //           children: [
  //             Padding(
  //               padding: EdgeInsets.symmetric(horizontal: 16.h),
  //               child: Divider(
  //                 color: CustomColor.mainGreyColor,
  //                 thickness: 3,
  //               ),
  //             ),
  //             Text(
  //               'Comments (8596)',
  //               style: TextStyle(
  //                   fontFamily: "medium",
  //                   fontSize: 14.px,
  //                   color: CustomColor.mainDarkBlackColor),
  //             ),
  //             Padding(
  //               padding: EdgeInsets.symmetric(horizontal: 3.h),
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 crossAxisAlignment: CrossAxisAlignment.center,
  //                 children: [
  //                   CircleAvatar(
  //                     backgroundImage: AssetImage("assets/png/molviprofile.png"),
  //                   ),
  //                   SizedBox(
  //                     width: 3.w,
  //                   ),
  //                   Expanded(
  //                     child: Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //                         Text(
  //                           "Cody Fisher",
  //                           style: TextStyle(
  //                             fontSize: 13.sp,
  //                             fontFamily: "regular",
  //                             color: CustomColor.mainCustomGreyColor,
  //                           ),
  //                         ),
  //                         Text(
  //                           "I don't have personal preferences, but I can help you",
  //                           style: TextStyle(
  //                             fontSize: 13.sp,
  //                             fontFamily: "regular",
  //                             color: CustomColor.mainCustomBlackColor,
  //                           ),
  //                         ),
  //                         Row(mainAxisAlignment: MainAxisAlignment.start,
  //                           children: [
  //                             Text(
  //                               "Now",
  //                               style: TextStyle(
  //                                 fontSize: 12.sp,
  //                                 fontFamily: "regular",
  //                                 color: CustomColor.mainCustomGreyColor,
  //                               ),
  //                             ),
  //                             SizedBox(width: 2.w,),
  //                             Text(
  //                               "Reply",
  //                               style: TextStyle(
  //                                 fontSize: 13.sp,
  //                                 fontFamily: "regular",
  //                                 color: CustomColor.mainCustomBlack1Color,
  //                               ),
  //                             ),
  //                           ],
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                   SizedBox(
  //                     width: 30.w,
  //                   ),
  //                   Column(
  //                     children: [
  //                       SvgPicture.asset("assets/svg/Heart.svg"),
  //                       Text(
  //                         "225.8K",
  //                         style: TextStyle(
  //                           fontSize: 13.sp,
  //                           fontFamily: "regular",
  //                           color: CustomColor.mainGreyColor,
  //
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             SizedBox(height: 2.h,),
  //             Padding(
  //               padding: EdgeInsets.symmetric(horizontal: 3.h),
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 crossAxisAlignment: CrossAxisAlignment.center,
  //                 children: [
  //                   CircleAvatar(
  //                     backgroundImage: AssetImage("assets/png/profilepng.png"),
  //                   ),
  //                   SizedBox(
  //                     width: 3.w,
  //                   ),
  //                   Expanded(
  //                     child: Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //                         Text(
  //                           "Love Fisher",
  //                           style: TextStyle(
  //                             fontSize: 13.sp,
  //                             fontFamily: "regular",
  //                             color: CustomColor.mainCustomGreyColor,
  //                           ),
  //                         ),
  //                         Text(
  //                           "I don't have personal preferences, but I can help you",
  //                           style: TextStyle(
  //                             fontSize: 13.sp,
  //                             fontFamily: "regular",
  //                             color: CustomColor.mainCustomBlackColor,
  //                           ),
  //                         ),
  //                         Row(mainAxisAlignment: MainAxisAlignment.start,
  //                           children: [
  //                             Text(
  //                               "08:20 pm",
  //                               style: TextStyle(
  //                                 fontSize: 12.sp,
  //                                 fontFamily: "regular",
  //                                 color: CustomColor.mainCustomGreyColor,
  //                               ),
  //                             ),
  //                             SizedBox(width: 2.w,),
  //                             Text(
  //                               "Reply",
  //                               style: TextStyle(
  //                                 fontSize: 13.sp,
  //                                 fontFamily: "regular",
  //                                 color: CustomColor.mainCustomBlack1Color,
  //                               ),
  //                             ),
  //                           ],
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                   SizedBox(
  //                     width: 30.w,
  //                   ),
  //                   Column(
  //                     children: [
  //                       SvgPicture.asset("assets/svg/emptyheart.svg"),
  //                       Text(
  //                         "225.2K",
  //                         style: TextStyle(
  //                           fontSize: 13.sp,
  //                           fontFamily: "regular",
  //                           color: CustomColor.mainGreyColor,
  //
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ],
  //               ),
  //             ),
  //
  //
  //             Expanded(child: Container()),
  //             Padding(
  //               padding: EdgeInsets.symmetric(horizontal: 3.h),
  //               child: Container(
  //                 alignment: Alignment.centerLeft,
  //                 height: 5.h,
  //                 decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.circular(8),
  //                   color: const Color(0xffFFFFFF),
  //                   boxShadow: [
  //                     BoxShadow(
  //                       color: const Color(0xff000000).withOpacity(0.12),
  //                       blurRadius: 8,
  //                       offset: const Offset(0, 1),
  //                     ),
  //                   ],
  //                 ),
  //                 child: Padding(
  //                   padding:
  //                       EdgeInsets.symmetric(horizontal: 1.5.w, vertical: 1.h),
  //                   child: Row(
  //                     children: [
  //                       Expanded(
  //                         child: TextFormField(
  //                           keyboardType: TextInputType.text,
  //                           style: TextStyle(fontSize: 13.px),
  //                           // focusNode: focusNode,
  //                           autofocus: true,
  //                           decoration: InputDecoration(
  //                             border: InputBorder.none,
  //                             hintText: 'Write message...',
  //                             hintStyle: TextStyle(
  //                                 fontSize: 10.px,
  //                                 color: const Color(0xff757575)),
  //                           ),
  //                         ),
  //                       ),
  //                       SvgPicture.asset("assets/svg/commentshare.svg")
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Image.asset(
            "assets/png/homeimage.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),

          // Column to hold all the widgets
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            child: Column(
              children: [
                SizedBox(height: 5.h),
                Row(
                  children: [
                    GestureDetector(onTap:(){
                      Get.to(()=>SearchScreen());
                    },
                        child: SvgPicture.asset("assets/svg/search.svg")), // Video icon
                   SizedBox(width: 1.h,),
                    Expanded(
                      child: TabBar(
                        controller: _tabController,
                        indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                            width: 2.0,
                            color: Colors.white,
                          ),
                          insets: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 0),
                        ),
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontFamily: "medium",
                          fontWeight: FontWeight.bold
                        ),
                        unselectedLabelColor: Color(0XFF4D4F53),
                        dividerColor: Colors.transparent,
                        tabs: [
                          Tab(text: "Following"),
                          Tab(text: "Reels"),

                        ],
                      ),
                    ),
                    SizedBox(width: 1.h,),
                    GestureDetector(onTap: (){
                      Get.to(()=>UserLiveVideo());
                    },
                        child: SvgPicture.asset("assets/svg/video.svg")),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 5.h, // Adjust bottom position as needed
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/png/profilepng.png"),
                        radius: 20.sp,
                      ),
                      SizedBox(width: 2.w), // Add space between avatar and name
                      Text(
                        "John Doe", // Add your name here
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontFamily: "medium",
                        ),
                      ),
                      SizedBox(width: 2.h), // Add space between name and button
                      SizedBox(
                        height: 3.5.h,
                        child: ElevatedButton(
                          onPressed: () {
                            // Add functionality for the follow button
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: CustomColor
                                .mainGreyColor.withOpacity(0.8),
                          ),
                          child: Text(
                            "Follow",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.sp,
                              fontFamily: "medium",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                      "Hi everyone, what's on your mind today? Let's \nshare and connect!",
                      style: TextStyle(
                          fontFamily: "regular",
                          color: Colors.white,
                          fontSize: 14.sp))
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10.h,
            left: 74.w,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.h),
              child: Container(
                // width: 15.w,
                decoration: BoxDecoration(
                  // color: CustomColor.mainGreyColor,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 2.h),
                    SvgPicture.asset("assets/svg/Heart.svg"),
                    SizedBox(height: 0.5.h),
                    Text(
                      "225.8K",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontFamily: "regular",
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 1.5.h),
                    GestureDetector(
                        onTap:  () {
                          showCommentBottomSheet(context as BuildContext, (List<Map<String, String>> data) {
                            // Update the state of the parent widget here
                            print("Updated data: $data");
                          });
                        },
                        child: SvgPicture.asset("assets/svg/comment.svg")),
                    SizedBox(height: 0.5.h),
                    Text(
                      "5.1K",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontFamily: "regular",
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 1.5.h),
                    SvgPicture.asset("assets/svg/saved.svg"),
                    SizedBox(height: 0.5.h),
                    Text(
                      "Save",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontFamily: "regular",
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 1.5.h),
                    SvgPicture.asset("assets/svg/share.svg"),
                    SizedBox(height: 0.5.h),
                    Text(
                      "Share",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontFamily: "regular",
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 2.h),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
