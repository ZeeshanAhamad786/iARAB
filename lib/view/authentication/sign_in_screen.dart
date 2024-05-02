import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iarab/view/authentication/reset_password_screen.dart';
import 'package:iarab/view/authentication/sign_up_screen.dart';
import 'package:iarab/widget/custom_main_button.dart';
import 'package:iarab/widget/custom_textformfield.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controller/utils/color/custom_color.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "assets/png/signin.png",
                height: 220,
                width: 220,
              )),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Sign In",
                style: TextStyle(
                    fontFamily: "bold",
                    color: CustomColor.mainBlackColor,
                    fontSize: 16),
              ),
              SizedBox(
                height: 5.h,
              ),
             CustomTextField(hintText: "Email", prefixIcon: SvgPicture.asset("assets/svg/emaill.svg"),),
              SizedBox(
                height: 1.5.h,
              ),
              CustomTextField(hintText: "Password", prefixIcon: SvgPicture.asset("assets/svg/lock.svg"),
                suffixIcon: SvgPicture.asset("assets/svg/eye.svg"),),
              SizedBox(height: 2.h,),
              Align(alignment: Alignment.centerRight,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 2.h),
                    child: GestureDetector(onTap: () {
                      Get.to(()=>ResetPasswordScreen());
                    },
                        child: Text("Forgot Password",style: TextStyle(fontFamily: "medium",color: CustomColor.mainPinkColor,fontSize: 10.px,),)),
                  )),
              SizedBox(height:6.h ,),
              CustomMainButton(buttonText: "Sign-in",buttonColor: CustomColor.mainColor,
                  onPressed: (){}),
              SizedBox(height: 1.4.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("I don't an account",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: CustomColor.mainBlackColor,
                          fontSize: 12.px,
                          fontFamily:"regular"
                      )),
                  SizedBox(
                    width: 0.5.h,
                  ),
                  InkWell(
                    onTap: () {
          Get.to(()=>SignUpScreen());
                    },
                    child: Text("Sign-up ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: CustomColor.mainPinkColor,
                            fontSize: 12.px,
                            fontFamily:"medium"
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
