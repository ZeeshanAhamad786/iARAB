import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iarab/view/authentication/create_password_screen.dart';
import 'package:iarab/view/authentication/sign_in_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controller/utils/color/custom_color.dart';
import '../../widget/custom_main_button.dart';
class EnterCodeScreen extends StatefulWidget {
  const EnterCodeScreen({Key? key}) : super(key: key);

  @override
  State<EnterCodeScreen> createState() => _EnterCodeScreenState();
}

class _EnterCodeScreenState extends State<EnterCodeScreen> {
  final TextEditingController otpController =TextEditingController();
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
            "Enter the code",
            style: TextStyle(
                fontFamily: "bold",
                color: CustomColor.mainBlackColor,
                fontSize: 17.2.sp),
          ),
          SizedBox(
            height: 1.h,
          ),
          Text(
            "We have just sent you a 4-digit code to ",
            style: TextStyle(
              fontSize: 13.5.sp,
              fontFamily: "regular",
              color: CustomColor.mainDarkBlackColor,
            ),textAlign:TextAlign.center,
          ),
          SizedBox(
            height: 1.h,
          ),
          Text(
            "example@gmail.com",
            style: TextStyle(
              fontSize: 13.5.sp,
              fontFamily: "bold",
              color: CustomColor.mainDarkBlackColor,
            ),textAlign:TextAlign.center,
          ),
          SizedBox(
            height: 10.h,
          ),
          PinCodeTextField(
            onCompleted: (v){
              otpController.text=v;
            },
            length: 4,
            keyboardType:
            const TextInputType.numberWithOptions(decimal: true),
            cursorColor: CustomColor.mainGreyColor,
            pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8),
                fieldHeight: 52,
                fieldWidth: 52,
                selectedColor: CustomColor.mainGreyColor,
                activeFillColor: Colors.white,
                inactiveColor:
                CustomColor.mainBlackColor.withOpacity(0.1),
                activeColor: CustomColor.mainGreyColor,),
            animationDuration: const Duration(milliseconds: 200),

            onChanged: (value) {
              log(value.toString());
            },
            beforeTextPaste: (text) {
              log("Allowing to paste $text");
              return true;
            },
            appContext: context, // Provide the context here
          ),
          SizedBox(
            height: 5.h,
          ),
          CustomMainButton(
              buttonText: "Next",
              buttonColor: CustomColor.mainColor,
              onPressed: () {
                Get.to(()=>CreatePasswordScreen());
              }),
          SizedBox(
            height: 1.3.h,
          ),
          Text("Didn't receive?",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: CustomColor.mainBlackColor,
                  fontSize: 15.sp,
                  fontFamily: "bold")),
          SizedBox(
            height: 1.3.h,
          ),
          InkWell(
            onTap: () {
              Get.to(()=>SignInScreen());
            },
            child: Text("Resend Code",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: CustomColor.mainPinkColor,
                    fontSize: 15.sp,
                    fontFamily: "bold")),
          ),

        ],),
      ),
    ),);
  }
}
