import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/color/custom_color.dart';
class LiveVideoScreen extends StatefulWidget {
  const LiveVideoScreen({Key? key}) : super(key: key);

  @override
  State<LiveVideoScreen> createState() => _LiveVideoScreenState();
}

class _LiveVideoScreenState extends State<LiveVideoScreen> {
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
    {
      "leading": "assets/png/animated4.png",
      "title": "Theresa Webb",
      "subtitle": "Follow you",
    },
    {
      "leading": "assets/png/animated4.png",
      "title": "Theresa Webb",
      "subtitle": "Follow you",
    },
    {
      "leading": "assets/png/animated4.png",
      "title": "Theresa Webb",
      "subtitle": "Follow you",
    },
    {
      "leading": "assets/png/animated4.png",
      "title": "Theresa Webb",
      "subtitle": "Follow you",
    },

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
              padding:  EdgeInsets.symmetric(horizontal: 3.h),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/svg/whiteCancel.svg"),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: CustomColor.mainCustomSkyColor.withOpacity(0.3)),
                      onPressed: (){

                      }, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [SvgPicture.asset("assets/svg/persons.svg",),
                      SizedBox(width: 3.w,),
                      Text("1.5k",style: TextStyle(fontSize: 12.px,fontFamily: "medium", color: Colors.white),),
                    ],
                  )),

                ],
              ),
            ),
SizedBox(height: 15.h,),
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
        Positioned(top: 100,right: 3.h,
            child:  Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(color: CustomColor.mainCustomSkyColor.withOpacity(0.3),borderRadius: BorderRadius.circular(40)),
              child: Column(children: [
                SvgPicture.asset("assets/svg/diamond.svg",),
                SizedBox(height: 2.w,),
                Text("80",style: TextStyle(fontSize: 12.px,fontFamily: "medium", color: Colors.white),),
                SizedBox(height: 2.w,),
                Text("Reward",style: TextStyle(fontSize: 12.px,fontFamily: "medium", color: Colors.white),),
              ],),
            )),
        Positioned(bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/9,
              decoration: BoxDecoration(color:Color(0xff181A20) ),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 3.h),
              child: Center(
                child: Container(
                height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
color: CustomColor.mainGreyColor,


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
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            )),

      ],),
    );
  }
}
