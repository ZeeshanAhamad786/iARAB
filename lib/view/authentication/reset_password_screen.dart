import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iarab/view/authentication/enter-code.dart';
import 'package:iarab/view/authentication/sign_in_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controller/utils/color/custom_color.dart';
import '../../widget/custom_main_button.dart';
import '../../widget/custom_textformfield.dart';
class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
            "Reset Your Password",
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
            hintText: "Email",
            prefixIcon: SvgPicture.asset("assets/svg/profile.svg"),
          ),
          SizedBox(
            height: 5.h,
          ),
          CustomMainButton(
              buttonText: "Next",
              buttonColor: CustomColor.mainColor,
              onPressed: () {
                Get.to(()=>EnterCodeScreen());
              }),
          SizedBox(
            height: 1.3.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Back to",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: CustomColor.mainBlackColor,
                      fontSize: 15.sp,
                      fontFamily: "regular")),
              SizedBox(
                width: 0.5.h,
              ),
              InkWell(
                onTap: () {
                  Get.to(()=>SignInScreen());
                },
                child: Text("Sign-In ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: CustomColor.mainPinkColor,
                        fontSize: 15.sp,
                        fontFamily: "medium")),
              ),
            ],
          ),
        ],),
      ),
    ),);
  }
}
