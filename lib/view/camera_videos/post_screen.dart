import 'dart:ui';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../utils/color/custom_color.dart';
import '../bottom_navigation_screen/bottom_navigation_screen.dart';
class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);
  @override
  State<PostScreen> createState() => _PostScreenState();
}
class _PostScreenState extends State<PostScreen> {
  RxBool isChecked1 = false.obs;
  RxBool isChecked2 = false.obs;
  RxBool button1=true.obs;
  RxBool button2=false.obs;
  @override
  Widget build(BuildContext context) {
    return
     Obx(() =>  Scaffold(
       appBar: AppBar(
         automaticallyImplyLeading: false,
         title: Row(mainAxisAlignment: MainAxisAlignment.start,
           children: [
             GestureDetector(onTap: () {
               Get.back();
             },
                 child: Icon(Icons.arrow_back_ios_new_outlined,size: 18.px,)),
             SizedBox(width: 3.w,),
             Text("Post",style: TextStyle(fontSize: 14.px,fontFamily: "bold",color: CustomColor.mainCustomBlackColor),)
           ],
         ),),
       body: Padding(
         padding:  EdgeInsets.symmetric(horizontal: 3.h),
         child: Column(children: [
           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Expanded(flex: 3,
                 child: Container(
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFFF6F6F6) ),
                   child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                     children: [
                       Text("Description",style: TextStyle(fontFamily: "medium",fontSize: 10.px,color: CustomColor.mainPinkColor),),
                       Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                         ,style: TextStyle(fontFamily: "regular",fontSize: 10.px,color: CustomColor.mainCustomSettingColor),),
                       Align(alignment: Alignment.bottomRight,
                           child: Text("89/100",style: TextStyle(fontFamily: "medium",fontSize: 10.px,color: CustomColor.mainPinkColor),)),

                     ],
                   ),
                 ),
               ),
               SizedBox(width: 3.w,),
               Image.asset("assets/png/videoImage.png",width: 130,height: 220,)
             ],
           ),
           SizedBox(height: 2.h,),
           Container(
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0XFFF6F6F6) ),
             child: Column(crossAxisAlignment: CrossAxisAlignment.start,

               children: [
                 Text("Tags",style: TextStyle(fontFamily: "medium",fontSize: 10.px,color: CustomColor.mainPinkColor),),
                 Text("#love , #trending "
                   ,style: TextStyle(fontFamily: "medium",fontSize: 10.px,color: CustomColor.mainCustomSettingColor),),
                 Align(alignment: Alignment.bottomRight,
                     child: Text("2/5",style: TextStyle(fontFamily: "medium",fontSize: 10.px,color: CustomColor.mainPinkColor),)),

               ],
             ),
           ),
           SizedBox(height: 2.h,),
           Row(mainAxisAlignment: MainAxisAlignment.start,
             children: [
               ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                   onPressed: (){}, child: Row(
                 children: [
                   Text("#",style: TextStyle(fontSize: 12.px,fontFamily: "regular",color: Colors.black),),
                   SizedBox(width: 1.w,),
                   Text("Hashtag",style: TextStyle(fontSize: 12.px,fontFamily: "regular",color: Colors.black),),
                 ],
               )),
               SizedBox(width: 2.w,),
               ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                   onPressed: (){}, child: Row(
                 children: [
                   Text("@",style: TextStyle(fontSize: 12.px,fontFamily: "regular",color: Colors.black),),
                   SizedBox(width: 1.w,),
                   Text("Mention",style: TextStyle(fontSize: 12.px,fontFamily: "regular",color: Colors.black),),
                 ],
               )),
             ],
           ),
           SizedBox(height: 2.h,),
           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Location (Optional)",style: TextStyle(fontFamily: "bold",fontSize: 12.px,color: CustomColor.mainCustomBlackColor),),
               Text("Add",style: TextStyle(fontFamily: "bold",fontSize: 10.px,color: CustomColor.mainColor)),
             ],
           ),
           SizedBox(height: 2.h,),
           Align(alignment: Alignment.centerLeft,
               child: Text("View This Post",style: TextStyle(fontFamily: "bold",fontSize: 12.px,color: CustomColor.mainCustomBlackColor),)),
           SizedBox(height: 2.h,),
         Row(
           children: [
             GestureDetector(
               onTap: () {
                 isChecked1.value = true;
                 isChecked2.value = false;
               },
               child: Row(
                 children: [
                   Container(
                     width: 20,
                     height: 20,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       border: Border.all(
                         color: Colors.black,

                       ),
                     ),
                     child: isChecked1==true
                         ? Icon(
                       Icons.check,
                       size: 16,
                       color: Colors.blue,
                     )
                         : null,
                   ),
                   SizedBox(width: 2.w,),
                   Text("Every one",style: TextStyle(fontFamily: "medium",fontSize: 12.px,color: CustomColor.mainCustomBlackColor),),
                 ],
               ),
             ),
             SizedBox(width: 3.w,),
             GestureDetector(
               onTap: () {
                 isChecked2.value=true;
                 isChecked1.value=false;
               },
               child: Row(
                 children: [
                   Container(
                     width: 20,
                     height: 20,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       border: Border.all(
                         color: Colors.black,
                       ),
                     ),
                     child: isChecked2==true
                         ? Icon(
                       Icons.check,
                       size: 16,
                       color: Colors.blue,
                     )
                         : null,
                   ),
                   SizedBox(width: 2.w,),
                   Text("Only Friend",style: TextStyle(fontFamily: "medium",fontSize: 12.px,color: CustomColor.mainCustomBlackColor),),
                 ],
               ),
             ),
           ],
         ),

         // Row(mainAxisAlignment: MainAxisAlignment.start,
         //     children: [
         //       Text("Every one",style: TextStyle(fontFamily: "medium",fontSize: 12.px,color: CustomColor.mainCustomBlackColor),),
         //       SizedBox(width: 6.w,),
         //       Text("only Friend",style: TextStyle(fontFamily: "medium",fontSize: 12.px,color: CustomColor.mainBlackColor)),
         //     ],
         //   ),
           SizedBox(height: 10.h,),
           Expanded(
             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Expanded(
                   child: ElevatedButton(
                       style: ElevatedButton.styleFrom(  backgroundColor:button1.value==true?CustomColor.mainColor :Color(0XFFD9D6FF)),
                       onPressed: (){
                         button1.value=true;
                         button2.value=false;
                       }, child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [SvgPicture.asset("assets/svg/delete.svg",color: button1.value==true?Colors.white:CustomColor.mainColor,),
                       SizedBox(width: 3.w,),
                       Text("Deny",style: TextStyle(fontSize: 12.px,fontFamily: "medium",color:button1.value==true?Colors.white : CustomColor.mainColor),),
                     ],
                   )),
                 ),
             
             
                 SizedBox(width: 5.w,),
                 Expanded(
                   child: ElevatedButton(
                       style: ElevatedButton.styleFrom(backgroundColor:button2.value==true? CustomColor.mainColor: Color(0XFFD9D6FF)),
                       onPressed: (){
                         button2.value=true;
                         button1.value=false;
                         Get.to(()=>BottomNavigationBarS());
                       }, child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [SvgPicture.asset("assets/svg/post1.svg",color: button2.value==true?Colors.white: CustomColor.mainColor),
                       SizedBox(width: 3.w,),
                       Text("Post",style: TextStyle(fontSize: 12.px,fontFamily: "medium",color:button2.value==true? Colors.white: CustomColor.mainColor),),
                     ],
                   )),
                 ),
               ],
             ),
           ),
SizedBox(height:15,width:15),
         ],),
       ),
     ));
  }
}
