
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iarab/view/authentication/sign_in_screen.dart';
import 'package:iarab/view/authentication/sign_up_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controller/utils/color/custom_color.dart';
import '../../widget/custom_main_button.dart';
import '../camera_videos/user_live_video.dart';


class GetStartedScreen extends StatelessWidget {

  const GetStartedScreen({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 13.h,
            ),
            Center(
                child: Image.asset(
              "assets/png/getStarted.png",
              height: 280,
              width: 280,
            )),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Lets get Started!",
              style: TextStyle(
                  fontFamily: "bold",
                  color: CustomColor.mainBlackColor,
                  fontSize: 16.px),
            ),
            SizedBox(
              height: 2.1.h,
            ),
            CustomMainButton(
              buttonColor: CustomColor.mainColor,
              buttonText: 'Sign in',
              onPressed: () {
                Get.to(()=>SignInScreen());
              },
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              "Or sign up with social account",
              style: TextStyle(
                  fontSize: 10.px,
                  fontFamily: "regular",
                  color: CustomColor.mainDarkGreyColor),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: CustomColor.mainBlackColor.withOpacity(0.01),
                    offset: Offset(0, 4),
                    blurRadius: 12.3)
              ],color: Colors.white,borderRadius: BorderRadius.circular(30)),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white,
                      fixedSize: Size(35.h, 6.1.h)),
                  onPressed: () {
                    // Get.to(() => UserLiveVideo());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/svg/google.svg"),
                      SizedBox(
                        width: 1.h,
                      ),
                      Text(
                        "Sign in with Google",
                        style: TextStyle(
                            fontSize: 12.px,
                            fontFamily: "medium",
                            color: CustomColor.mainDarkLightGreyColor),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: CustomColor.mainBlackColor.withOpacity(0.01),
                    offset: Offset(0, 4),
                    blurRadius: 12.3)
              ],color: Colors.white,borderRadius: BorderRadius.circular(30)),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white,
                      fixedSize: Size(35.h, 6.1.h)),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/svg/apple.svg"),
                      SizedBox(
                        width: 1.h,
                      ),
                      Text(
                        "Sign in with Google",
                        style: TextStyle(
                            fontSize: 12.px,
                            fontFamily: "medium",
                            color: CustomColor.mainDarkLightGreyColor),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("I don't an account",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: CustomColor.mainBlackColor,
                        fontSize: 14.px,
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
                          fontSize: 14.px,
                          fontFamily:"medium"
                         )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
