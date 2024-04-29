import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/color/custom_color.dart';
import '../../../widget/custom_main_button.dart';
import '../../../widget/custom_textformfield.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 20,
                )),
            Text(
              "Edit Profile",
              style: TextStyle(
                color: CustomColor.mainCustomBlackBoldColor,
                fontSize: 16.5.sp,
                fontFamily: "medium",
              ),
            ),
            SizedBox(
              height: 10,
              width: 10,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    height: MediaQuery.of(context).size.height * 0.30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/png/backgroundImage.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 6.5.h,
                        ),
                        SvgPicture.asset("assets/svg/cameraEdit.svg"),
                        SizedBox(
                          height: 0.8.h,
                        ),
                        Text(
                          "Change Cover",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontFamily: "medium",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.center,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(
                              "assets/png/molviprofile.png",
                            ),
                          ),
                          Positioned(
                            right: 4,
                            bottom: 15,
                            child: SvgPicture.asset(
                              "assets/svg/cameraIcon.svg",
                              width: 26, // Adjust this value as needed
                              height: 26, // Adjust this value as needed
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 1.8.h, right: 4.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "   Name",
                    style: TextStyle(
                        fontFamily: "regular",
                        fontSize: 12.px,
                        color: Color(0xff747679)),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 12,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      // controller: controller,
                      obscureText: true,
                      cursorColor: CustomColor.mainColor,
                      // Replace with your CustomColor.mainColor
                      decoration: InputDecoration(
                        hintText: "Mohsin",
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontFamily: "regular",
                          color: CustomColor.mainCustomBlackColor, // Replace with your CustomColor.mainEmailIconGreyColor
                        ),
                        contentPadding: EdgeInsets.all(10),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(36),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(36),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(36),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:2.h ,),
                  Text(
                    "   User Name",
                    style: TextStyle(
                        fontFamily: "regular",
                        fontSize: 12.px,
                        color: Color(0xff747679)),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 12,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      // controller: controller,
                      obscureText: true,
                      cursorColor: CustomColor.mainColor,
                      // Replace with your CustomColor.mainColor
                      decoration: InputDecoration(
                        hintText: "zeeshan",
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontFamily: "regular",
                          color: CustomColor.mainCustomBlackColor, // Replace with your CustomColor.mainEmailIconGreyColor
                        ),
                        contentPadding: EdgeInsets.all(10),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(36),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(36),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(36),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:2.h ,),
                  Text(
                    "   Description",
                    style: TextStyle(
                        fontFamily: "regular",
                        fontSize: 12.px,
                        color: Color(0xff747679)),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 12,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      // controller: controller,
                      obscureText: true,
                      cursorColor: CustomColor.mainColor,
                      // Replace with your CustomColor.mainColor
                      decoration: InputDecoration(
                        hintText: "Designer",
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontFamily: "regular",
                          color: CustomColor.mainCustomBlackColor, // Replace with your CustomColor.mainEmailIconGreyColor
                        ),
                        contentPadding: EdgeInsets.all(10),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(36),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(36),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(36),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 13.h,),
                  Center(
                    child: CustomMainButton(buttonText: 'Save',buttonColor: CustomColor.mainCustomBlueColor,
                      onPressed: () {  },),
                  ),
                  SizedBox(height: 2.h,width: 2.h,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
