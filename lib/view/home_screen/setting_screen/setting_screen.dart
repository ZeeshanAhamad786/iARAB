import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iarab/view/home_screen/setting_screen/privacy_policy.dart';
import 'package:iarab/view/home_screen/setting_screen/terms_and_condition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../controller/utils/color/custom_color.dart';
import '../../../widget/custom_setting.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 19.sp,
                  color: Color(0xff313339),
                ),
              ),
              Text(
                "Setting",
                style: TextStyle(
                    fontFamily: "medium",
                    fontSize: 16.5.sp,
                    color: CustomColor.mainCustomSettingColor),
              ),
              SizedBox(
                height: 4.h,
                width: 4.h,
              )
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 4.h,),
            CustomSettingScreen(
              text: 'Change password',
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 3.h),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Notification",
                    style: TextStyle(
                        color: Color(0xff24252B),
                        fontSize: 12.px,
                        fontFamily: "regular"),
                  ),
                  FlutterSwitch(
                    height: 20.0,
                    width: 40.0,
                    padding: 1.0,
                    toggleSize: 15.0,
                    borderRadius: 10.0,
                    activeColor: Colors.blue,
                    value: isToggled,
                    onToggle: (value) {
                      setState(() {
                        isToggled = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Divider(
                color: Color(0XFFEDEDED)
            ),
            SizedBox(
              height: 1.5.h,
            ),
            CustomSettingScreen(
              text: 'Support',
            ),
            SizedBox(
              height: 1.5.h,
            ),
            GestureDetector(onTap:() {
              Get.to(()=>TermsAndCondition());
            },
              child: CustomSettingScreen(
                text: 'Terms & condition',
              ),
            ),
            SizedBox(
              height: 1.5.h,
            ),
            GestureDetector(onTap:() {
              Get.to(()=>PrivacyAndPolicy());
            },
              child: CustomSettingScreen(
                text: 'Privacy policy',
              ),
            ),
            SizedBox(
              height: 1.5.h,
            ),
            CustomSettingScreen(
              text: 'Share App',
            ),
            SizedBox(
              height: 1.5.h,
            ),
            CustomSettingScreen(
              text: 'Delete Account',
            ),
            SizedBox(
              height: 1.5.h,
            ),
            CustomSettingScreen(
              text: 'Log out',
            )
          ],
        ));
  }
}
