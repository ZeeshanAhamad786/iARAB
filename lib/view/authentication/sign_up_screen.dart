import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iarab/view/authentication/sign_in_screen.dart';
import 'package:iarab/view/authentication/sign_up_otp.dart';
import 'package:iarab/widget/custom_main_button.dart';
import 'package:iarab/widget/custom_textformfield.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controller/utils/color/custom_color.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 11.h,
              ),
              Center(
                  child: Image.asset(
                "assets/png/signup.png",
                height: 220,
                width: 220,
              )),
              SizedBox(
                height: 4.h,
              ),
              Text(
                "Create Account",
                style: TextStyle(
                    fontFamily: "bold",
                    color: CustomColor.mainBlackColor,
                    fontSize: 17.2.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Please fill in the information below to create an account.\n It's a snap!",
                style: TextStyle(
                  fontSize: 10.px,
                  fontFamily: "regular",
                  color: CustomColor.mainDarkBlackColor,
                ),textAlign:TextAlign.center,
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTextField(
                hintText: "Email",
                prefixIcon: SvgPicture.asset("assets/svg/profile.svg"),
              ),
              SizedBox(
                height: 1.4.h,
              ),
              CustomTextField(
                hintText: "Email",
                prefixIcon: SvgPicture.asset("assets/svg/emaill.svg"),
              ),
              SizedBox(
                height: 1.4.h,
              ),
              CustomTextField(
                hintText: "Password",
                prefixIcon: SvgPicture.asset("assets/svg/lock.svg"),
                suffixIcon: SvgPicture.asset("assets/svg/eye.svg"),
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
                  buttonText: "Sign-up",
                  buttonColor: CustomColor.mainColor,
                  onPressed: () {
                    Get.to(()=>SignUpOtp());
                  }),
              SizedBox(
                height: 1.3.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("I have an account",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: CustomColor.mainBlackColor,
                          fontSize: 12.px,
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
                            fontSize: 12.px,
                            fontFamily: "medium")),
                  ),
                ],
              ),
              SizedBox(height: 1.5.h,width: 1.5.h,)
            ],
          ),
        ),
      ),
    );
  }
}
