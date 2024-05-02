import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


import '../../controller/utils/color/custom_color.dart';
import '../../widget/custom_textformfield.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: CustomColor.mainCustomBlackBoldColor.withOpacity(0.1),
                offset: Offset(0, 2),
                blurRadius: 4)
          ], color: Colors.white),
          child: AppBar(backgroundColor: Colors.white,
            leading: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back_ios_new_outlined)),
            automaticallyImplyLeading: false,
            title: Text(
              "Change Password",
              style: TextStyle(
                  color: CustomColor.mainCustomBlackBoldColor,
                  fontFamily: "medium",
                  fontSize: 17.sp),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 3.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(height: 5.h,),
            Text("Current Password",
                style: TextStyle(
                color: CustomColor.mainCustomBlackBoldColor,
                fontFamily: "regular",
                fontSize: 15.sp),),
            SizedBox(height: 0.5.h,),
            CustomTextField(
              hintText: '......',
              prefixIcon: SvgPicture.asset("assets/svg/pinkLock.svg"),
              suffixIcon: SvgPicture.asset("assets/svg/closeEye.svg"),
            ),
            SizedBox(height: 3.h,),
            Text("New Password",
              style: TextStyle(
                  color: CustomColor.mainCustomBlackBoldColor,
                  fontFamily: "regular",
                  fontSize: 15.sp),),
            SizedBox(height: 0.5.h,),
            CustomTextField(
              hintText: '......',
              prefixIcon: SvgPicture.asset("assets/svg/pinkLock.svg"),
              suffixIcon: SvgPicture.asset("assets/svg/closeEye.svg"),
            ),
            SizedBox(height: 3.h,),
            Text("Confirm Password",
              style: TextStyle(
                  color: CustomColor.mainCustomBlackBoldColor,
                  fontFamily: "regular",
                  fontSize: 15.sp),),
            SizedBox(height: 0.5.h,),
            CustomTextField(
              hintText: '......',
              prefixIcon: SvgPicture.asset("assets/svg/pinkLock.svg"),
              suffixIcon: SvgPicture.asset("assets/svg/closeEye.svg"),
            ),
          ],
        ),
      ),
    );
  }
}
