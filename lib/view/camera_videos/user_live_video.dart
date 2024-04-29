import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/color/custom_color.dart';
class UserLiveVideo extends StatefulWidget {
  const UserLiveVideo({Key? key}) : super(key: key);

  @override
  State<UserLiveVideo> createState() => _UserLiveVideoState();
}

class _UserLiveVideoState extends State<UserLiveVideo> {
  List<Map<String, String>> data = [
    {
      "leading": "assets/png/animated1.png",
      "title": "Jane Cooper",
      "subtitle": "Comment on your post",

    },{
      "leading": "assets/png/animated2.png",
      "title": "usman",
      "subtitle": "Like your post",

    },
    {
      "leading": "assets/png/animated3.png",
      "title": "Darrell Steward",
      "subtitle": "Message you",

    },
    {
      "leading": "assets/png/animated4.png",
      "title": "Guy Hawkins",
      "subtitle": "Reply on your comment",

    },
    // {
    //   "leading": "assets/png/animated4.png",
    //   "title": "Theresa Webb",
    //   "subtitle": "Follow you",
    // },
    // {
    //   "leading": "assets/png/animated4.png",
    //   "title": "Theresa Webb",
    //   "subtitle": "Follow you",
    // },
    // {
    //   "leading": "assets/png/animated4.png",
    //   "title": "Theresa Webb",
    //   "subtitle": "Follow you",
    // },
    // {
    //   "leading": "assets/png/animated4.png",
    //   "title": "Theresa Webb",
    //   "subtitle": "Follow you",
    // },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/png/videoBackground.png",),fit: BoxFit.cover)),
          child:Column(
            children: [
              SizedBox(height: 7.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.h),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset("assets/svg/whiteCancel.svg"),
                    ),
                    SizedBox(width: 2.w,),
                    CircleAvatar(backgroundImage: AssetImage("assets/png/profilepng.png")),
                    SizedBox(width: 2.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sara Ali",
                            style: TextStyle(color: Colors.white, fontSize: 12.px, fontFamily: "medium"),
                          ),

                          Text(
                            "Model",
                            style: TextStyle(color: Colors.white, fontSize: 12.px, fontFamily: "regular"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 2.w,),
                    Expanded(
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color:CustomColor.mainPinkColor    ),
                        child: Center(
                          child: Text(
                            "Follow",
                            style: TextStyle(fontSize: 12.px, fontFamily: "medium", color: Colors.white,),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.w,),
                    Expanded(
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color:CustomColor.mainCustomSkyColor.withOpacity(0.3) ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/svg/persons.svg"),
                            SizedBox(width: 1.w),
                        Text(
                                    "1.5k",
                                    style: TextStyle(fontSize: 12.px, fontFamily: "medium", color: Colors.white),
                                  ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 40.h,),
              Expanded(
                child: ListView.builder(

                  padding:  EdgeInsets.zero,
                  itemCount: data.length,
                  shrinkWrap: true,
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
                                color: Colors.white),
                          ),
                          subtitle: Text(data[index]["subtitle"]!,
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: "regular",
                                color: Color(0xffE1E1E2)),),

                        ),

                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),

        Positioned(bottom:5,
          child: GestureDetector(onTap:() {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  decoration: BoxDecoration(color: Color(0xff181A20).withOpacity(0.3)),

                  height: 300,
                  child: Column(
                    children: [

                      Image.asset("assets/png/aa.png",fit: BoxFit.cover,),
                      // Row(mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text("Gift panel",style: TextStyle(fontSize: 12.px,fontFamily: "medium",color:Colors.white),),
                      //     Icon(Icons.keyboard_arrow_down,color: Colors.white,)
                      //   ],
                      // ),
                      // Container(
                      //   height: 40,
                      //   padding: EdgeInsets.symmetric(horizontal: 3.h),
                      //   width: MediaQuery.of(context).size.width,
                      //   decoration: BoxDecoration(color:Color(0XFF747679).withOpacity(0.6) ),
                      //   child:  Row(
                      //     children: [
                      //       Expanded(child: Text("MyCoin",style: TextStyle(color: Colors.white,fontFamily: "medium",fontSize: 12.px),)),
                      //       SvgPicture.asset("assets/svg/coin.svg",width: 12,height: 12,),
                      //       SizedBox(width: 1.w,),
                      //       Text("160",style: TextStyle(color: Colors.white,fontFamily: "medium",fontSize: 12.px),),
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                );
              },






            );
          },
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 2.h),
              child: Row(
                children: [
                  Container(

                    height: 40,
                    width: MediaQuery.of(context).size.width/1.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Colors.black.withOpacity(0.2),


                    ),
                    child: Padding(
                      padding: EdgeInsets.only(right: 2.h),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.text,
                              style: TextStyle(fontSize: 13),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(16),
                                border: InputBorder.none,
                                hintText: 'Type your message',
                                hintStyle: TextStyle(
                                    fontSize: 10,
                                    color:  Colors.white
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                            },
                            child: SvgPicture.asset(
                              "assets/svg/commentshare.svg",color: Colors.white,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w,),
                  Column(
                    children: [
                      SvgPicture.asset("assets/svg/rose.svg"),
                      SizedBox(height: 0.5.h),
                                  Text(
                                    "Rose",
                                    style: TextStyle(
                                      fontSize: 13.sp,
                                      fontFamily: "regular",
                                      color: Colors.white,
                                    ),
                                  ),
                    ],
                  ),
                  SizedBox(width: 2.w,),
                  Column(
                    children: [
                      SvgPicture.asset("assets/svg/Heart.svg"),
                      SizedBox(height: 0.5.h),
                      Text(
                        "Heart",
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: "regular",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 2.w,),
                  Column(
                    children: [
                      SvgPicture.asset("assets/svg/newShare.svg"),
                      SizedBox(height: 0.5.h),
                      Text(
                        "2",
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: "regular",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),

          ),
        ),
        // Positioned(
        //   bottom: 15.h,
        //   left: 70.w,
        //   right: 0,
        //   child: Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 3.h),
        //     child: Container(
        //       // width: 15.w,
        //       decoration: BoxDecoration(
        //     color: Color(0xff181A20).withOpacity(0.3),
        //         borderRadius: BorderRadius.circular(35),
        //       ),
        //       child: GestureDetector(onTap: () {
        //         showModalBottomSheet(
        //           context: context,
        //           builder: (BuildContext context) {
        //             return Container(
        //               decoration: BoxDecoration(color: Color(0xff181A20).withOpacity(0.3)),
        //
        //               height: 300,
        //               child: Column(
        //                 children: [
        //
        //                 Image.asset("assets/png/aa.png",fit: BoxFit.cover,),
        //                 Row(mainAxisAlignment: MainAxisAlignment.center,
        //                   children: [
        //                     Text("Gift panel",style: TextStyle(fontSize: 12.px,fontFamily: "medium",color:Colors.white),),
        //                     Icon(Icons.keyboard_arrow_down,color: Colors.white,)
        //                   ],
        //                 ),
        //                   Container(
        //                     height: 40,
        //                     padding: EdgeInsets.symmetric(horizontal: 3.h),
        //                     width: MediaQuery.of(context).size.width,
        //                     decoration: BoxDecoration(color:Color(0XFF747679).withOpacity(0.6) ),
        //                     child:  Row(
        //                       children: [
        //                         Expanded(child: Text("MyCoin",style: TextStyle(color: Colors.white,fontFamily: "medium",fontSize: 12.px),)),
        //                         SvgPicture.asset("assets/svg/coin.svg",width: 12,height: 12,),
        //                         SizedBox(width: 1.w,),
        //                         Text("160",style: TextStyle(color: Colors.white,fontFamily: "medium",fontSize: 12.px),),
        //                       ],
        //                     ),
        //                   )
        //                 ],
        //               ),
        //             );
        //           },
        //
        //
        //
        //
        //
        //
        //         );
        //       },
        //         child: Column(
        //           children: [
        //             SizedBox(height: 2.h),
        //             SvgPicture.asset("assets/svg/arrowUp.svg"),
        //             SizedBox(height: 0.5.h),
        //             Text(
        //               "Gift",
        //               style: TextStyle(
        //                 fontSize: 13.sp,
        //                 fontFamily: "regular",
        //                 color: Colors.white,
        //               ),
        //             ),
        //             SizedBox(height: 2.h),
        //             SvgPicture.asset("assets/svg/rose.svg"),
        //             SizedBox(height: 0.5.h),
        //             Text(
        //               "Rose",
        //               style: TextStyle(
        //                 fontSize: 13.sp,
        //                 fontFamily: "regular",
        //                 color: CustomColor.mainBlackColor,
        //               ),
        //             ),
        //             SizedBox(height: 1.5.h),
        //             GestureDetector(
        //                 onTap:  () {
        //                   // showCommentBottomSheet(context as BuildContext, (List<Map<String, String>> data) {
        //                   //   // Update the state of the parent widget here
        //                   //   print("Updated data: $data");
        //                   // });
        //                 },
        //                 child: SvgPicture.asset("assets/svg/kiss.svg")),
        //             SizedBox(height: 0.5.h),
        //             Text(
        //               "Kiss",
        //               style: TextStyle(
        //                 fontSize: 13.sp,
        //                 fontFamily: "regular",
        //                 color: CustomColor.mainBlackColor,
        //               ),
        //             ),
        //             SizedBox(height: 1.5.h),
        //             SvgPicture.asset("assets/svg/Heart.svg",color: Colors.red,),
        //             SizedBox(height: 0.5.h),
        //             Text(
        //               "Heart",
        //               style: TextStyle(
        //                 fontSize: 13.sp,
        //                 fontFamily: "regular",
        //                 color: CustomColor.mainBlackColor,
        //               ),
        //             ),
        //             SizedBox(height: 1.5.h),
        //             SvgPicture.asset("assets/svg/gift.svg"),
        //             SizedBox(height: 0.5.h),
        //             Text(
        //               "Gift",
        //               style: TextStyle(
        //                 fontSize: 13.sp,
        //                 fontFamily: "regular",
        //                 color: CustomColor.mainBlackColor,
        //               ),
        //             ),
        //             SizedBox(height: 2.h),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],),
    );
  }
}
