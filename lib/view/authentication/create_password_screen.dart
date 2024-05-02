import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iarab/view/authentication/sign_in_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controller/utils/color/custom_color.dart';
import '../../widget/custom_main_button.dart';
import '../../widget/custom_textformfield.dart';
class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 3.h),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 15.5.h,
          ),
          Text(
            "Create a new password",
            style: TextStyle(
                fontFamily: "bold",
                color: CustomColor.mainBlackColor,
                fontSize: 17.2.sp),
          ),
          SizedBox(
            height: 1.h,
          ),
          Text(
            "Enter your email and we'll send you a link to reset your\n password.",
            style: TextStyle(
              fontSize: 13.5.sp,
              fontFamily: "regular",
              color: CustomColor.mainDarkBlackColor,
            ),textAlign:TextAlign.center,
          ),
          SizedBox(
            height: 10.h,
          ),

          CustomTextField(
            hintText: "Password",
            prefixIcon: SvgPicture.asset("assets/svg/lock.svg"),
            suffixIcon: SvgPicture.asset("assets/svg/closeEye.svg"),
          ),
          SizedBox(
            height: 1.4.h,
          ),
          CustomTextField(
            hintText: "Password",
            prefixIcon: SvgPicture.asset("assets/svg/lock.svg"),
            suffixIcon: SvgPicture.asset("assets/svg/closeEye.svg"),
          ),
          SizedBox(
            height: 5.h,
          ),
          CustomMainButton(
              buttonText: "Next",
              buttonColor: CustomColor.mainColor,
              onPressed: () {
                Get.to(()=>SignInScreen());
              }),
        ],),
      ),
    ),);
  }
}
