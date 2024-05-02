import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iarab/view/home_screen/home_screen/home_screen.dart';
import 'package:iarab/view/home_screen/inbox_screen/inbox_screen.dart';
import 'package:iarab/view/home_screen/notification_screen/notification_screen.dart';
import 'package:iarab/view/home_screen/profile_screen/profile_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controller/image_picker/image_picker.dart';
import '../../controller/utils/color/custom_color.dart';
import '../camera_videos/camera.dart';

class BottomNavigationBarS extends StatefulWidget {
  final int? currentIndex;

  const BottomNavigationBarS({Key? key, this.currentIndex}) : super(key: key);

  @override
  State<BottomNavigationBarS> createState() => _BottomNavigationBarSState();
}

class _BottomNavigationBarSState extends State<BottomNavigationBarS> {
  int currentIndex = 0;
  ImagePickerController imagePickerController =
      Get.put(ImagePickerController());

  @override
  void initState() {
    super.initState();
    currentIndex = widget.currentIndex ?? 0;
  }

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget _buildMainContent() {
    switch (currentIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return InboxScreen();
      case 2:
        return NotificationScreen();
      case 3:
        return ProfileScreen();
      default:
        return Container(); // You can return a default widget or an empty container
    }
  }

  Widget _buildFloatingActionButtonChild() {
    if (currentIndex == 0) {
      // Show image for Home screen
      return Image.asset(
        "assets/png/IARABPNGICON'.png", // Replace with your image path
      );
    } else {
      // Show plus icon for other screens
      return Container(
          child: Image.asset(
        "assets/png/circleimage.png",
      ) // Replace with your image path

          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _buildMainContent(),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Colors.white,
        onPressed: () {
Get.to(()=>Camera());
          // imagePickerController.getImage();
          // print("camera show");
        },
        child: _buildFloatingActionButtonChild(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: currentIndex == 0 ? CustomColor.mainGreyColor.withOpacity(0.8): Colors.white,
        height: 10.h,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildBottomNavigationItem(
              index: 0,
              iconPath: "assets/png/homeiconcolorless.png",
              text: "Home",
            ),
            _buildBottomNavigationItem(
              index: 1,
              iconPath: "assets/svg/inboxicon.svg",
              text: "Inbox",
            ),
            SizedBox(width: 5.h),
            _buildBottomNavigationItem(
              index: 2,
              iconPath: "assets/svg/notificationicon.svg",
              text: "Notification",
            ),
            _buildBottomNavigationItem(
              index: 3,
              iconPath: "assets/svg/profileicon.svg",
              text: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationItem({
    required int index,
    required String iconPath,
    required String text,
  }) {
    return Expanded(
      child: InkWell(
        onTap: () => onTap(index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            index == 0
                ? Image.asset(
                    iconPath,
                    width: 3.5.h,
                    height: 3.5.h,
                    color: currentIndex == index
                        ? CustomColor.mainColor
                        : CustomColor.mainDarkGreyColor,
                  )
                : SvgPicture.asset(
                    iconPath,
                    color: currentIndex == index
                        ? CustomColor.mainColor
                        : CustomColor.mainDarkGreyColor,
                  ),
            Text(
              text,
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: "regular",
                color: currentIndex == index
                    ? CustomColor.mainColor
                    : CustomColor.mainDarkGreyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
